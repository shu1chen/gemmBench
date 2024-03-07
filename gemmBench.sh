#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    OMP_NUM_THREADS=1 KMP_AFFINITY=compact,1,0,granularity=fine taskset --cpu-list 0 ./bench $@
else
    OMP_NUM_THREADS=1 ./bench $@
fi
