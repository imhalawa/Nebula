/** Writable attribute
 * Defines whether the property's value can be changed after initialization or not.
 */


let person = {
    firstName: 'Mohamed',
    lastName: 'Halawa',
    age: 25
};

// Change Property Attribute, set writable to false
Object.defineProperty(person, "firstName", { writable: false });

// check object's property attributes
console.log(Object.getOwnPropertyDescriptor(person, "firstName"));

person.firstName = "Ahmed"; // did nothing because it's not writable
console.log(person);


// Non-Writable Objects won't prevent overriding values of properties within



let person1 = {
    name: {

        firstName: 'Mohamed',
        lastName: 'Halawa'
    },
    age: 25
};


Object.defineProperty(person1, "name", { writable: false });
console.log(Object.getOwnPropertyDescriptor(person1, "name"));

person1.name.firstName = "Ahmed"; // you can change inner properties

// but you cannot change the name property value itself
person1.name = {
    firstName: "Ahmed",
    lastName: "Sayed"
}
console.log(person1);

// However you can prevent changing any of the name object properties 
// using Object.freeze(...)


Object.freeze(person1.name);
person1.name.firstName = "Eid Sa3eed"; // did nothing as expected
console.log(person1);