/** Concatenation */
let message ='Hello';
message = message + ' World';
console.log(message);


/** Force Lower Case */
message = message.toLowerCase();
console.log(message);

// or UpperCase
message = message.toUpperCase();

/** SubString */
message=message.substring(0,5);
console.log(message);

/** Use String Properties e.g. Length (Get Characters in a  string) */
console.log(message.length);

/** Automatic Conversion */
let ageStr = "25";
console.log(ageStr + 2); // will convert the number to a string and concatenate

