#!/bin/bash

# First argument is the node (e.g. "node2") and second is the time for the experiment
timeout $2 python profiler.py -n $1 start
python profiler.py -n $1 stop
python profiler.py -n $1 report -d profiler_results
python analyze.py profiler_results 0 20 $2