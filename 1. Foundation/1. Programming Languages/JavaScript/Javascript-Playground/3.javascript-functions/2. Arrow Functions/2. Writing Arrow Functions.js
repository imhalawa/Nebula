// Regular Function
let greetings = function () {
    return 'Hello,World';
}

let message = greetings();
console.log(message);


// Arrow functions equivalent
let greetingArrow = () => 'Hello,World';
let messageArrow = greetingArrow();
console.log(messageArrow);


// Regular Function with Parameter
let greet = function greetings(name) {
    return `Hello, ${name}`;
}
console.log(greet('Mohamed'));

// Arrow function equivalent
let greetArrow = (name) => `Hello, ${name}`;
console.log(greetArrow('Mohamed'));