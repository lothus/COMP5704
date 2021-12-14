#!/bin/bash

inputFile="edith1.swf"

cd PG/

python3.7 cqsim.py -j $inputFile -n $inputFile −−is training 1

cd ..

mv data/Results/edith1.rst data/Results/PG_results_edith1.rst
mv data/Results/edith1.ult data/Results/PG_results_edith1.ult

cd DQL/

python3.7 cqsim.py -j $inputFile -n $inputFile −−is training 1

cd ..

mv data/Results/edith1.rst data/Results/DQL_results_edith1.rst
mv data/Results/edith1.ult data/Results/DQL_results_edith1.ult