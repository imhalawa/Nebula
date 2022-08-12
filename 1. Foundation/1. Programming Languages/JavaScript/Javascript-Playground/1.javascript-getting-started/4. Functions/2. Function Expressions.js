/**
 * Functions can be stored in a variable, they call Function Expressions
 * 
 * Note: You don't have to give your function expression a name, you can use anonymous functions.
 * But there is an advantage of using names for function expressions. which is, at anypoint you encountered an error 
 * the name can be easily traced in the stack trace.
 * 
 */


let add = function (num1, num2) {
    return num1 + num2;
}
add(4, 5);


// stating at dillema (file_path) at the stack trace, which is the variable name. because it has no name.
let dillema = function () {
    console.log(dil);
    let dil = 'nothing';
}

// stating at dillemaFunction (file_path) at the stack trace, which is the function name.
let dillema2 = function dillemaFunction() {
    console.log(dil);
    let dil = 'nothing';
}

dillema();
dillema2();
dillemaFunction(); // you cannot use named function expression directly, they are not defined at the global object. instead use the variable name.