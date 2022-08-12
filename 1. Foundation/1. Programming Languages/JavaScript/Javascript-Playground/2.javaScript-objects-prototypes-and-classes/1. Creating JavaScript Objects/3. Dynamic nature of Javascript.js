/** 
 * JavaScript Dynamic nature allows us to create objects on the fly,
 * Even more, append new properties to objects while they doesn't exist
 */


let person = {
    firstName: "Mohamed",
    lastName: "Halawa"
};

// Appending properties to existing object
person.age = 25;

console.log(person.age);