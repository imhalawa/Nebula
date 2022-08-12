let state = 'FL';
let taxPercent = 0;

if (state === 'FL') {
    taxPercent = 7;
}
else if (state === 'NY') {
    taxPercent = 8.875;
}

console.log(taxPercent);



// It's a best practice to always use code-blocks for reability

let price = 20;
if (price > 10) {
    console.log('true');
} else if (price < 5) {
    console.log('less than 5');
}