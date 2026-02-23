mv *.json no3rr/; cp 1_/*.json .
python ../../pourbaix.py --png \
--Umin -2 --Umax 2 --pHmin -2 --pHmax 16 \
--colors-2d '#5c90c2' '#f0f9db' '#fec779' --suffix OxHy

mv *.json no3rr/; cp 2_/*.json .
python ../../pourbaix.py \
--Umin -2 --Umax 2 --pHmin -2 --pHmax 16 \
--cmap-2d PiYG_r --cmin-2d 0.15 --cmax-2d 0.85 --cgap-2d 0.0 --suffix NOxHy

mv *.json no3rr/; cp 3_/*.json .
python ../../pourbaix.py --hybrid --HER --OER \
--Umin -2 --Umax 2 --pHmin -2 --pHmax 16 \
--colors-bulk white darkgray gainsboro white darkgray

python ../../pourbaix.py --hybrid --no-bulk \
--Umin -2 --Umax 2 --pHmin -2 --pHmax 16 \
--cmap RdYlBu_r --cmin 0.15 --cmax 0.85 --cgap 0.0 --colors-2d '#D14895'

rm -r no3rr/

