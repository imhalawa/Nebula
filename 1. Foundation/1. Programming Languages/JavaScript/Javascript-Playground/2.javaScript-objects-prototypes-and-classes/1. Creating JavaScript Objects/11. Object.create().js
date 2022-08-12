/** Object.create() is another way to create an object
 * behind the scene, the Object Literal and Constructor function are both using the Object.create() function
 * Object.create() is very Verbose, meaning it would require a detailed specification of an object, which is not efficient in most of the cases.
 */


// Example 
let person = Object.create(
    Object.prototype,
    { // PropertyDescriptorMap
        firstName: { value: 'Jim', enumerable: true, writable: true, configurable: true },
        lastName: { value: 'Jim', enumerable: true, writable: true, configurable: true },
        age: { value: 25, enumerable: true, writable: true, configurable: true },
    }
)


console.log(person);