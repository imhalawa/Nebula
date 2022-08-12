/** Closures
 * variables and nested functions got out of the scope once the functional block they're contained in completes execution.
 * however, there are cases where we want to hold-on to them even after a function is executed.
 * and ClOSURES allows us to do that
 * 
 * What is so special about Closure? it's just an Object!
 * Well, when the function finish execution. It's supposed to Garbage Collect all references been declared within it.
 * However, by just referencing the functions, vars, objects within the Closure Object, you're still able to recall them 
 * Even after Execution.
 * 
 * But How that happens? if we did a GC, they are not supposed to exist anymore?
 */


// TODO: How Closure works?

// That's How it WON'T WORK
let greeting = (function () {
    // private member
    let message = 'Hello';

    // anonymous function
    let getMessage = function () {
        return message;
    };
})();

// console.log(greeting.message); // undefined


// Closure as an Object
let greetingClosure = (function () {
    // private member
    let firstName = 'Mohamed'
    let lastName = 'Halawa';

    // anonymous function
    let getMessage = function () {
        return `Hello, ${firstName} ${lastName}`;
    };

    // Closure -> exposed members/ public members
    return {
        getMessage: getMessage
    }
})();

console.log(greetingClosure.getMessage()); // undefined


// Closure as a Function
// you're able to return a function that's referencing a variable from the executed function scope.
// also with a totally different context.
function setupCounter(val) {
    return function counter() {
        return val++;
    }
}

let counter1 = setupCounter(0); // will produce a different function and context as well
console.log(counter1());
console.log(counter1());

let counter2 = setupCounter(10); // will produce a different function and context as well
console.log(counter2());
