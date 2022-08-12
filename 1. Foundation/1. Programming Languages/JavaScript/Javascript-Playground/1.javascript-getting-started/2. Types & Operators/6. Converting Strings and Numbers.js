
// Convert a number to a string
let amount = 123;
amount = amount.toString();
console.log(typeof amount);

// Convert a string to a number
// Will work only if we had a valid Number Literal (Integer or float) 

let amountStr = "123.12";
let amountNumber = Number.parseFloat(amountStr);
console.log(typeof amountNumber);

// Will fail if the string is not convertible to a Number(integer or a float)
amountStr = "A"+amountStr; // adding arbitrary character to make inconvertible
console.log(Number.parseFloat(amountStr)); // and NaN means not a number
console.log(typeof Number.parseFloat(amountStr)); // But NaN is a number type itself

amountStr = amountStr.substring(1,amountStr.length)+"A"; // 123.12A
amountNumber = Number.parseFloat(amountStr);
console.log(Number.parseFloat(amountStr)); // Will be converted successfully, the letter at the end will be trimmed
console.log(typeof Number.parseFloat(amountStr));

// Rule: In order for a string literal to be convertible to a number it has to include the targeted number at the beginning, JS will trim any trailing characters.
