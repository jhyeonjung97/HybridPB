# basic
mkdir -p vac/
mv vac*.json vac/
python ../../pourbaix.py --OER --HER --png \
--figx 4 --figy 4 --cmin 0.1 --cmax 0.7 --cmap-2d Oranges --cmin-2d 0.2 --cmax-2d 0.9 --Gmin -6 --Gmax 8
python ../../pourbaix.py --OER --HER --legend-in \
--figx 4 --figy 4 --cmin 0.1 --cmax 0.7 --cmap-2d Oranges --cmin-2d 0.2 --cmax-2d 0.9 --Gmin -6 --Gmax 8

# gc
python ../../pourbaix.py --OER --HER --gc \
--figx 4 --figy 4 --cmin 0.1 --cmax 0.7 --cmap-2d Oranges --cmin-2d 0.2 --cmax-2d 0.9 --Gmin -6 --Gmax 8
python ../../pourbaix.py --OER --HER --gc --legend-in \
--figx 4 --figy 4 --cmin 0.1 --cmax 0.7 --cmap-2d Oranges --cmin-2d 0.2 --cmax-2d 0.9 --Gmin -6 --Gmax 8

# hybrid
mv vac/vac*.json .
rm -r vac/
python ../../pourbaix.py --OER --HER --hybrid \
--figx 4 --figy 4 --cmin 0.1 --cmax 0.7 --cmap-2d Oranges --cmin-2d 0.2 --cmax-2d 0.4 --Gmin -6 --Gmax 8

# gc + hybrid
python ../../pourbaix.py --OER --HER --gc --hybrid \
--figx 4 --figy 4 --cmin 0.1 --cmax 0.7 --cmap-2d Oranges --cmin-2d 0.2 --cmax-2d 0.4 --Gmin -6 --Gmax 8