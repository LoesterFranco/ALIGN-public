# Run the comparator using the 1222FL flow

```bash
./runit-comparator

python ./gen_gds.py --circuit comparator

python ../align/gdsconv/json2gds.py comparator.gds.json comparator.gds

python ./check_results.py --circuit comparator
```
