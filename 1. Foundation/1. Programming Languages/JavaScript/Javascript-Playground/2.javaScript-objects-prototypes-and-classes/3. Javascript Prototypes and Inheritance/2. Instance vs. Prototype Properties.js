function Person(firstName, lastName) {
    this.firstName = firstName;
    this.lastName = lastName;
}

Person.prototype.age = 25;

let mohamed = new Person('Mohamed', 'Halawa');
let tasneem = new Person('Tasneem', 'Ahmed');

console.log(mohamed.age);
console.log(tasneem.age);


console.log('\n--------------------------------------\n');
tasneem.age = 1; // Instance property, will override the prototype property for this object only

// this will retrieve tasneem's age from the instance itself.
console.log(tasneem.age); 

// this will retrieve the age prototype value from the constructor function's prototype (which is shared between all objects)
console.log(tasneem.__proto__.age); 

console.log('\n--------------------------------------\n');
// by removing the age property from tasneem, a question might arise
delete tasneem.age;

// how am i still able to recall the age property via instance e.g. tasneem.age
console.log(tasneem.age);
console.log(tasneem.__proto__.age); 

// the answer is: when you call a property for an object, javascript will start from it's localScope 
// in this case the Instance itself, and if nothing was found matching that name,
// it will research the higher scope (share between all objects created with the constructor function )
// then if a match found, it will be retrieved from the prototype.

console.log('equal?: ',tasneem.age === tasneem.__proto__.age);



// A conclusion from this might be as follows:
// 1. Prototypes can be used to define static-like members that could be shared between all objects 
// been created via the same constructor function, without the need to allocate memory for them with each instance.
