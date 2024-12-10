#!/bin/bash

git clone https://github.com/InseeFrLab/formation-starting-pack.git tuto
cd tuto
Rscript -e "install.packages('renv')"
Rscript -e "renv::restore()"
cd ..
cp resources/r.qmd r.qmd
rm -rf tuto
