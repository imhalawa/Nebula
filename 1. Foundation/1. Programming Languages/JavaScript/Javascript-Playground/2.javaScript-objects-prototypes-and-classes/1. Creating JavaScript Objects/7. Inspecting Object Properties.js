let person = {
    firstName: "Mohamed",
    lastName: "Halawa",
    age: 25,
    isAdult: function () { return this.age >= 18; },
    getName() { return this.firstName + ' ' + this.lastName } // Object Literal Method Declaration
};

// get all Object's properties and methods Names
let query = Object.keys(person);
console.log(query);

// Enumerate all Object's properties and methods Names
// note that: in keyword will enumerate properties & methods names
for (let propertyName in person) {
    console.log(propertyName);
}

// but of keyword will enumerate their values
// Note Object.values() return an array of all object properties, methods values.
for (let propertyName of Object.values(person)) {
    console.log(propertyName);
}



