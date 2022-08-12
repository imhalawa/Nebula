/** Configurable Property Attribute Disables/Enables the PropertyDescriptor themselves from being changed.
 */


let person1 = {
    firstName: 'Mohamed',
    lastName: 'Halawa',
    age: 25,
    loginStatus: 'logged in at 05:00 am'
};

let targetPropertyName = 'loginStatus';

// Disable configurable attribute
Object.defineProperty(person1, targetPropertyName, { configurable: false }); 


// Attempt to disable enumerable attribute
// will fail, throws exception
// Object.defineProperty(person1, targetPropertyName, { enumerable: false }); 

// FunFact: Once you disable configurable attribute, you cannot enable it again 😂
// will fail
// Object.defineProperty(person1, targetPropertyName, { configurable: true }); 


// FunFact: you can disable writable however !!
Object.defineProperty(person1, targetPropertyName, { writable: false });
person1[targetPropertyName] = 'logged in at 12:00 am'; // nothing happens here
console.log(person1);


// FunFact: but you cannot re-enable it :3
// Object.defineProperty(person1, targetPropertyName, { writable: true });
// person1[targetPropertyName] = 'logged in at 12:00 am'; // nothing happens here
// console.log(person1);


// Disabling Configurable attribute for a property will prevent deletion of that property from the object
delete person1.loginStatus; // is not effective here
console.log(person1);
