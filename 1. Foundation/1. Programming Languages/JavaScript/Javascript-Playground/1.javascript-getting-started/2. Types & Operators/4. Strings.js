let message = 'Hello, World';
let qoute = "He said and i qoute \"Hi, John\" ";
console.log(message);
console.log(qoute);

/** Backtick Character ` `
 * String Interpolation
 * Multiline string
 * Use to create templates
 */
let firstName = "Mohamed";
console.log(`Hello, ${firstName}`);

let sender ="mohamedalihalawa@hotmail.com";
let reciever = "mohamed.halawa@cegedim.com";
let recieverName="Mohamed Halawa";
let title = "Confimation on nothing!";
let body ="I did what you've requested";
let signature = `BR,
Mohamed Halawa
Software Engineer @ Cegedim
`

let emailTemplate=`
FROM: ${sender}
TO: ${reciever}
TITLE: ${title}
--------------------------------------------
Hi, ${recieverName}

${body}

${signature}
`

console.log(emailTemplate);
