/***
 * The first time you encounter a promise, is when they consume another library. e.g. axios
 * 
 * Axios is an abstraction on top of the XMLHttpRequest calls
 * Axios is promise based, you can't use axios without promises.
 */


let promise = new Promise(
    () => {
        // Do Something Incase of Success

    },
    () => {
        // Do Something Incase of Failure

    });

// Consuming Promises
promise.then(() => {
    // Handle the fulfilled state

}).catch((error) => {
    // Handle the Rejected State

}).finally(() => {
    // Do one last thing

});

