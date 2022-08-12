/** This Keyword
 * this refers to the current executing object.
 * https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/this
 * in a GlobalContext, this would refer to the global object, which is Window for Browsers Context
 * 
 * --------------------
 * Arrow functions do not have their own `this` value, rather the this value is retained from the enclosing scope.
 */

// this object of global context => empty object 
console.log(this);
let that = this;

// Appending name property to the GlobalContext
this.name = "GlobalContextNameProperty";

// Object literal 
let message = {
    name: 'Mohamed',
    regularFunction: function () {
        console.log("------- Reg Func -------");
        console.log(this);
        console.log('Hello ' + this.name);
        console.log('is it globalContext? ' + (this === that)); // false
    },
    arrowFunction: () => {
        console.log("------- Arrow Func -------");
        console.log('Hi ' + this.name)

        // "Proof: this value is retained from the enclosing scope"
        // Enclosing Context => The Closest Higher-level Scope. e.g. Enclosing Blocks, GlobalContext, .. 
        console.log('is it globalContext? ' + (this === that)); // true
    } // this.name -> evaluates to undefined
};

message.regularFunction();
message.arrowFunction();
