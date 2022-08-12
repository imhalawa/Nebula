// slice() creates a brand new array that's based upon some slice of an original array
// splice() is used to insert or delete element somewhere within the array, not just the beginning or the end.

// Setup
const values = ['a','b','c','d','e'];


// slice()
const triAlpha = values.slice(0,3);
console.log(triAlpha);

// note that the original array will remain the same
console.log(values);

// splice(): Delete element at position 1 (2nd element in an array)
var deletedItem = values.splice(1,1);
console.log(deletedItem); // 'b'
console.log(values); // 'a','c','d','e'

// splice(): Insert Deleted item again at position 1
values.splice(1,0,deletedItem[0]); // 0 indicates don't delete
console.log(values);