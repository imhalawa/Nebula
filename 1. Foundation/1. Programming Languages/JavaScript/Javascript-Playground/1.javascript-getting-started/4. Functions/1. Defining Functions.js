/**
 * Functions is how we encapsulate an algorithm that takes and input and do something or return output.
 * Also Folks use it to elimintae repition in their code, for chunks that's used regularly
 */

// Parameter-less function
function SayHello() {
    console.log("Hello, world");
}
SayHello();

// Function with Parameters
function consoleAlert(message) {
    console.log(message);
}
consoleAlert("It ain't much, but it's an honest work");

// Function that returns a value
function add(num1, num2) {
    return num1 + num2;
}
consoleAlert(add(5, 60));