/** call(context,parameters,...) function
 * https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/call
 * 
 * The call() method calls a function with a given this value and arguments provided individually.
 */


/** Diff between apply() and call() ?
 *  -------------------------------------
 *  apply(context,[arg1,arg2,arg3,...]) -> accepts arguments as an array.
 *  call(context, arg1,arg2,...) -> accepts arguments as a comma separated args.
 */


/** When to use apply() and when to use call()?
 *  ---------------------------------------------
 *  use apply() when the arguments are in form of array, with similar elements.
 *  use call() with individual arguments of varying type.
 */


let person1 = { name: 'John', age: 22 };
let person2 = { name: 'Mary', age: 26 };

let sayHi = function () {
    console.log('Hi, ' + this.name); // default this context is the global Object, which is Window
}

sayHi(); // undefined because the global object doesn't had a definition for name property
sayHi.call(person1); // Change this Context to person1
sayHi.call(person2); // Change this Context to person2



// Changing this context for methods that takes parameters
let mbox = function (message) {
    console.log(message, ', ', this.name);
}

mbox.call(person1, 'Hello'); // Change this Context to person1, pass message as an argument
mbox.call(person2, 'Welcome'); // Change this Context to person2, pass message as an argument

