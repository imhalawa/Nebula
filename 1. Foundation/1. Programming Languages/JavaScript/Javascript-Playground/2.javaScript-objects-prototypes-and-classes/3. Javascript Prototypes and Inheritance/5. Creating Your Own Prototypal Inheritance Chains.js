// AKA Inheritance in Javascript via Prototypes

// Base Constructor Function
function Person(firstName, lastName, age) {
    this.firstName = firstName;
    this.lastName = lastName;
    this.age = age;

    // Define Getter
    Object.defineProperty(Person, 'fullName', {
        enumerable: true,
        get: function () {
            return this.firstName + ' ' + this.lastName;
        }
    })
}


// Sub-type: With same constructor function signature
// Mission: Let Student inherit from the Person constructor function
function Student(firstName, lastName, age) {
    // 3. Call Person Constructor function on the current this context
    Person.call(this, firstName, lastName, age);

    this.enrolledCourses = [];

    this.enroll = function (courseId) {
        this.enrolledCourses.push(courseId);
    }

    this.getCourses = function () {

    };
}

// To do inheritance the following two lines are needed

// 1. Set the Prototype of Sub-type(Student) to Base-Type(Person) Prototype
// Why are we using Object.create instead of new keyword?
// A\ That's because if we used the new keyword, it will execute the Person constructor function 
// Which is not the intended behavior, we don't wanna call that Person Constructor function until we actually creating a Student
// So, Instead we will create a new Javascript Object with Person.prototype as it's prototype
// And then we set that Object as Student's prototype
console.log(Student.prototype.constructor);
Student.prototype = Object.create(Person.prototype);

// 2. Change the prototype constructor to be Student constructor function itself instead of Person
// Explanation: each prototype has a constructor property that points to the function that was used to create it
// So we are mainly resetting the prototype
console.log(Student.prototype.constructor);
Student.prototype.constructor = Student;

console.log(Student.prototype.constructor);



let mohamed = new Student('Mohamed', 'Halawa', 25);

console.log(mohamed);
console.log(mohamed.__proto__);
console.log(mohamed.__proto__.__proto__);

