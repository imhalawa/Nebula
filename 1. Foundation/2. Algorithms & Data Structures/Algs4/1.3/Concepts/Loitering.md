---
title: "Loitering"
output: pdf_document
---

# Loitering

Java’s garbage collection policy is to reclaim the memory associated with any objects that can no longer be accessed, **For Example**:

- In our `pop()` implementations, the reference to the popped item remains in the array.
    
    > The item is effectively an orphan—it will be never be accessed again


The Java garbage collector has no way to know this ==until it is overwritten==.  Even when the client is done with the item, the reference in the array may keep it alive.

This condition (==holding a reference to an item that is no longer needed==) is known as loitering. 

thus overwriting the unused reference and making it possible for the system to reclaim the memory associated with the popped item when the client is finished with it.

