// Symbols: are used to hide information within object
// Symbol will be accessible only from where it was defined at the first place.
let mySymbol = Symbol();


//Object with Properties
let person = {
    name: "John",
    age: 32,
    partTime: false,
    [mySymbol]: 'secretInformation'
};


// Accessing properties: using dot notation <obj.property>
console.log(person.name);

// Accessing properties: using Indexer <object['propName']>
console.log(person['age']);
console.log('Works as part-time', person['partTime']);

// Overriding object values
person.name = 'Mohamed';
console.log(person['name']);