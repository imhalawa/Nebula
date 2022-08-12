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

console.log(mohamed.age); // retrieves the old value of 25
console.log(tasneem.age); // retrieves the old value of 25

// double-check the prototype object
console.log(Person.prototype);

// if i created a new object kris, depending on that constructor function
let kris = new Person('Sayed', 'Hamada');
console.log(kris.age); // it's 18 !!

// Q, if we are pointing to the same prototype object, why isn't get update?
// A\ It didn't update because we've actually created a new Object (using the JS Object Literal), that's totally different from the one
// that the previous two objects are pointing to, so different addresses in memory now for the old prototype object
// and the new prototype object. {age:18}
