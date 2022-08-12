// Setup
function Person(firstName, lastName) {
    this.firstName = firstName;
    this.lastName = lastName;
}

Person.prototype.age = 25;

let mohamed = new Person('Mohamed', 'Halawa');
let tasneem = new Person('Tasneem', 'Ahmed');

Person.prototype = { age: 18 };

// Playground

// Instances's Prototype also has a Prototype
console.log(mohamed.__proto__);

// this is the prototype of the constructor function that created the Prototype Instance for our Person constructor function
// which in this case is the Object() constructor function.
console.log(mohamed.__proto__.__proto__);

// this is null because, Object() constructor function is the base object for all objects in Javascript 
// So itself has no Prototype instance assigned to It's Prototype property
console.log(mohamed.__proto__.__proto__.__proto__); // null -> now you hit with Object() prototype


// What if i tried to change the Prototype of Object() constructor function so that it has instance of itself 

// Asserting that Object.Prototype is writable
Object.defineProperty(Object, 'prototype', { writable: true,configurable:true });
console.log(Object.getOwnPropertyDescriptor(Object, 'prototype')); // set to false by default

// // Doing the madness 
// Object.prototype = new Object();
// let multiverse = new Person();

// // then checked the prototype again
// console.log(multiverse.__proto__);
// console.log(multiverse.__proto__.__proto__);
// console.log(multiverse.__proto__.__proto__.__proto__); 