/** Promise
 * ----------------------------------
 * https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise
 * Object that represents the eventual completion (or failure) of an asynchronous operation, and its resulting value.
 * 
 * Eventual completion means that we might have a result, or not, or might be available in the future.
 * 
 * Benefits
 * ----
 * 1. Readable asynchronous code
 * 
 * Promises are not Lazy, it's eagerly evaluated 
 */


/** Promise States
 * 1. [Pending] (is happening/ still in progress) -> the initial state, once you create a promise it's in the pending state.
 * 2. [Fulfilled] (completed successfully) -> the promise is moved from the pending state to [Fulfilled] state when it's completed successfully.
 *                - when a promise is [Fulfilled] it will return a single value.
 * 
 * 3. [Rejected] (call has failed) -> the promise is moved from a [Pending] status to [Rejected] when the asynchronous call has failed.
 *                - when a promise is rejected, it will return a reason why it was rejected.
 *                - similar to the catch function, and the try catch block.
 * 
 * (Common Term) [Settled] / [Resolved] -> it means that the promise is either [Fulfilled] or [Rejected]
 */

