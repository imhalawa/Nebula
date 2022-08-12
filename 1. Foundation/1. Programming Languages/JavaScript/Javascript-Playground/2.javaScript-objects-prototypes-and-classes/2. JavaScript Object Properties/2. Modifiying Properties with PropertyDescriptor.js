/**
 * Every property is more than just a name and a value
 * Every property has a property descriptor that we can use to see the attributes of that property.
 */

 let person = {
    firstName: 'Mohamed',
    lastName: 'Halawa',
    age: 25
};

// Get Property Descriptor
console.log(Object.getOwnPropertyDescriptor(person, "firstName"));

/**
 * value
 * writable
 * enumerable
 * configurable
 */