# basic
mkdir -p vac/
mv vac*.json vac/
python ../../pourbaix.py --png \
--figx 4 --figy 4 --cmin 0.1 --cmax 0.7 --cmap-2d Oranges --cmin-2d 0.2 --cmax-2d 0.9 --Gmin -8 --Gmax 8
python ../../pourbaix.py --legend-in \
--figx 4 --figy 4 --cmin 0.1 --cmax 0.7 --cmap-2d Oranges --cmin-2d 0.2 --cmax-2d 0.9 --Gmin -8 --Gmax 8

# gc
python ../../pourbaix.py --gc \
--figx 4 --figy 4 --cmin 0.1 --cmax 0.7 --cmap-2d Oranges --cmin-2d 0.2 --cmax-2d 0.9 --Gmin -8 --Gmax 8
python ../../pourbaix.py --gc --legend-in \
--figx 4 --figy 4 --cmin 0.1 --cmax 0.7 --cmap-2d Oranges --cmin-2d 0.2 --cmax-2d 0.9 --Gmin -8 --Gmax 8

# hybrid
mv vac/vac*.json .
rm -r vac/
python ../../pourbaix.py --hybrid \
--figx 4 --figy 4 --cmin 0.1 --cmax 0.7 --cmap-2d Oranges --cmin-2d 0.2 --cmax-2d 0.4 --Gmin -8 --Gmax 8

# gc + hybrid
python ../../pourbaix.py --gc --hybrid \
--figx 4 --figy 4 --cmin 0.1 --cmax 0.7 --cmap-2d Oranges --cmin-2d 0.2 --cmax-2d 0.4 --Gmin -8 --Gmax 8