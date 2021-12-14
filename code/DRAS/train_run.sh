#!/bin/bash

inputFile="edith1.swf"

cd /opt/code/DRAS/PG

python cqsim.py -j $inputFile -n $inputFile −−is training 1

cd ..

mv /opt/code/DRAS/data/Results/edith1.rst /opt/code/results/PG_results_edith1.rst
mv /opt/code/DRAS/data/Results/edith1.ult /opt/code/results/PG_results_edith1.ult

cd /opt/code/DRAS/DQL/

python cqsim.py -j $inputFile -n $inputFile −−is training 1

cd ..

mv /opt/code/DRAS/data/Results/edith1.rst /opt/code/results/DQL_results_edith1.rst
mv /opt/code/DRAS/data/Results/edith1.ult /opt/code/results/DQL_results_edith1.ult