// Deleting a property from an object
let person1 = {
    firstName: 'Mohamed',
    lastName: 'Halawa',
    age: 25,
    loginStatus: 'logged in at 05:00 am'
};

delete person1.loginStatus;
console.log(person1);
