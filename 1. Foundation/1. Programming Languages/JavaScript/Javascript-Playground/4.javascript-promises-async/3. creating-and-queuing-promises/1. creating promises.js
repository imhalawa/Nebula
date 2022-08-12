/** when you think about creating promises, you need to consider the 3 states
 * 1. Pending -> a pending promise is a promise that has not yet settled.
 * 2. Fulfilled
 * 3. Rejected
 * 
 */


// Once you setup a promise, it's in the pending state.
// Also it's eagerly executed, that means it will get executed immediately on the setup phase.
let samplePromise = new Promise();