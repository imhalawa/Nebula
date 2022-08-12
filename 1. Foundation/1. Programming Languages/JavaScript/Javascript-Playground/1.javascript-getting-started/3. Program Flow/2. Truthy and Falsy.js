/** Falsy
 * - false
 * - 0
 * - "" or '' or `` =>  empty string
 * - null
 * - undefined
 * - NaN
 */

/** Truthy
 * - anything else that's not falsy value
 */


// will pass because it's not an empty string
if ("0") {
    console.log(true);
}

if(!""){
    console.log("Yes, It's inversion of an empty string");
}

if (1.1 + 1.3 !== 2.4) {
    console.log("That's madness!");
}

// fixing this
// note: the + sign will convert the string to it's equivalent number. i.e. +"2.4" => 2.4 
if (+(1.1 + 1.3).toFixed(2) === 2.4) {
    console.log("No More Madness");
}
