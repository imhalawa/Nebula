/* 


/** Declaring Variables
 *  Syntax: <keyword> var_name = value;
 */


let age = 25;
let product = 'Hiking Boots';
let discounted = true;


// Declaring multiple variables at once
// not recommended tho, 
let price = 49.99,
    name = 'Hiking boots',
    isDiscounted=false;
    
    
/**  Naming Variables
 * Starts with one of: _ $ letter
 * Followed by Zero or More: _ $ letter number
 * use camelCase to name your variables (PascalCase is not recommended within JS community)
 * $ sign is mostly used for automatically generated code
 * Use Descriptive names
 */


let accountName = "FishCat";

/** Chaning variable values */

let firstName = "Mohamed";
firstName = 'Ahmed';
console.log('Changed to',firstName);



/** Difference between var and let keyword
 * var name = 'someone';
 * 
 * let declared variables are block scoped, or expression scoped on which it's used.
 * var registers the variables either globally, or locally to an entire function regardless of the scope.
 */


// Difference 1: var violates the top-down intepretation of JS Document.

// Will work fine because the way var keyword works is registering all variable before executing any other code.
// However it will be undefined, because the assignation does respect the top-down mechanism.
console.log(defined_later); 
var defined_later = 5;

// Will through an exception, and that's tottaly respecting the top-down flow of the script (Declaration & Assignation)
// Uncaught ReferenceError ReferenceError: Cannot access 'defined_later_let' before initialization
// It's a healthy error message that can help you detect errors as early as possible
console.log(defined_later_let);
let defined_later_let = 5;


