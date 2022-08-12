/** ...Rest Parameter (ES6/ES2015)
 *  -----------------------------
 *  https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/rest_parameters
 *  Rest Parameter should come the latter, (last parameter in the list)
 *  It's like c# params keyword, that allows you pass a comma separated arguments then accumulate them into an array
 */

// the following parameter is called REST Parameter, and it's an array
let fun = function (...names) {
    names.forEach(n => console.log('Hi ' + n));
}
fun('mohamed', 'ahmed', 'hamada');


// note that the last parameter here is the rest parameter
let greet = function (message, ...names) {
    console.log(message + ' everyone!');
    names.forEach(name => console.log('Hi ' + name));
}
greet('Welcome', 'Mary', 'John', 'James');