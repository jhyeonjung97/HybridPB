# surface
mkdir -p vac/
mv vac*.json vac/
python ../../pourbaix.py --Umin -1.5 --Umax 2.0 \
--colors-2d '#73ADD1' '#B9E0ED' '#F0F9DB' '#FEE79B' '#FDAD60'

# surface (gc)
python ../../pourbaix.py --Umin -1.5 --Umax 2.0 --gc \
--colors-2d '#73ADD1' '#B9E0ED' royalblue '#FEE79B' '#FDAD60'

# hybrid (bulk)
mv vac/vac*.json .
python ../../pourbaix.py --Umin -1.5 --Umax 2.0 --hybrid --HER --OER --png \
--colors-bulk white whitesmoke gray gainsboro silver white dimgray

# hybrid
python ../../pourbaix.py --Umin -1.5 --Umax 2.0 --hybrid --no-bulk --suffix Fe2O3 \
--colors-bulk white gainsboro darkgray dimgray white gainsboro dimgray gray \
--colors-2d '#73ADD1' '#B9E0ED' '#F0F9DB'

python ../../pourbaix.py --Umin -1.5 --Umax 2.0 --hybrid --no-bulk --thermo-data ./thermodynamic_data.jsonc \
--colors-bulk white gainsboro gainsboro white darkgray dimgray gray \
--colors-2d '#73ADD1' '#B9E0ED' '#F0F9DB' --Gmin -6 --Gmax 8 

# gc + hybrid
python ../../pourbaix.py --Umin -1.5 --Umax 2.0 --hybrid --no-bulk --gc --suffix Fe2O3 \
--colors-bulk white gainsboro darkgray gainsboro dimgray white \
--colors-2d '#73ADD1' royalblue '#B9E0ED' '#F0F9DB'

python ../../pourbaix.py --Umin -1.5 --Umax 2.0 --hybrid --no-bulk --gc --thermo-data ./thermodynamic_data.jsonc \
--colors-bulk white gainsboro gainsboro gray dimgray white \
--colors-2d '#73ADD1' '#B9E0ED' --Gmin -6 --Gmax 8 