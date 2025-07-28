mkdir -p vac/

# surface (without vac*.json files)
mv vac*.json vac/
python ../../pourbaix.py --png \
--figx 4 --figy 4 --cmap-2d Purples --cmin-2d 0.0 --cmax-2d 0.5

# hybrid (bulk)
mv vac/vac*.json .
python ../../pourbaix.py --hybrid --concentration 1e-4 \
--figx 4 --figy 4 --cmax 0.1 --cmax 0.5 --cmap-2d Purples --cmin-2d 0.1 --cmax-2d 0.5 --suffix conc4
python ../../pourbaix.py --hybrid --concentration 1e-6 \
--figx 4 --figy 4 --cmax 0.1 --cmax 0.5 --cmap-2d Purples --cmin-2d 0.1 --cmax-2d 0.5 --suffix conc6
python ../../pourbaix.py --hybrid --concentration 1e-8 \
--figx 4 --figy 4 --cmax 0.1 --cmax 0.5 --cmap-2d Purples --cmin-2d 0.1 --cmax-2d 0.5 --suffix conc8

# hybrid (hybrid)
python ../../pourbaix.py --hybrid --no-bulk --concentration 1e-4 \
--figx 4 --figy 4 --cmin 0.2 --cmax 0.3 --cmap-2d Purples --cmin-2d 0.1 --cmax-2d 0.5 --suffix conc4
python ../../pourbaix.py --hybrid --no-bulk --concentration 1e-6 \
--figx 4 --figy 4 --cmin 0.2 --cmax 0.3 --cmap-2d Purples --cmin-2d 0.1 --cmax-2d 0.5 --suffix conc6
python ../../pourbaix.py --hybrid --no-bulk --concentration 1e-8 \
--figx 4 --figy 4 --cmin 0.2 --cmax 0.3 --cmap-2d Purples --cmin-2d 0.1 --cmax-2d 0.5 --suffix conc8
python ../../pourbaix.py --hybrid --no-bulk --legend-in \
--figx 4 --figy 4 --cmin 0.2 --cmax 0.3 --cmap-2d Purples --cmin-2d 0.1 --cmax-2d 0.5 --Gmin -8 --Gmax 8 --pH 0
python ../../pourbaix.py --hybrid --no-bulk --legend-in \
--figx 4 --figy 4 --cmin 0.2 --cmax 0.3 --cmap-2d Purples --cmin-2d 0.1 --cmax-2d 0.5 --Gmin -8 --Gmax 8 --pH 7
python ../../pourbaix.py --hybrid --no-bulk --legend-in \
--figx 4 --figy 4 --cmin 0.2 --cmax 0.3 --cmap-2d Purples --cmin-2d 0.1 --cmax-2d 0.5 --Gmin -8 --Gmax 8 --pH 14

rm -r vac/