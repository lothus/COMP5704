#!/bin/bash

inputFile="test.swf"

cd /code/DRAS/PG

python cqsim.py -j $inputFile -n $inputFile −−is training 1

cd ..

mv data/Results/test.rst /results/PG_results.rst
mv data/Results/test.ult /results/PG_results.ult

cd /code/DRAS/DQL/

python cqsim.py -j $inputFile -n $inputFile −−is training 1

cd ..

mv data/Results/test.rst /results/DQL_results.rst
mv data/Results/test.ult /results/DQL_results.ult
