# basic
mkdir -p no3rr/
mv *.json no3rr/; mv no3rr/h*.json no3rr/oh*.json no3rr/o.json ./
python ../../pourbaix.py --show-transitions --OER --HER \
--figx 4 --figy 4 --Umin -2 --Umax 2 --pHmin -2 --pHmax 16 \
--cmap-2d Greens --cmin-2d 0.1 --cmax-2d 0.6 --cgap-2d 0.0 --suffix OxHy

mv no3rr/* ./; mv h*.json oh*.json o.json no3rr/
python ../../pourbaix.py --show-transitions --OER --HER \
--figx 4 --figy 4 --Umin -2 --Umax 2 --pHmin -2 --pHmax 16 \
--cmap-2d Blues --cmin-2d 0.1 --cmax-2d 0.6 --cgap-2d 0.0 --suffix NOxHy

mv no3rr/* ./; mv no3rr/
python ../../pourbaix.py --show-transitions --OER --HER --hybrid \
--figx 4 --figy 4 --Umin -2 --Umax 2 --pHmin -2 --pHmax 16 \
--cmap Greens --cmin 0.1 --cmax 0.9 --cgap 0.0 \
--cmap-2d Blues --cmin-2d 0.6 --cmax-2d 0.9 --cgap-2d 0.0

rm -r no3rr/