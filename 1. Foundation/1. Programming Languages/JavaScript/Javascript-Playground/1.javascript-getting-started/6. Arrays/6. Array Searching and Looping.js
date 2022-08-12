// setup
const values = ['a', 'bbb', 'c', 'dd'];

// indexOf() -> look for index of specific value or object
console.log(values.indexOf('c'));
console.log(values.indexOf('d')); // -1 indicates that it doesn't exist in the array

// filter() -> query the array, ask for items that match certain criteria 
// Note filter() is one of the higher order functions
let set = values.filter(function (item) {
    return item > 'b';
});
console.log(set); // return an array of filtered items


// find() -> query the array, find items that match a criteria, returns first occurrence of a value, stops execution on first occurrence
set = values.find(function (item) {
    return item.length > 1;
})
console.log(set); // first occurrence returned

// forEach() -> iterate over array items, and do something
let receipt = [12, 233, 23, 54];


function applyTax(target) {
    const tax = 0.14;
    target.forEach(function (item, index) {
        target[index] = item + (item * tax);
    });

    return target;
}

receipt = applyTax(receipt);
console.log(receipt);
