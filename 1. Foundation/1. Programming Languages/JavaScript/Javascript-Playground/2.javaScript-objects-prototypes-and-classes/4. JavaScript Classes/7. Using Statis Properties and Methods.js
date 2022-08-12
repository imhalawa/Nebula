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
// Change Prototype Definition for classes
Object.defineProperty(Person.prototype, 'fullName', { enumerable: true });

// Inheritance using extends keyword and super keyword
class Student extends Person {
    constructor(firstName, lastName, age) {
        super(firstName, lastName, age);
        this.enrolledCourses = [];

    }

    enroll(courseId) {
        this.enrolledCourses.push(courseId);
    }

    getCourses() {
        return this.enrolledCourses.join(', ');
    }


    static fromPerson(person) {
        return new Student(person.firstName, person.lastName, person.age);
    }

}










let mohamed = new Person('Mohamed', 'Halawa');
console.log(mohamed);

console.log(mohamed.fullName);

mohamed.fullName = "Mohamed Ali";
console.log(mohamed.lastName);

console.log(mohamed.isAdult());


let ahmed = new Student('Ahmed', 'Halawa', 28);
let mohamedStudent = Student.fromPerson(mohamed);
console.log(ahmed);
console.log(mohamedStudent);