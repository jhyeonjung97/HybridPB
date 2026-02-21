# basic
mkdir -p no3rr/
mv *.json no3rr/; mv no3rr/h*.json no3rr/oh*.json no3rr/o.json ./
python ../../pourbaix.py \
--figx 4 --figy 4 --Umin -2 --Umax 2 --pHmin -2 --pHmax 16 \

mkdir -p no3rr/
mv *.json no3rr/; mv no3rr/h*.json no3rr/oh*.json no3rr/o.json ./
python ../../../pourbaix.py --png \
--Umin -2 --Umax 2 --pHmin -2 --pHmax 16 \
--colors-2d '#0D1D55' '#529FBE' '#EBF6B8' --suffix OxHy

mv no3rr/* ./; mv h*.json oh*.json o.json no3rr/
python ../../../pourbaix.py \
--Umin -2 --Umax 2 --pHmin -2 --pHmax 16 \
--cmap-2d YlOrBr --cmin 0.0 --cmax 1.0 --cgap-2d 0.0 --suffix NOxHy

mv no3rr/* ./
python ../../pourbaix.py --hybrid --no-bulk \
--Umin -2 --Umax 2 --pHmin -2 --pHmax 16 \
--cmap YlGnBu_r --cmin 0.0 --cmax 1.0 --cgap 0.0 --colors-2d '#5E2910'

rm -r no3rr/

