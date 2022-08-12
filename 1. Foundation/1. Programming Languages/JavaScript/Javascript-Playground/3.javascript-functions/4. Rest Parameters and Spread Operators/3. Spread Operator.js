/** Spread Operator call_func(...arg)
 * -----------------------------------------
 * The opposite of rest parameter
 * Allows a function to take an array as an argument, then spread out its elements so that they can be assigned to individual parameters.
 */

function greet(person1, person2) {
    console.log('Hello', person1, ' and', person2);
}

let names = ['John', 'Marry'];
greet(...names); // Hello John and Mary