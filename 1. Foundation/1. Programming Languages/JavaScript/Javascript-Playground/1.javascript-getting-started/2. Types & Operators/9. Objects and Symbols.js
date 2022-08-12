// Objects
// USE JSON (Javascript Object-Notation) to create an object
let person = {
    firstName: "Mohamed",
    lastName: "Halawa",
    birthDate: Date.now().toLocaleString(),
    getAge: function (){
        console.log(2022- 1996)
    }
};

console.log(typeof person);
console.log(person);
person.getAge();

// Symbols -> are used to create as a properties in objects in order to create a private members in an object 