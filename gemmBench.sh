#!/bin/bash

OMP_NUM_THREADS=1 taskset --cpu-list 0 ./bench $@
