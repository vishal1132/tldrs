## Performance
performance; Premature pessimization is the root of all evil- You dont need to write every line of code to be fast, but neither should by default do wasteful things.

performance; Compilers double in performance every 18 years, which means only 4% improvement every year

performance; computing power increases by 100% every 18 months. which means nearly 60% increment in performance every year.

performance; computing power increases by 100% every 18 months. which means nearly 60% increment in performance every year.

performance; you cannot leverage multicore for serialized part, amdahl's law. 

performance; 0.5 ns to r/w sequential memory of 64 bytes, this is probably the size of your cache line.

performance; 50 ns to r/w random memory of 64 bytes

performance; 25 ns to hash 64 bytes not crypto safe, 2GiB/s throughput and 500 microsecond for 1 MiB

performance; 500 ns for system call 

performance; 1 microsecond for 8 KiB ssd sequential read.

performance; 100 microsecond for 8 KiB ssd random seek.

performance; 10 microsecond for context switch

performance; ensure you have right set of tools set up which give reproducible numbers for benchmark. always benchmark and verify the newer code is faster, if it's not never forget to undo the changes.

performance; even though two algorithms have same asymptotic complexity their constant factor might be different.

performance; Big O of 1 - field access, array or map lookup- don't worry about it, but keep in mind the constant factor.

performance; Big O of log n- binary search. Only a problem when in loop.

performance; Big O of n- simple loop. You are doing this all the time.

performance; Big O of n log n- divide-and-conquer, sorting. Still fairly fast

performance; Big O of n*m- nested loop / quadratic. Be careful and constrain your set sizes

performance; Anything else between quadratic and subexponential. don't run this on a million rows.

performance; Big O of b to power n or Big O of n factorial- exponential and up... good luck if you have more than a dozen or two data points

performance; go compiler uses escape analysis to figure out if the memory needs to live on the heap, -gcflags=-m to see these decisions.

### Optimization

optimization workflow; do you need to do it at all? fastest code is the one that's never run. Is this the best algorithm? Is this the best implementation of the algorithm?

## Functional Programming
FP; write more pure functions and less impure functions.

FP; separate actions into getting data and then calculations

FP; before writing anything complex you create a timeline, on what parts are serial and what parts are parallel. 