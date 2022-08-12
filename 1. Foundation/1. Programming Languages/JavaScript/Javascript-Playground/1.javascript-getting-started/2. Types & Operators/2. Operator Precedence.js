// Operator Precedence Sheet: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Operator_Precedence
// the lower the Precedence Number the lower the Precedence

let price =  3+1*2;
console.log('result: ', price);

// Use Parenthese to override the Precedence, also to make it readable
let totalPrice = (3+1)*2;
console.log("Real Result: ",totalPrice);