/** bind() function
 *  https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/bind
 * 
 *  The bind() method creates a new function that, when called, has its this keyword set to the provided value,
 *  with a given sequence of arguments preceding any provided when the new function is called.
 */

let person1 = {
    name: 'Mary',
    getName: function () {
        return this.name;
    }
};

let person2 = { name: 'John' }; // this doesn't have a getName Method.
let getNameCopy = person1.getName.bind(person2); // will create a copy of getName method binded to person2 context instead of person1
console.log(getNameCopy());