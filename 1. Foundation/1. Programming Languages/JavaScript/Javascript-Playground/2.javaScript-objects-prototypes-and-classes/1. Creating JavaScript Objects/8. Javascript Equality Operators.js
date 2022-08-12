/** Javascript has 3 ways to check for equality
 * 1. using == operator => Should be avoided. Useful only in rare cases.
 * 2. using === operator => Most Common. Should be used in almost all cases.
 * 3. using Object.is(obj1,obj2) function => Less common. Like === except for a few mathematical differences.
 */

/** Why avoid == operator ?
 * 1. Not type-safe
 * 
 * --------- (Weird cases that evaluates to true) -------------------
 * 2. '42' == 42 -> true (which is not)
 * 3. 0 == false
 * 4. null == undefined
 * 5. "" == 0
 * 6. [1,2] = "1,2"
 */

/**  ===
 * 1. type-safe
 * 2. Convenient / Concise
 * 3. (Drawback) NaN (or equivalent expressions) not equal to NaN
 * 4. +0 equals -0
 */

/**  Object.is(obj1,obj2)
 * 1. type-safe
 * 2. Verbose
 * 3. NaN equals to NaN
 * 4. +0 does not equal -0
 */


// Note: whenever we try to compare objects, we actually compare memory addresses. that why they would evaluate to false.


let person = {
    firstName: "Mohamed",
    lastName: "Halawa",
    age: 25,
    isAdult: function () { return this.age >= 18; },
    getName() { return this.firstName + ' ' + this.lastName } // Object Literal Method Declaration
};

let person1 = {
    firstName: "Mohamed",
    lastName: "Halawa",
    age: 25,
    isAdult: function () { return this.age >= 18; },
    getName() { return this.firstName + ' ' + this.lastName } // Object Literal Method Declaration
};


console.log(person == person1);
console.log(person === person1);
console.log(Object.is(person, person1));


person = person1; // unifying the object's reference

console.log(person == person1);
console.log(person === person1);
console.log(Object.is(person, person1));