mv */* .

# basic
mkdir -p vac/
mv vac*.json vac/
python ../../pourbaix.py --legend-out --OER --png \
--show-transitions --no-bulk --figx 4 --figy 4 --Umin -1.0 --Umax 2.5 \
--cmap-2d RdYlBu_r --cmin-2d 0.2 --cmax-2d 0.7 --cgap-2d 0.0

# gc
python ../../pourbaix.py --legend-out --OER --gc \
--show-transitions --no-bulk --figx 4 --figy 4 --Umin -1.0 --Umax 2.5 \
--colors-2d '#73ADD1' '#B9E0ED' '#FEE79B' '#FDAD60'
# --colors-2d '#73ADD1' royalblue '#B9E0ED' '#F0F9DB' '#FEE79B' '#FDAD60' darkorange

# hybrid
mv vac/vac*.json .
rm -r vac/
python ../../pourbaix.py --legend-out --OER --hybrid --suffix Fe2O3 \
--show-transitions --no-bulk --figx 4 --figy 4 --Umin -1.0 --Umax 2.5 \
--colors-bulk white gainsboro darkgray dimgray white gainsboro dimgray gray \
--colors-2d '#73ADD1' '#B9E0ED' '#F0F9DB'

python ../../pourbaix.py --legend-out --OER --hybrid --thermo-data ./thermodynamic_data.jsonc \
--show-transitions --no-bulk --figx 4 --figy 4 --Umin -1.0 --Umax 2.5 \
--colors-bulk white gainsboro gainsboro white darkgray dimgray gray \
--colors-2d '#73ADD1' '#B9E0ED' '#F0F9DB'

# gc + hybrid
python ../../pourbaix.py --legend-out --OER --gc --hybrid --suffix Fe2O3 \
--show-transitions --no-bulk --figx 4 --figy 4 --Umin -1.0 --Umax 2.5 \
--colors-bulk white gainsboro darkgray gainsboro white dimgray \
--colors-2d '#73ADD1' '#B9E0ED' '#F0F9DB'

python ../../pourbaix.py --legend-out --OER --gc --hybrid --thermo-data ./thermodynamic_data.jsonc \
--show-transitions --no-bulk --figx 4 --figy 4 --Umin -1.0 --Umax 2.5 \
--colors-bulk white gainsboro darkgray gainsboro white gray dimgray \
--colors-2d '#73ADD1' '#B9E0ED' '#F0F9DB'

# white whitesmoke gainsboro lightgray silver darkgray gray dimgray
# dimgray gray darkgray silver lightgray gainsboro whitesmoke white
# white whitesmoke gainsboro lightgray silver darkgray gray dimgray gray darkgray silver lightgray gainsboro whitesmoke white
# white whitesmoke gainsboro=lightgray=silver=darkgray gray dimgray gray darkgray=silver=lightgray=gainsboro whitesmoke white
# white gainsboro silver darkgray dimgray silver white
