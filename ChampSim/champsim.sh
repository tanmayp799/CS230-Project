#!/bin/bash

cp cache_nine.cc ./src/cache.cc

./build_champsim.sh bimodal no no no no lru 1
# ./run_champsim.sh bimodal-no-no-no-no-lru-1core 30 30 cadical-high-60K-113B.champsimtrace.xz &
./run_champsim.sh bimodal-no-no-no-no-lru-1core 30 30 cadical-high-60K-134B.champsimtrace.xz &
./run_champsim.sh bimodal-no-no-no-no-lru-1core 30 30 cadical-high-60K-1227B.champsimtrace.xz &
./run_champsim.sh  bimodal-no-no-no-no-lru-1core 30 30 kissat-inc-high-30K-1802B.champsimtrace.xz &

./build_champsim.sh bimodal no no no no lfu 1
# ./run_champsim.sh bimodal-no-no-no-no-lfu-1core 30 30 cadical-high-60K-113B.champsimtrace.xz &
./run_champsim.sh bimodal-no-no-no-no-lfu-1core 30 30 cadical-high-60K-134B.champsimtrace.xz &
./run_champsim.sh bimodal-no-no-no-no-lfu-1core 30 30 cadical-high-60K-1227B.champsimtrace.xz &
./run_champsim.sh  bimodal-no-no-no-no-lfu-1core 30 30 kissat-inc-high-30K-1802B.champsimtrace.xz &

./build_champsim.sh bimodal no no no no fifo 1
# ./run_champsim.sh bimodal-no-no-no-no-fifo-1core 30 30 cadical-high-60K-113B.champsimtrace.xz &
./run_champsim.sh bimodal-no-no-no-no-fifo-1core 30 30 cadical-high-60K-134B.champsimtrace.xz &
./run_champsim.sh bimodal-no-no-no-no-fifo-1core 30 30 cadical-high-60K-1227B.champsimtrace.xz &
./run_champsim.sh  bimodal-no-no-no-no-fifo-1core 30 30 kissat-inc-high-30K-1802B.champsimtrace.xz &

./build_champsim.sh bimodal no no no no ship 1
# ./run_champsim.sh bimodal-no-no-no-no-ship-1core 30 30 cadical-high-60K-113B.champsimtrace.xz &
./run_champsim.sh bimodal-no-no-no-no-ship-1core 30 30 cadical-high-60K-134B.champsimtrace.xz &
./run_champsim.sh bimodal-no-no-no-no-ship-1core 30 30 cadical-high-60K-1227B.champsimtrace.xz &
./run_champsim.sh  bimodal-no-no-no-no-ship-1core 30 30 kissat-inc-high-30K-1802B.champsimtrace.xz 

./build_champsim.sh bimodal no no no no srrip 1
# ./run_champsim.sh bimodal-no-no-no-no-srrip-1core 30 30 cadical-high-60K-113B.champsimtrace.xz &
./run_champsim.sh bimodal-no-no-no-no-srrip-1core 30 30 cadical-high-60K-134B.champsimtrace.xz &
./run_champsim.sh bimodal-no-no-no-no-srrip-1core 30 30 cadical-high-60K-1227B.champsimtrace.xz &
./run_champsim.sh  bimodal-no-no-no-no-srrip-1core 30 30 kissat-inc-high-30K-1802B.champsimtrace.xz &

./build_champsim.sh bimodal no no no no drrip 1
# ./run_champsim.sh bimodal-no-no-no-no-drrip-1core 30 30 cadical-high-60K-113B.champsimtrace.xz &
./run_champsim.sh bimodal-no-no-no-no-drrip-1core 30 30 cadical-high-60K-134B.champsimtrace.xz &
./run_champsim.sh bimodal-no-no-no-no-drrip-1core 30 30 cadical-high-60K-1227B.champsimtrace.xz &
./run_champsim.sh  bimodal-no-no-no-no-drrip-1core 30 30 kissat-inc-high-30K-1802B.champsimtrace.xz 

mv ./results_30M ./results/results_nine

cp cache_incl.cc ./src/cache.cc

./build_champsim.sh bimodal no no no no lru 1
# ./run_champsim.sh bimodal-no-no-no-no-lru-1core 30 30 cadical-high-60K-113B.champsimtrace.xz &
./run_champsim.sh bimodal-no-no-no-no-lru-1core 30 30 cadical-high-60K-134B.champsimtrace.xz &
./run_champsim.sh bimodal-no-no-no-no-lru-1core 30 30 cadical-high-60K-1227B.champsimtrace.xz &
./run_champsim.sh  bimodal-no-no-no-no-lru-1core 30 30 kissat-inc-high-30K-1802B.champsimtrace.xz &

./build_champsim.sh bimodal no no no no lfu 1
# ./run_champsim.sh bimodal-no-no-no-no-lfu-1core 30 30 cadical-high-60K-113B.champsimtrace.xz &
./run_champsim.sh bimodal-no-no-no-no-lfu-1core 30 30 cadical-high-60K-134B.champsimtrace.xz &
./run_champsim.sh bimodal-no-no-no-no-lfu-1core 30 30 cadical-high-60K-1227B.champsimtrace.xz &
./run_champsim.sh  bimodal-no-no-no-no-lfu-1core 30 30 kissat-inc-high-30K-1802B.champsimtrace.xz &

./build_champsim.sh bimodal no no no no fifo 1
# ./run_champsim.sh bimodal-no-no-no-no-fifo-1core 30 30 cadical-high-60K-113B.champsimtrace.xz &
./run_champsim.sh bimodal-no-no-no-no-fifo-1core 30 30 cadical-high-60K-134B.champsimtrace.xz &
./run_champsim.sh bimodal-no-no-no-no-fifo-1core 30 30 cadical-high-60K-1227B.champsimtrace.xz &
./run_champsim.sh  bimodal-no-no-no-no-fifo-1core 30 30 kissat-inc-high-30K-1802B.champsimtrace.xz &

./build_champsim.sh bimodal no no no no ship 1
# ./run_champsim.sh bimodal-no-no-no-no-ship-1core 30 30 cadical-high-60K-113B.champsimtrace.xz &
./run_champsim.sh bimodal-no-no-no-no-ship-1core 30 30 cadical-high-60K-134B.champsimtrace.xz &
./run_champsim.sh bimodal-no-no-no-no-ship-1core 30 30 cadical-high-60K-1227B.champsimtrace.xz &
./run_champsim.sh  bimodal-no-no-no-no-ship-1core 30 30 kissat-inc-high-30K-1802B.champsimtrace.xz 

./build_champsim.sh bimodal no no no no srrip 1
# ./run_champsim.sh bimodal-no-no-no-no-srrip-1core 30 30 cadical-high-60K-113B.champsimtrace.xz &
./run_champsim.sh bimodal-no-no-no-no-srrip-1core 30 30 cadical-high-60K-134B.champsimtrace.xz &
./run_champsim.sh bimodal-no-no-no-no-srrip-1core 30 30 cadical-high-60K-1227B.champsimtrace.xz &
./run_champsim.sh  bimodal-no-no-no-no-srrip-1core 30 30 kissat-inc-high-30K-1802B.champsimtrace.xz &

./build_champsim.sh bimodal no no no no drrip 1
# ./run_champsim.sh bimodal-no-no-no-no-drrip-1core 30 30 cadical-high-60K-113B.champsimtrace.xz &
./run_champsim.sh bimodal-no-no-no-no-drrip-1core 30 30 cadical-high-60K-134B.champsimtrace.xz &
./run_champsim.sh bimodal-no-no-no-no-drrip-1core 30 30 cadical-high-60K-1227B.champsimtrace.xz &
./run_champsim.sh  bimodal-no-no-no-no-drrip-1core 30 30 kissat-inc-high-30K-1802B.champsimtrace.xz 

mv ./results_30M ./results/results_incl

cp cache_excl.cc ./src/cache.cc

./build_champsim.sh bimodal no no no no lru 1
# ./run_champsim.sh bimodal-no-no-no-no-lru-1core 30 30 cadical-high-60K-113B.champsimtrace.xz &
./run_champsim.sh bimodal-no-no-no-no-lru-1core 30 30 cadical-high-60K-134B.champsimtrace.xz &
./run_champsim.sh bimodal-no-no-no-no-lru-1core 30 30 cadical-high-60K-1227B.champsimtrace.xz &
./run_champsim.sh  bimodal-no-no-no-no-lru-1core 30 30 kissat-inc-high-30K-1802B.champsimtrace.xz &

./build_champsim.sh bimodal no no no no lfu 1
# ./run_champsim.sh bimodal-no-no-no-no-lfu-1core 30 30 cadical-high-60K-113B.champsimtrace.xz &
./run_champsim.sh bimodal-no-no-no-no-lfu-1core 30 30 cadical-high-60K-134B.champsimtrace.xz &
./run_champsim.sh bimodal-no-no-no-no-lfu-1core 30 30 cadical-high-60K-1227B.champsimtrace.xz &
./run_champsim.sh  bimodal-no-no-no-no-lfu-1core 30 30 kissat-inc-high-30K-1802B.champsimtrace.xz &

./build_champsim.sh bimodal no no no no fifo 1
# ./run_champsim.sh bimodal-no-no-no-no-fifo-1core 30 30 cadical-high-60K-113B.champsimtrace.xz &
./run_champsim.sh bimodal-no-no-no-no-fifo-1core 30 30 cadical-high-60K-134B.champsimtrace.xz &
./run_champsim.sh bimodal-no-no-no-no-fifo-1core 30 30 cadical-high-60K-1227B.champsimtrace.xz &
./run_champsim.sh  bimodal-no-no-no-no-fifo-1core 30 30 kissat-inc-high-30K-1802B.champsimtrace.xz &

./build_champsim.sh bimodal no no no no ship 1
# ./run_champsim.sh bimodal-no-no-no-no-ship-1core 30 30 cadical-high-60K-113B.champsimtrace.xz &
./run_champsim.sh bimodal-no-no-no-no-ship-1core 30 30 cadical-high-60K-134B.champsimtrace.xz &
./run_champsim.sh bimodal-no-no-no-no-ship-1core 30 30 cadical-high-60K-1227B.champsimtrace.xz &
./run_champsim.sh  bimodal-no-no-no-no-ship-1core 30 30 kissat-inc-high-30K-1802B.champsimtrace.xz 

./build_champsim.sh bimodal no no no no srrip 1
# ./run_champsim.sh bimodal-no-no-no-no-srrip-1core 30 30 cadical-high-60K-113B.champsimtrace.xz &
./run_champsim.sh bimodal-no-no-no-no-srrip-1core 30 30 cadical-high-60K-134B.champsimtrace.xz &
./run_champsim.sh bimodal-no-no-no-no-srrip-1core 30 30 cadical-high-60K-1227B.champsimtrace.xz &
./run_champsim.sh  bimodal-no-no-no-no-srrip-1core 30 30 kissat-inc-high-30K-1802B.champsimtrace.xz &

./build_champsim.sh bimodal no no no no drrip 1
# ./run_champsim.sh bimodal-no-no-no-no-drrip-1core 30 30 cadical-high-60K-113B.champsimtrace.xz &
./run_champsim.sh bimodal-no-no-no-no-drrip-1core 30 30 cadical-high-60K-134B.champsimtrace.xz &
./run_champsim.sh bimodal-no-no-no-no-drrip-1core 30 30 cadical-high-60K-1227B.champsimtrace.xz &
./run_champsim.sh  bimodal-no-no-no-no-drrip-1core 30 30 kissat-inc-high-30K-1802B.champsimtrace.xz 

mv ./results_30M ./results/results_excl