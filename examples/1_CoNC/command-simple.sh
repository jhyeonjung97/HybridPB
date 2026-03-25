# surface (without vac*.json files)
mkdir -p vac/
mv vac*.json vac/
python ../../pourbaix.py --OER --HER --png \
--colors-2d '#73ADD1' '#B9E0ED' '#FEE79B' '#FDAD60'

# hybrid (conc)
mv vac/vac*.json .
python ../../pourbaix.py --OER --HER --hybrid --concentration 1e-4 --suffix conc4 \
--colors-bulk white gray lightgray darkgray white \
--colors-2d '#B9E0ED' '#FEE79B' '#FDAD60'
python ../../pourbaix.py --OER --HER --hybrid --concentration 1e-6 --suffix conc6 \
--colors-bulk white lightgray gray lightgray darkgray white \
--colors-2d '#B9E0ED' '#FEE79B' '#FDAD60'
python ../../pourbaix.py --OER --HER --hybrid --concentration 1e-8 --suffix conc8 \
--colors-bulk white lightgray gray lightgray darkgray white \
--colors-2d '#B9E0ED' '#FEE79B' '#FDAD60'

# hybrid (pH)
python ../../pourbaix.py --OER --HER --hybrid --no-bulk --legend-in --Gmin -8 --Gmax 8 --pH 0
python ../../pourbaix.py --OER --HER --hybrid --no-bulk --legend-in --Gmin -8 --Gmax 8 --pH 7
python ../../pourbaix.py --OER --HER --hybrid --no-bulk --legend-in --Gmin -8 --Gmax 8 --pH 14 \
--colors-bulk white lightgray gray lightgray darkgray white \
--colors-2d '#B9E0ED' '#FEE79B' '#FDAD60'