// Create Object from an existing one
// or Merge properties of two objects together
// for that we use, Object.assign(target,source)

// Rule: a function should never mutate an object that being passed to it.

let person1 = {
    firstName: "Mohamed",
    lastName: "Halawa",
    age: 25,
    isAdult: function () { return this.age >= 18; },
    getName() { return this.firstName + ' ' + this.lastName } // Object Literal Method Declaration
};

let person2 = {};

Object.assign(person2, person1); // copy properties from person1 to person2

console.log(person2);

console.log(person1 === person2);

// merging two objects
let healthStates = {
    height: 68,
    weight: 150
};
Object.assign(person1, healthStates); // merge healthStates properties into person1 object

console.log(person1);

// Side-effect of Object.assign()

// Assume that we have this function for merging properties
function mergeHealthStats(person, healthStats) {
    return Object.assign(person, healthStats);
}


let mergedObject = mergeHealthStats(person2, healthStates); // the symptom is here: person1 got mutated as well, which was not supposed to happen
console.log(mergedObject);
console.log(person2);