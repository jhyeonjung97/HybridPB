mv */* .

# basic
mkdir -p vac/
mv vac*.json vac/
python ../../HybridPourbaix.py --png \
--show-transitions --no-bulk --figx 4 --figy 4 --Umin -1.0 --Umax 2.5 \
--colors-2d '#A5D86A' '#D9EF8B' '#FFFEBE' '#FEE08B' '#FDAD60'

# gc
python ../../HybridPourbaix.py --gc \
--show-transitions --no-bulk --figx 4 --figy 4 --Umin -1.0 --Umax 2.5 \
--colors-2d '#A5D86A' green '#D9EF8B' '#FFFEBE' '#FEE08B' '#FDAD60' sienna

# hybrid
mv vac/vac*.json .
rm -r vac/
python ../../HybridPourbaix.py --hybrid --suffix Fe2O3 \
--show-transitions --no-bulk --figx 4 --figy 4 --Umin -1.0 --Umax 2.5 \
--colors-bulk white gainsboro darkgray dimgray white gainsboro dimgray gray \
--colors-2d '#A5D86A' '#D9EF8B' '#FFFEBE'

python ../../HybridPourbaix.py --hybrid --thermo-data ./thermodynamic_data.jsonc \
--show-transitions --no-bulk --figx 4 --figy 4 --Umin -1.0 --Umax 2.5 \
--colors-bulk white gainsboro gainsboro white darkgray dimgray gray \
--colors-2d '#A5D86A' '#D9EF8B' '#FFFEBE'

# gc + hybrid
python ../../HybridPourbaix.py --gc --hybrid --suffix Fe2O3 \
--show-transitions --no-bulk --figx 4 --figy 4 --Umin -1.0 --Umax 2.5 \
--colors-bulk white gainsboro darkgray gainsboro white dimgray \
--colors-2d '#A5D86A' green '#D9EF8B' '#FFFEBE'

python ../../HybridPourbaix.py --gc --hybrid --thermo-data ./thermodynamic_data.jsonc \
--show-transitions --no-bulk --figx 4 --figy 4 --Umin -1.0 --Umax 2.5 \
--colors-bulk white gainsboro darkgray gainsboro white gray dimgray \
--colors-2d '#A5D86A' green '#D9EF8B' '#FFFEBE'

# white whitesmoke gainsboro lightgray silver darkgray gray dimgray
# dimgray gray darkgray silver lightgray gainsboro whitesmoke white
# white whitesmoke gainsboro lightgray silver darkgray gray dimgray gray darkgray silver lightgray gainsboro whitesmoke white
# white whitesmoke gainsboro=lightgray=silver=darkgray gray dimgray gray darkgray=silver=lightgray=gainsboro whitesmoke white
# white gainsboro silver darkgray dimgray silver white
