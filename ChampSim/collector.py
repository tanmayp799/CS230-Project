import os

# excl means 0
# incl means 1
# nine means 2

# cadical-high-60K-134B.champsimtrace.xz means 0
# cadical-high-60K-1227B.champsimtrace.xz means 1
# kissat-inc-high-30K-1802B.champsimtrace.xz means 2

# drrip means 0
# fifo means 1
# lfu means 2
# lru means 3
# ship means 4
# ssrip means 5

files_excl = os.listdir('./results/results_excl/results_30M')
files_incl = os.listdir('./results/results_incl/results_30M')
files_nine = os.listdir('./results/results_nine/results_30M')

final = [[], [], []] # stores 3->3->6 - heir->trace->repl: [IPC, L1D-MR, L2-MR, LLC-MR]

for i in range(3):
    for_each_trace = []
    for j in range(6):
        for_each_repl = []
        file = open('./results/results_excl/results_30M/%s'%(files_excl[6*i+j]), 'r').read().split('\n')
        line = 0
        while(not file[line].startswith('CPU 0 cumulative IPC')):
            line = line+1
        for_each_repl.append(float(file[line].split()[4]))
        while(not file[line].startswith('L1D TOTAL     ACCESS')):
            line = line+1
        for_each_repl.append(float(file[line].split()[7])/float(file[line].split()[3]))
        while(not file[line].startswith('L2C TOTAL     ACCESS')):
            line = line+1
        for_each_repl.append(float(file[line].split()[7])/float(file[line].split()[3]))
        while(not file[line].startswith('LLC TOTAL     ACCESS')):
            line = line+1
        for_each_repl.append(float(file[line].split()[7])/float(file[line].split()[3]))
        for_each_trace.append(for_each_repl)
    final[0].append(for_each_trace)

for i in range(3):
    for_each_trace = []
    for j in range(6):
        for_each_repl = []
        file = open('./results/results_incl/results_30M/%s'%(files_incl[6*i+j]), 'r').read().split('\n')
        line = 0
        while(not file[line].startswith('CPU 0 cumulative IPC')):
            line = line+1
        for_each_repl.append(float(file[line].split()[4]))
        while(not file[line].startswith('L1D TOTAL     ACCESS')):
            line = line+1
        for_each_repl.append(float(file[line].split()[7])/float(file[line].split()[3]))
        while(not file[line].startswith('L2C TOTAL     ACCESS')):
            line = line+1
        for_each_repl.append(float(file[line].split()[7])/float(file[line].split()[3]))
        while(not file[line].startswith('LLC TOTAL     ACCESS')):
            line = line+1
        for_each_repl.append(float(file[line].split()[7])/float(file[line].split()[3]))
        for_each_trace.append(for_each_repl)
    final[1].append(for_each_trace)

for i in range(3):
    for_each_trace = []
    for j in range(6):
        for_each_repl = []
        file = open('./results/results_nine/results_30M/%s'%(files_nine[6*i+j]), 'r').read().split('\n')
        line = 0
        while(not file[line].startswith('CPU 0 cumulative IPC')):
            line = line+1
        for_each_repl.append(float(file[line].split()[4]))
        while(not file[line].startswith('L1D TOTAL     ACCESS')):
            line = line+1
        for_each_repl.append(float(file[line].split()[7])/float(file[line].split()[3]))
        while(not file[line].startswith('L2C TOTAL     ACCESS')):
            line = line+1
        for_each_repl.append(float(file[line].split()[7])/float(file[line].split()[3]))
        while(not file[line].startswith('LLC TOTAL     ACCESS')):
            line = line+1
        for_each_repl.append(float(file[line].split()[7])/float(file[line].split()[3]))
        for_each_trace.append(for_each_repl)
    final[2].append(for_each_trace)

# Example: suppose you want the [IPC, L1D-MR, L2-MR, LLC-MR] for incl, cadical-high-60K-134B.champsimtrace.xz, lfu
# Use final[1][0][2]
# Code will be modified in case we implement the size thing

print(final)