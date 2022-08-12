/** What is a Prototype?
 * 
 * a prototype is an object that exists on every function in javascript
 * 
 * ------------------------
 * 
 * A Function's Prototype is the object instance that will become the prototype for objects created using this function as a constructor function.
 * 
 * ---------------------------
 * 
 * An Object's prototype is the object instance from which the object is inherited.
 * 
 * --------
 * A prototype in general is actually an instance of an object in memory, 
 * so when a function is created a new prototype is created in memory and attached to the function behind the scenes.
 * 
 * If that function then used as a constructor function with the new keyword, 
 * the new object will have a __proto__ property that's pointing to the same object in memory (the function's prototype)
 * 
 */

// Every function in javascript has a prototype property
let func = function () { };
console.log(func.prototype);

// Objects has a prototype, but they don't have a prototype property
let person = {
    firstName: "Mohamed Halawa"
};
console.log(person.prototype); // undefined

// but you can access Object's prototype in a different way using __proto__
console.log(person.__proto__); // which is an empty object, for now

// Object's Prototype is pointing to the same constructor function's prototype
function Human(name){
    this.name = name;
}

// Setting the Function's prototype
Human.prototype.age = 25; // will be reflected in all instances created via Human Constructor function

let patient = new Human("Maged");

// Setting the Object's prototype
// will override constructor function's prototype
// Note: changing the prototype of an instance of a constructor function will reflect for all objects been created via that function.
patient.__proto__.age = 35; 

console.log(Human.prototype);
console.log(patient.__proto__);
console.log(Human.prototype === patient.__proto__); // Assert they are the same object (instance).





