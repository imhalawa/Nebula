// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date

// results from below code are highly machine dependent

let date = new Date(1000);
console.log(date.toString());

// Browsers will handle this in a different way
let dateFromDateTime = new Date('2050-03-25T13:01:30Z');
console.log(dateFromDateTime.toString());

// Browsers will handle this in a different way
let dateFromDateTime2 = new Date(2050,3,25,13,1,30,50);
console.log(dateFromDateTime2.toString());