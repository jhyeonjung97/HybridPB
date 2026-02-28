# hybrid
python ~/bin/HybridPB/pourbaix.py --hybrid --no-bulk --Umin -0.5 --Umax 2.5 \
--colors-bulk white whitesmoke lightgray darkgray gray orange darkgray gold lightgray whitesmoke white \
--colors-2d dodgerblue lightskyblue

# hybrid without MnO4-
python ~/bin/HybridPB/pourbaix.py --hybrid --no-bulk --Umin -0.5 --Umax 2.5 \
--colors-bulk white whitesmoke lightgray darkgray gray orange dimgray gold gray darkgray silver white lightgray gainsboro whitesmoke dimgray \
--colors-2d dodgerblue lightskyblue \
--thermo-data ./thermodynamic_data.jsonc --suffix MnO4-

# hybrid with OHBridge_OHTop.json
mkdir -p OH/
mv OHBridge_OHTop.json OH/
python ~/bin/HybridPB/pourbaix.py --hybrid --no-bulk --Umin -0.5 --Umax 2.5 \
--colors-bulk white whitesmoke gainsboro silver darkgray gray dimgray gray darkgray silver gainsboro whitesmoke white \
--colors-2d dodgerblue lightskyblue --suffix OH
mv OH/OHBridge_OHTop.json .

# python ~/bin/HybridPB/pourbaix.py --hybrid --HER --OER \
# --Umin -0.5 --Umax 2.5 --suffix K --colors-bulk white gainsboro

# python ~/bin/HybridPB/pourbaix.py --hybrid --HER --OER \
# --Umin -0.5 --Umax 2.5 --suffix Mn --colors-bulk white gainsboro silver gray dimgray silver gainsboro white