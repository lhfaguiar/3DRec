#!/bin/bash

#baixa o que precisa do repo pra comecar
git clone https://github.com/chrischoy/3D-R2N2.git
cd 3D-R2N2

#prepara o venv
virtualenv -p python3 --system-site-packages py3
source py3/bin/activate
pip install -r requirements.txt
cp .theanorc ~/.theanorc
alias gcc='gcc-4.8'
alias cc='gcc-4.8'
alias g++='g++-4.8'
alias c++='c++-4.8'
export THEANO_FLAGS=mode=FAST_RUN,device=cuda,floatX=float32

#roda o demo com a cadeira
python demo.py prediction.obj
