#!/bin/bash

git clone https://github.com/WongKinYiu/yolor
cd yolor
git apply ../0001-Use-cpu-instead-of-cuda.patch
python3 -m pip install -r requirements.txt

git clone https://github.com/fbcotter/pytorch_wavelets
cd pytorch_wavelets
python3 -m pip install .
cd ..

gdown 1Tdn3yqpZ79X7R1Ql0zNlNScB1Dv9Fp76

python3 detect.py --source inference/images/horses.jpg --cfg yolor_p6.cfg --weights yolor_p6.pt --conf 0.25 --img-size 1280 --device cpu
