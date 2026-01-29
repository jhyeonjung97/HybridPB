python ~/bin/HybridPB/pourbaix.py --OER --HER --show-transitions --hybrid --no-bulk \
--Umin -0.5 --Umax 2.5 --Gmin -15 --Gmax 15 \
--colors-bulk white whitesmoke lightgray darkgray gray orange gold gray whitesmoke darkgray lightgray white \
--colors-2d dodgerblue lightskyblue

python ~/bin/HybridPB/pourbaix.py --OER --HER --show-transitions --hybrid --no-bulk \
--Umin -0.5 --Umax 2.5 --Gmin -15 --Gmax 15 --legend-out \
--colors-bulk white whitesmoke lightgray darkgray gray orange gold gray whitesmoke darkgray lightgray white \
--colors-2d dodgerblue lightskyblue

python ~/bin/HybridPB/pourbaix.py --OER --HER --show-transitions --hybrid --no-bulk \
--Umin -0.5 --Umax 2.5 --Gmin -15 --Gmax 15 \
--colors-bulk white whitesmoke lightgray darkgray gray orange gold dimgray gray darkgray white lightgray whitesmoke \
--colors-2d dodgerblue lightskyblue \
--thermo-data ./thermodynamic_data.jsonc --suffix MnO4-

python ~/bin/HybridPB/pourbaix.py --OER --HER --show-transitions --hybrid --no-bulk \
--Umin -0.5 --Umax 2.5 --Gmin -15 --Gmax 15  --legend-out \
--colors-bulk white whitesmoke lightgray darkgray gray orange gold dimgray gray darkgray white lightgray whitesmoke \
--colors-2d dodgerblue lightskyblue \
--thermo-data ./thermodynamic_data.jsonc --suffix MnO4-

mkdir OH/
mv OHBridge_OHTop.json OH/
python ~/bin/HybridPB/pourbaix.py --OER --HER --show-transitions --hybrid --no-bulk \
--Umin -0.5 --Umax 2.5 --Gmin -15 --Gmax 15 \
--colors-bulk white whitesmoke gainsboro silver darkgray gray dimgray darkgray gray silver gainsboro whitesmoke white whitesmoke white \
--colors-2d dodgerblue lightskyblue --suffix OH

python ~/bin/HybridPB/pourbaix.py --OER --HER --show-transitions --hybrid --no-bulk \
--Umin -0.5 --Umax 2.5 --Gmin -15 --Gmax 15 --legend-out \
--colors-bulk white whitesmoke gainsboro silver darkgray gray dimgray darkgray gray silver gainsboro whitesmoke white whitesmoke white \
--colors-2d dodgerblue lightskyblue --suffix OH

rm -r OH/

# white whitesmoke gainsboro lightgray silver darkgray gray dimgray
# dimgray gray darkgray silver lightgray gainsboro whitesmoke white