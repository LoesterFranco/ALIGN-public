#! /bin/csh

./tester ./testcase_latest2 sc.lef sc_block.v sc.map NO.rul switched_capacitor_filter 1 | tee log
#./tester ./testcase_small sc.lef sc_block.v sc.map NO.rul switched_capacitor_filter 1 | tee log
#./tester ./testcase_cap common_centroid.lef common_centroid.v common_centroid.map NO.rul common_centroid 1 | tee log
##
##gdb tester
##set args ./testcase_latest2 sc.lef sc_block.v sc.map NO.rul switched_capacitor_filter 1

