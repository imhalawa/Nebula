/****** Function
 * A Function is a block of organized, reusable code that is used to perform a single, related action.
 * 
 ****** Argument
 * An argument is a value that we pass to the function when we invoke it. 
 * 
 ****** Parameter
 * A parameter is a variable that we list as part of a function definition.
 * 
 */

// define a function
function greeting(name) {
    console.log('Hello', name);
}
// call a function
greeting('Mohamed');

// function that return a value
function add(num1, num2) {
    return num1 + num2;
}
console.log(add(2, 3));

// Arguments Object: arguments
// by default parameter less function takes args [] array as an argument
// these args could be accessed via the arguments Object
function printAll() {
    for (let arg of arguments) {
        console.log(arg);
    }

    // or 

    for (let i = 0; i < arguments.length; i++) {
        console.log(arguments[i]);
    }
}
printAll(1, 2, 3, 4, 5, 6);