/** Object Literal Method Declaration syntax is exclusive to Object Literals
 *  Cannot be used within classes
 * 
 */


let person = {
    firstName: "Mohamed",
    lastName: "Halawa",
    age: 25,
    isAdult: function () { return this.age >= 18; },
    getName() { return this.firstName + ' ' + this.lastName } // Object Literal Method Declaration
};
console.log(person.isAdult());
console.log(person.getName());