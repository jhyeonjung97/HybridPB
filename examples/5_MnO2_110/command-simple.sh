# hybrid
python ~/bin/HybridPB/pourbaix.py --hybrid --no-bulk --Umin -0.5 --Umax 2.5 \
--colors-bulk white whitesmoke lightgray darkgray gray orange gold gray whitesmoke darkgray lightgray white \
--colors-2d dodgerblue lightskyblue

# hybrid without MnO4-
python ~/bin/HybridPB/pourbaix.py --hybrid --no-bulk --Umin -0.5 --Umax 2.5 \
--colors-bulk white whitesmoke lightgray darkgray gray orange gold dimgray gray darkgray white lightgray whitesmoke \
--colors-2d dodgerblue lightskyblue \
--thermo-data ./thermodynamic_data.jsonc --suffix MnO4-

# hybrid with OHBridge_OHTop.json
mkdir -p OH/
mv OHBridge_OHTop.json OH/
python ~/bin/HybridPB/pourbaix.py --hybrid --no-bulk --Umin -0.5 --Umax 2.5 \
--colors-bulk white whitesmoke gainsboro silver darkgray gray dimgray darkgray gray silver gainsboro whitesmoke white whitesmoke white \
--colors-2d dodgerblue lightskyblue --suffix OH
mv OH/OHBridge_OHTop.json .
