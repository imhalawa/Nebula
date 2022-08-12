/**
 * Every function has it's own scope, that means that all defined 
 * 1. variables
 * 2. sub-functions
 * 3. objects
 * within a function are only accessible there.
 * 
 * Also it means that they get de-allocated when the function finish execution. (or that's what is supposed to happen)
 * 
 * 
 */


// variable within function
function getSecretCode(value) {
    let code = value * 2;
    return code;
}

let secretCode = getSecretCode(2);
// console.log(code); // not accessible here! (because it's undefined relative to global members)


// Variable outside function
let code_outside;
function getPassCode(value) {
    code_outside = value * 3;
    return code_outside; // ugliest pattern you'd ever use in your career lifetime.
}

let passCode = getPassCode(3);
console.log(code_outside); // it's accessible here, becuase we've defined the variable in a global scope





// Nested Functions

// Important note here: We can define local members that have the same name as the global member
// But it will override the global one within it's scope


let key = 42;
function getSecret(value) {
    let keyGenerator = function () {
        let key = 12;
        console.log('in keyGenerator: ', key);
        return key; // local key varialbe
    }


    let code = value * keyGenerator();
    console.log(' in getSecretCode:', code); // global key variable
    console.log(' in getSecretCode key:', key); // global key variable
    return code;
}

getSecret(1);

