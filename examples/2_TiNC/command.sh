# basic
mkdir -p no3rr/
mv *.json no3rr/; mv no3rr/h*.json no3rr/oh*.json no3rr/o.json ./
python ../../pourbaix.py --legend-out --png \
--Umin -2 --Umax 2 --pHmin -2 --pHmax 16 \
--colors-2d '#5c90c2' '#f0f9db' '#fec779' --suffix OxHy

mv no3rr/* ./; mv h*.json oh*.json o.json no3rr/
python ../../pourbaix.py --legend-out \
--Umin -2 --Umax 2 --pHmin -2 --pHmax 16 \
--cmap-2d PiYG_r --cmin-2d 0.15 --cmax-2d 0.85 --cgap-2d 0.0 --suffix NOxHy

mv no3rr/* ./
python ../../pourbaix.py --legend-out --hybrid --HER --OER \
--Umin -2 --Umax 2 --pHmin -2 --pHmax 16 \
--colors-bulk white darkgray gainsboro white darkgray

python ../../pourbaix.py --legend-out --hybrid --no-bulk \
--Umin -2 --Umax 2 --pHmin -2 --pHmax 16 \
--cmap RdYlBu_r --cmin 0.15 --cmax 0.85 --cgap 0.0 --colors-2d '#D14895'

rm -r no3rr/

