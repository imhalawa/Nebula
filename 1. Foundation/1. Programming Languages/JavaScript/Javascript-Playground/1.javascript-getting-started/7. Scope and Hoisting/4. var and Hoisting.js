// Hoisting is the ability to use functions, variables, object before definition step.
// Hoisting breaks the top-down paradigm for JS Interpretation
// So on first scan for the JS, things gets declared (hoisted) e.g. var keyword defined variables, functions


/** MDN Quoted Definition for Hoisting

JavaScript Hoisting refers to the process whereby the interpreter appears to move the declaration of functions, variables or classes to the top of their scope, prior to execution of the code.

*/


productId = 456;
console.log(productId); // you shouldn't be able to use this before definition
var productId = 123;


sayNothing(); // you shouldn't be able to use this before definition as-well!
function sayNothing(){
    console.log('nothing');
}


