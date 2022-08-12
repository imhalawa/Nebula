// push(arg) -> add items to the end of the array
const values = ['a', 'b', 'c'];
values.push('d');
console.log(values); // a b c d


// pop() -> retrieve items from the end of the array
const last = values.pop();
console.log(last);

// shift() -> shifting the entire array by one element to the left, returning the first element as a result
const first = values.shift();
console.log(first);

// unshift(arg) -> add items to the beginning of the array
values.unshift(first);
console.log(values);