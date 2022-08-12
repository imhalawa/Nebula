let person1 = {
    firstName: 'Mohamed',
    lastName: 'Halawa',
    age: 25,
    loginStatus: 'logged in at 05:00 am'
};

// Create a Getter for the above object
// Create a Setter for firstName and lastName
Object.defineProperty(person1, 'fullName', {
    get: function () {
        return this.firstName + ' ' + this.lastName;
    },
    set: function (value) {
        let nameParts = value.split(' ');
        this.firstName = nameParts[0];
        this.lastName = nameParts[1];
    }
});

console.log(person1.fullName);
person1.fullName = "Sayed Hamada";
console.log(person1.fullName);
console.log(person1.firstName);
console.log(person1.lastName);

