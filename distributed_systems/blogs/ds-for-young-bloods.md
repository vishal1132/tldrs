* Distributed Systems are different because they fail often-
    
    It's not latency, it's the probability of failure and worse, the probability of partial failure. **Network systems fail more than the systems on a single machine.** The partial failures are much harder to reason about. **Design for failure.**

* Writing robus distributed systems cost more than writing robust single machine softwares.

    Some failures can only be visible once you surpass a certain size or other physical constraints. Failure conditions are difficult to replicate on a single machine.

* Coordination is *very* hard.

    Avoid coordinating machines wherever possible. The real trick of horizontal scalability is independence, keeping communication and consensus between the machines to a minimum.

* If a problem can fit in memory, it's probably trivial.

    Processing data is easier/faster when it's just a few dereferences away rather than a few switches away.

* The hardest problem to debug is- it's slow.


* Find ways to be partially available

    Return some results even when parts of your system are failing(note: You cannot tolerate total system fault, that's a failure.) You can not tolerate the faults you haven't anticipated. So, design with keeping in mind what faults you want to tolerate.

* Metrics are your best friends

    
