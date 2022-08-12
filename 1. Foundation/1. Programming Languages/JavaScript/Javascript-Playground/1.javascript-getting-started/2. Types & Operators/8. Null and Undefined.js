// null and undefined are special values that represents a specific state of a variable

let isSaved; // declared but it has no value
console.log(isSaved); // will result-in an undefined value;

isSaved = null;
console.log(isSaved);

/** Notes
 * NULL means that the variable would point to non-existing reference in memory  (objects) i.e. point to nothing. which is an object in itself.
 * undefined means that the variable has no value at all
 * undefined also means that the variable has "undefined" type, because it has never been assigned to a value or object.
 *          that would allow the JS engine to detect it's type.
 */


/**
 * there is no intersection between undefined or null
 * undefined is a special type (indicating declared but unassigned variable)
 * null is a special object-type value that's used to clear references.
 */


console.log(typeof null); // will result-in object
console.log(typeof undefined); // will result-in undefined 