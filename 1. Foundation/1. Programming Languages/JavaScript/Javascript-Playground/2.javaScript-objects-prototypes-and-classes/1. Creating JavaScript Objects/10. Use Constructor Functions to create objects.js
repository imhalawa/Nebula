let mohamed = {
    firstName: "Mohamed",
    lastName: "Halawa",
    age: 25,
    isAdult: function () { return this.age >= 18; },
};

let sofia = {
    firstName: "Sofia",
    lastName: "Halawa",
    age: 25,
    isAdult: function () { return this.age >= 18; },
};


// Constructor functions 
// this
function Person(firstName, lastName) {
    this.firstName = firstName;
    this.lastName = lastName;
}


// new keyword will 
// 1. create a new empty javascript object
// 2. sets the context of this to the new object.
// 3. call the constructor function that follows.
// 4. within that function, we are appending props, methods to "this" context which is the new object.
let person = new Person();
console.log(person);

