function registerUser(fName, lName) {
    let person = {
        firstName: fName,
        lastName: lName
    }
    console.log(person);
}
registerUser('Mohamed', 'Halawa');

function registerUser2(firstName, lastName) {

    // Property shorthand syntax
    let person = {
        firstName, // same as parameter name
        lastName
    }
    console.log(person);
}
registerUser2('Mohamed', 'Halawa');

