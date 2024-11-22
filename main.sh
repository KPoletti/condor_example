#!/bin/bash

# Change the directory to the first argument passed to the script
cd $1
# print the current directory
pwd
# activate your conda environment
conda activate myenv
# run the python script
python main.py 
