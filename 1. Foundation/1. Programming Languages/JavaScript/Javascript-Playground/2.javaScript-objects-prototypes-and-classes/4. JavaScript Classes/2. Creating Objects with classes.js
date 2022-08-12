class Person {
    // A special function for classes
    constructor(firstName, lastName, age) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.age = age;

        // not all properties should be passed to the constructor
        this.gender = 'male';
    }
}

let mohamed = new Person('Mohamed', 'Halawa');
console.log(mohamed);