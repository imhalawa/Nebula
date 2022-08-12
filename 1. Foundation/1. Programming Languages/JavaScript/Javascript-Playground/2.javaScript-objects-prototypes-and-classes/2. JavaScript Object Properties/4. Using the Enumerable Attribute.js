/** Enumerable attribute enables or disabled enumeration of the property in multiple places
 * 
 * 1. for (let prop in object)
 * 2. Object.keys(obj)
 * 3. JSON.stringfy(obj)
 */



let person1 = {
    firstName: 'Mohamed',
    lastName: 'Halawa',
    age: 25,
    loginStatus: 'logged in at 05:00 am'
};

let targetPropertyName = 'loginStatus';

// Disable the Enumerable for loginStatus
Object.defineProperty(person1, targetPropertyName, { enumerable: false });

console.log('NOTE the absence of ', targetPropertyName)


// 1. for (let prop in obj)
console.log('1. for (let prop in obj)....')
for (let prop in person1) {
    console.log(prop);
}


// 2. Object.Keys(obj)
console.log('2. Object.Keys(obj) ....')
console.log(Object.keys(person1));


// 3. JSON.stringfy(obj)
console.log('3. JSON.stringfy(obj) ....')
console.log(JSON.stringify(person1));