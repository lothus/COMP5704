#!/bin/bash

inputFile="test.swf"

cd /opt/code/DRAS/PG

python cqsim.py -j $inputFile -n $inputFile −−is training 0

cd ..

mv data/Results/test.rst /opt/code/results/PG_results_test.rst
mv data/Results/test.ult /opt/code/results/PG_results_test.ult

cd /opt/code/DRAS/DQL/

python cqsim.py -j $inputFile -n $inputFile −−is training 0

cd ..

mv data/Results/test.rst /opt/code/results/DQL_results_test.rst
mv data/Results/test.ult /opt/code/results/DQL_results_test.ult
