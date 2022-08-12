class Person {
    // A special function for classes
    constructor(firstName, lastName, age) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.age = age;
        this.gender = 'male';
    }

     // a getter function: lives in the prototype of the class
     get fullName() {
        return this.firstName + ' ' + this.lastName;
    }

    // a setter function: lives in the prototype of the class
    set fullName(fullName) {
        var nameParts = fullName.split(' ');
        this.firstName = nameParts[0];
        this.lastName = nameParts[1];
    }


    // methods
    isAdult() {
        return this.age > 18 ? true : false;
    }

}

let mohamed = new Person('Mohamed', 'Halawa');
console.log(mohamed);

console.log(mohamed.fullName);

mohamed.fullName = "Mohamed Ali";
console.log(mohamed.lastName);

console.log(mohamed.isAdult());
