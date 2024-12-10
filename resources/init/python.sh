#!/bin/bash

DOWNLOAD_URL="https://inseefrlab.github.io/formation-starting-pack/resources/python.ipynb"
GIT_URL="https://github.com/InseeFrLab/formation-starting-pack.git"

git clone $GIT_URL tuto
cd tuto
pip install -r requirements.txt
cd ..
rm -rf tuto

curl -L $DOWNLOAD_URL -o "tuto.ipynb"
echo "c.LabApp.default_url = '/lab/tree/tuto.ipynb'" >> /home/onyxia/.jupyter/jupyter_server_config.py
