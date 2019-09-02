#include "PnRdatabase.h"

#include <iostream>
#include <fstream>
#include <iomanip>
#include <time.h>

using namespace nlohmann;


void PnRdatabase::ReadPDKJSON(std::string drfile) {
    //std::cout<<"inside "<<drfile<<std::endl;
    //std::string jsonFileName = GDSData + ".json";
    int times=2;
    json jsonStrAry;
    ifstream jsonFile (drfile);
    if (jsonFile.is_open()) {
        //std::cout<<"before parse\n";
	json jedb = json::parse (jsonFile);
        //std::cout<<"Parse\n";
        json layerAry = jedb["Abstraction"];
        std::map<int, PnRDB::metal_info> metalSet;
        std::map<int, PnRDB::via_info> viaSet;
        std::unordered_map<string, int> name2ViaLayerMap;
        // 1. Extract metal info
        //std::cout<<"shot\n";
        for(json::iterator lit = layerAry.begin(); lit != layerAry.end(); ++lit) {
          json layer = *lit;
          std::string lname=layer["Layer"];
          //std::cout<<"Now at "<<lname<<std::endl<<std::endl;
          if(lname.front()=='M') {
            // metal layer
            int lnum=layer["LayerNo"];
            std::string ldir=layer["Direction"];
            int lpitch=-1;
            json pdata=layer["Pitch"];
            if(pdata.is_array()) {
              json::iterator pit=pdata.begin();
              lpitch=(*pit);
            } else if (pdata.is_number()) {
              lpitch=pdata;
            }
            int lwidth=-1;
            json wdata=layer["Width"];
            if(wdata.is_array()) {
              json::iterator wit=wdata.begin();
              lwidth=(*wit);
            } else if (wdata.is_number()) {
              lwidth=wdata;
            }
            int lminL=layer["MinL"];
            //int lmaxL=layer["MaxL"];
            int le2e=layer["EndToEnd"];
            PnRDB::metal_info tmp_metal;
            tmp_metal.name=lname;
            tmp_metal.layerNo=lnum;
            if(ldir.compare("V")==0) { tmp_metal.direct=0; tmp_metal.grid_unit_x=times*lpitch; tmp_metal.grid_unit_y=-1;
            } else if (ldir.compare("H")==0) { tmp_metal.direct=1; tmp_metal.grid_unit_y=times*lpitch; tmp_metal.grid_unit_x=-1;
            } else {std::cout<<"PnR-Error: incorrect metal direction\n";}
            tmp_metal.width=times*lwidth;
            tmp_metal.dist_ss=times*(lpitch-lwidth);
            tmp_metal.minL=times*lminL;
            tmp_metal.dist_ee=times*le2e;
            metalSet.insert( std::pair<int, PnRDB::metal_info>(lnum, tmp_metal) );
            }
        }
        for(std::map<int, PnRDB::metal_info>::iterator it=metalSet.begin(); it!=metalSet.end(); ++it) {
          DRC_info.Metal_info.push_back(it->second);
	  cout << "Assign the metalmap[" << it->second.name << "] = " << DRC_info.Metal_info.size()-1 << endl;
          DRC_info.Metalmap[it->second.name] = DRC_info.Metal_info.size()-1;
        }
        DRC_info.MaxLayer = DRC_info.Metal_info.size()-1;
        //std::cout<<"Parse via\n";
        // 2. Extract via info
        for(json::iterator lit = layerAry.begin(); lit != layerAry.end(); ++lit) {
          json layer = *lit;
          std::string lname=layer["Layer"];
          if(lname.front()=='V') {
            // via layer
            int lnum=layer["LayerNo"];
            json stackAry = layer["Stack"];
            int lwidthx= layer["WidthX"];
            int lwidthy= layer["WidthY"];
            int lspacex= layer["SpaceX"];
            int lspacey= layer["SpaceY"];
            int lvencal= layer["VencA_L"];
            int lvencah= layer["VencA_H"];
            int lvencpl= layer["VencP_L"];
            int lvencph= layer["VencP_H"];
            PnRDB::via_info tmp_via;
            tmp_via.name=lname;
            tmp_via.layerNo=lnum;
            tmp_via.width=times*lwidthx;
            tmp_via.width_y=times*lwidthy;
            tmp_via.cover_l=times*lvencal;
            tmp_via.cover_l_P=times*lvencpl;
            tmp_via.cover_u=times*lvencah;
            tmp_via.cover_u_P=times*lvencph;
            tmp_via.dist_ss=times*lspacex;
            tmp_via.dist_ss_y=times*lspacey;

	    {
	      assert( stackAry.size() == 2);

	      std::vector<int> metal_stack_indices(2,-1); // size=2, default=-1

	      for (unsigned int i=0; i<2; ++i) {
		auto& s = stackAry[i];
		if(s.is_string()) {
		  metal_stack_indices[i] = DRC_info.Metalmap[s];
		} else {
		  cout << "Null metal for via " << tmp_via.name << " pos " << i << endl;
		}
	      }

	      if ( metal_stack_indices[0] != -1 &&
		   metal_stack_indices[1] != -1) {
		tmp_via.lower_metal_index = metal_stack_indices[0];
		tmp_via.upper_metal_index = metal_stack_indices[1];
		viaSet.insert( std::pair<int, PnRDB::via_info>(lnum, tmp_via) );
		name2ViaLayerMap[tmp_via.name] = lnum;
	      }
	    }
          }
        }
        for(std::map<int, PnRDB::via_info>::iterator it=viaSet.begin(); it!=viaSet.end(); ++it) {
          DRC_info.Via_info.push_back(it->second);
          DRC_info.Viamap[it->second.name] = DRC_info.Via_info.size()-1;
        }

        // 3. Add metal weight
        //add
        for(unsigned int i=0;i<DRC_info.Metal_info.size();i++){
             DRC_info.metal_weight.push_back(1);
        }
        // 4. Add Via model
        for(unsigned int i=0;i<DRC_info.Via_info.size();i++){
             PnRDB::ViaModel temp_viamodel;

             temp_viamodel.name = DRC_info.Via_info[i].name;
	     const auto &vs = viaSet[name2ViaLayerMap[temp_viamodel.name]];

             temp_viamodel.ViaIdx = i;
             temp_viamodel.LowerIdx = vs.lower_metal_index;
             temp_viamodel.UpperIdx = vs.upper_metal_index;

	     const string& lm_name = DRC_info.Metal_info.at(temp_viamodel.LowerIdx).name;
	     const string& um_name = DRC_info.Metal_info.at(temp_viamodel.UpperIdx).name;

	     cout << "Via " << temp_viamodel.name << " ViaIndex " << temp_viamodel.ViaIdx << " LowerIdx " << temp_viamodel.LowerIdx << " (" << lm_name << ") UpperIdx " << temp_viamodel.UpperIdx << " (" << um_name << ")" << endl;

             PnRDB::point temp_point;
             //LL
             temp_point.x = 0-DRC_info.Via_info[i].width/2;
             temp_point.y = 0-DRC_info.Via_info[i].width_y/2;
             temp_viamodel.ViaRect.push_back(temp_point);
             //UR
             temp_point.x = 0+DRC_info.Via_info[i].width/2;
             temp_point.y = 0+DRC_info.Via_info[i].width_y/2;
             temp_viamodel.ViaRect.push_back(temp_point);
             
             //LL LowerRect
             if(DRC_info.Metal_info[i].direct==0){
             temp_point.x = 0-DRC_info.Metal_info[i].width/2-DRC_info.Via_info[i].cover_l_P;
             temp_point.y = 0-DRC_info.Metal_info[i].width/2-DRC_info.Via_info[i].cover_l;
             temp_viamodel.LowerRect.push_back(temp_point);
             //UR
             temp_point.x = 0+DRC_info.Metal_info[i].width/2+DRC_info.Via_info[i].cover_l_P;
             temp_point.y = 0+DRC_info.Metal_info[i].width/2+DRC_info.Via_info[i].cover_l;
             temp_viamodel.LowerRect.push_back(temp_point);
             }else{
             temp_point.y = 0-DRC_info.Metal_info[i].width/2-DRC_info.Via_info[i].cover_l_P;
             temp_point.x = 0-DRC_info.Metal_info[i].width/2-DRC_info.Via_info[i].cover_l;
             temp_viamodel.LowerRect.push_back(temp_point);
             //UR
             temp_point.y = 0+DRC_info.Metal_info[i].width/2+DRC_info.Via_info[i].cover_l_P;
             temp_point.x = 0+DRC_info.Metal_info[i].width/2+DRC_info.Via_info[i].cover_l;
             temp_viamodel.LowerRect.push_back(temp_point);
             } 
             
             //LL UpperRect
             if(DRC_info.Metal_info[i+1].direct==0){
             temp_point.x = 0-DRC_info.Metal_info[i+1].width/2-DRC_info.Via_info[i].cover_u_P;
             temp_point.y = 0-DRC_info.Metal_info[i+1].width/2-DRC_info.Via_info[i].cover_u;
             temp_viamodel.UpperRect.push_back(temp_point);
             //UR
             temp_point.x = 0+DRC_info.Metal_info[i+1].width/2+DRC_info.Via_info[i].cover_u_P;
             temp_point.y = 0+DRC_info.Metal_info[i+1].width/2+DRC_info.Via_info[i].cover_u;
             temp_viamodel.UpperRect.push_back(temp_point);
             }else{
             temp_point.y = 0-DRC_info.Metal_info[i+1].width/2-DRC_info.Via_info[i].cover_u_P;
             temp_point.x = 0-DRC_info.Metal_info[i+1].width/2-DRC_info.Via_info[i].cover_u;
             temp_viamodel.UpperRect.push_back(temp_point);
             //UR
             temp_point.y = 0+DRC_info.Metal_info[i+1].width/2+DRC_info.Via_info[i].cover_u_P;
             temp_point.x = 0+DRC_info.Metal_info[i+1].width/2+DRC_info.Via_info[i].cover_u;
             temp_viamodel.UpperRect.push_back(temp_point);
             } 
            DRC_info.Via_model.push_back(temp_viamodel);
        }
        // 6. Add mask ID
        //added by wbxu
        for(unsigned int i=0;i<DRC_info.Metal_info.size();++i) {
          DRC_info.MaskID_Metal.push_back(std::to_string( DRC_info.Metal_info.at(i).layerNo ));
        }
        for(unsigned int i=0;i<DRC_info.Via_info.size();++i) {
          DRC_info.MaskID_Via.push_back(std::to_string( DRC_info.Via_info.at(i).layerNo ));
        }
    }
}
