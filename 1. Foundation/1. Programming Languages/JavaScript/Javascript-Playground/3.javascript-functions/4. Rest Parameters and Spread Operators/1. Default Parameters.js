/** What are Default Parameters?
 * Default parameters are parameters with default/initial value 
 * that if we didn't pass as an argument to the function it will be used instead 
 */


// function with default parameter
function setGender(gender = 'male') {
    console.log(gender);
}

setGender();            // default value will be used
setGender('female');    // passed argument will be used

// Default Parameters comes at the end of the function parameter list
function sayHi(message, name = 'world') {
    console.log(message + ' ' + name);
}

sayHi('Hello');
sayHi('Hi', 'Mohamed');

