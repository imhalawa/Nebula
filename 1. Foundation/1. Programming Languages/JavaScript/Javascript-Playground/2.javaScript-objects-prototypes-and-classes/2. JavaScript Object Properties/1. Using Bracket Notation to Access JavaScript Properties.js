let person = {
    firstName: 'Mohamed',
    lastName: 'Halawa',
    age: 25
};

console.log(person.firstName);  // Dot Notation
console.log(person['lastName']); // Bracket Notation

// Usage of Bracket Notation

// 1. Append Properties with Special Character Names to an Object
// Not a common use-case so, maybe only if you're dealing with a 3rd-party API that return JSON with Invalid Identifiers

person['hair color'] = 'Black';
console.log(person['hair color']);

// Accessing Object's properties programmatically e.g. within a for-loop

let targetProperty = 'name';

let car = {
    name: 'Kia',
    model: 'sportage'
}

let owner = {
    name: 'Mohamed',
    age: 25
}


let pairs = [car, owner];

// log names of all objects within pair
for (let item of pairs) {
    console.log(item[targetProperty]);
}