#!/bin/bash

apt-get update
apt-get install -y git python3 python3-pip wget unzip ffmpeg libsm6 libxext6
python3 -m pip install gdown cython wheel numpy opencv-python

git clone https://github.com/WongKinYiu/yolor
cd yolor
git apply ../0001-Update-torch.patch
python3 -m pip install -r requirements.txt

git clone https://github.com/JunnYu/mish-cuda
cd mish-cuda
python3 setup.py build install
cd ..

git clone https://github.com/fbcotter/pytorch_wavelets
cd pytorch_wavelets
python3 -m pip install .
cd ..

gdown 1Tdn3yqpZ79X7R1Ql0zNlNScB1Dv9Fp76

# TEST
python3 detect.py --source inference/images/horses.jpg --cfg yolor_p6.cfg --weights yolor_p6.pt --conf 0.25 --img-size 1280 --device 0
