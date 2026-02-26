python ~/bin/HybridPB/pourbaix.py --hybrid --no-bulk \
--Umin -0.5 --Umax 2.5 --Gmin -15 --Gmax 15 \
--colors-bulk white whitesmoke lightgray darkgray gray orange darkgray gold lightgray whitesmoke white \
--colors-2d dodgerblue lightskyblue

python ~/bin/HybridPB/pourbaix.py --OER --hybrid --no-bulk \
--Umin -0.5 --Umax 2.5 --Gmin -15 --Gmax 15 \
--colors-bulk white whitesmoke lightgray darkgray gray orange darkgray gold lightgray whitesmoke white \
--colors-2d dodgerblue lightskyblue

python ~/bin/HybridPB/pourbaix.py --hybrid --no-bulk \
--Umin -0.5 --Umax 2.5 --Gmin -15 --Gmax 15 \
--colors-bulk white whitesmoke lightgray darkgray gray orange darkgray gold lightgray whitesmoke white \
--colors-2d dodgerblue lightskyblue --legend-out

python ~/bin/HybridPB/pourbaix.py --hybrid --no-bulk \
--Umin -0.5 --Umax 2.5 --Gmin -15 --Gmax 15 \
--colors-bulk white whitesmoke lightgray darkgray gray orange dimgray gold gray darkgray silver white lightgray gainsboro whitesmoke dimgray \
--colors-2d dodgerblue lightskyblue \
--thermo-data ./thermodynamic_data.jsonc --suffix MnO4-

mkdir OH/
mv OHBridge_OHTop.json OH/
python ~/bin/HybridPB/pourbaix.py --hybrid --no-bulk \
--Umin -0.5 --Umax 2.5 --Gmin -15 --Gmax 15 \
--colors-bulk white whitesmoke gainsboro silver darkgray gray dimgray gray darkgray silver gainsboro whitesmoke white \
--colors-2d dodgerblue lightskyblue --suffix OH

rm -r OH/

# white whitesmoke gainsboro lightgray silver darkgray gray dimgray
# dimgray gray darkgray silver lightgray gainsboro whitesmoke white
# dodgerblue lightskyblue gold orange