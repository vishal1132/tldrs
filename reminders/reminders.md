performance; Premature pessimization is the root of all evil- You dont need to write every line of code to be fast, but neither should by default do wasteful things.
FP; write more pure functions and less impure functions.
FP; separate actions into getting data and then calculations
performance; Compilers double in performance every 18 years, which means only 4% improvement every year
performance; computing power increases by 100% every 18 months. which means nearly 60% increment in performance every year.
performance; you cannot leverage multicore for serialized part, amdahl's law. 
FP; before writing anything complex you create a timeline, on what parts are serial and what parts are parallel. 
performance; 0.5 ns to r/w sequential memory of 64 bytes, this is probably the size of your cache line.
performance; 50 ns to r/w random memory of 64 bytes
performance; 25 ns to hash 64 bytes not crypto safe, 2GiB/s throughput and 500 microsecond for 1 MiB
performance; 500 ns for system call 
performance; 1 microsecond for 8 KiB ssd sequential read.
performance; 100 microsecond for 8 KiB ssd random seek.
performance; 10 microsecond for context switch
optimization workflow; do you need to do it at all? fastest code is the one that's never run. Is this the best algorithm? Is this the best implementation of the algorithm?
performance; ensure you have right set of tools set up which give reproducible numbers for benchmark. always benchmark and verify the newer code is faster, if it's not never forget to undo the changes.