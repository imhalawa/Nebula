// Javascript is not that accurate when it comes to precision, the following is a common example that exploits that weakness
// We know that the addition result of the following operation should be 2.4 not 2.4000000000000004

let price = 1.1+ 1.3;
console.log(price);

// Unreadable expression
// Comment: however it's the expected result, it's remains a confusing expression
let amount = 20 - -2;
console.log(amount);

let fixAmountReadability = 20 - (-2);
console.log(fixAmountReadability);