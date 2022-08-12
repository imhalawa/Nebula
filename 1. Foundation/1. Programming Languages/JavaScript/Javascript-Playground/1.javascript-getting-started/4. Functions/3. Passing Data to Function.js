let customAlert = function (message, firstName) {
    console.log(`${message}, ${firstName}`);
}

customAlert("Hi", "Mohamed");
customAlert("Hi");


// Required Parameters & Optional Parameters
let showPersona = function (firstName, lastName, gender) {
    // Required Parameters
    if (firstName === undefined || lastName === undefined)
        throw `missing required parameters firstname, lastname`;

    // Optional Parameters, with default value
    if (gender === undefined) {
        gender = 'male';
    }

    // Function Logic

    let welcomeMessage = `Hi ${gender === 'male' ? 'Mr' : 'Ms'} ${firstName} ${lastName}`;
    console.log(welcomeMessage);
}


// showPersona();
// showPersona('Mohamed');
showPersona('Mohamed', 'Halawa'); // success
showPersona('Anne', 'John', 'female'); // sucess


