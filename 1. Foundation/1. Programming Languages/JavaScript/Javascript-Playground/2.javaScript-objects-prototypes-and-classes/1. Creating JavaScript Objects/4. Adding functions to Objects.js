
// Adding functions to objects
// Functions on objects are called methods
let person = {
    firstName: "Mohamed",
    lastName: "Halawa",
    age: 25,
    isAdult: function () { return this.age >= 18; }
};
console.log(person.isAdult());