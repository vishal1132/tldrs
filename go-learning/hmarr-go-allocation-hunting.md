https://hmarr.com/blog/go-allocation-hunting/
Go uses escape analysis to find out whether a particular value should remain on stack or on heap. for example- ```Say a function initialises a struct then returns a pointer to it. If the struct was allocated on the stack, the pointer that’s returned would become invalid as soon as the function returns and the corresponding stack frame is invalidated. In that case the Go compiler would determine that the pointer has “escaped” the function, and move the struct to the heap instead.```
You can see these optimization decisions by passing -m to -gcflags at the time of building.

![[hmarr-go-allocation-hunting.png]]
Here the `r[i]` is on heap. The function was copying the entire Rule out of the slice from heap to stack, then by returning `&rule`  it was creating an escaping pointer to the copy of the struct. This made a little less allocations which in turn made a little less gc time. 