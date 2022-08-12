/** The Difference between === and == 
 * - === will check for both the value literal and it's type.
 * - == will check for value, convertible value ignoring the type.
*/


if (1 === "1") {
    console.log('true');
}
else {
    console.log('false');
}

// JS will convert the number 1 into a string "1" then compare
if (1 == "1") {
    console.log('true');
}
else {
    console.log('false');
}