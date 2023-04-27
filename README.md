# CS230-Project

## Team Memory Mavericks
Hi! This is Param(210050144), Tanmay(210050156) and Harshit(210050062) and we were tasked with analyzing how changing various parameters in the Champsim simulator affects the performance of the trace. We have analysed various metrics (like hit-rates and IPCs) to compare these.

## Running Instructions 
To see all the traces generated at once, you can simply run the ./champsim.sh executable and the results will be generated and saved into the directory ./results/

For separately running each the instructions are as follows:
- Modify cache.h: change the values in line 73 or 74 of cache.h to vary the size of sets and ways (Selecting the cache size)
-  cache.cc modification: cp ./cache_<"policy">.cc ./src/cache.cc (Selecting the cache inclusion policy)
-  Build: ./build_champsim.sh bimodal no no no no <"repl_policy"> 1  (Selecting the replacement policy)
- Run: ./run_champsim.sh  bimodal-no-no-no-no-ship-1core 30 30 <"trace"> (Selecting the trace)

## References
- https://oaktrust.library.tamu.edu/handle/1969.1/166081
- https://en.wikipedia.org/wiki/Cache_inclusion_policy
- https://en.wikipedia.org/wiki/Cache_replacement_policies
- https://chat.openai.com/ 's responses to some of our problems ;)
- https://en.wikipedia.org/wiki/Cache_prefetching
- http://os.inf.tu-dresden.de/papers_ps/manthey-beleg.pdf 