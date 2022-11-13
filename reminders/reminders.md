Premature pessimization is the root of all evil- You dont need to write every line of code to be fast, but neither should by default do wasteful things.
write more pure functions and less impure functions.
separate actions into getting data and then calculations
Compilers double in performance every 18 years, which means 4% improvement every year, probably
computing power increases by 100% every 18 months. which means nearly 60% increment in performance every year.
you cannot leverage multicore for serialized part, amdahl's law. 
before writing anything complex you create a timeline, on what parts are serial and what parts are parallel. 

