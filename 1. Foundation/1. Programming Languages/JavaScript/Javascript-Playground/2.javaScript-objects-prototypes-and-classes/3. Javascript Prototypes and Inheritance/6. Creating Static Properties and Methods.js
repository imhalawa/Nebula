function Person(firstName, lastName, age) {
    this.firstName = firstName;
    this.lastName = lastName;
    this.age = age;
    Object.defineProperty(Person, 'fullName', {
        enumerable: true,
        get: function () {
            return this.firstName + ' ' + this.lastName;
        }
    })
}

function Student(firstName, lastName, age) {
    Person.call(this, firstName, lastName, age);
    this.enrolledCourses = [];
    this.enroll = function (courseId) {
        this.enrolledCourses.push(courseId);
    }
    this.getCourses = function () { };
}

Student.prototype = Object.create(Person.prototype);
Student.prototype.constructor = Student;
Student.fromPerson = function (person) {
    return new Student(person.firstName, person.lastName, person.age);
}

let mohamed = new Student('Mohamed', 'Halawa', 25);

console.log(mohamed);
console.log(mohamed.__proto__);
console.log(mohamed.__proto__.__proto__);

