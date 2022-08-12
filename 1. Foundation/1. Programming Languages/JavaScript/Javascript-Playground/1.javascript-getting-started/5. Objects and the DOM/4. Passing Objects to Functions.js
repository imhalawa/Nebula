
let person = {
    name: "John",
    age: 32,
    partTime: false,
    toString: function () {
        console.log(`Name: ${this.name}, Age: ${this.age}, IsPartTime: ${this.partTime}`);
    },
};

// Passing by Reference: provides the ability to change object's actual value
let incrementAge = function (person) {
    // the parameter itself is a reference for the object
    person.age++;
}
incrementAge(person);
person.toString();



// Passing by value won't affect the original value
let setAge = function (prop, value) {
    prop = value;
}
setAge(person.age,35); // no changes happended to 
person.toString();

/** Note: Javascript always pass by value, but in the Object case the value is the reference of the object.
 * https://stackoverflow.com/questions/518000/is-javascript-a-pass-by-reference-or-pass-by-value-language
 * 
 * 
 */