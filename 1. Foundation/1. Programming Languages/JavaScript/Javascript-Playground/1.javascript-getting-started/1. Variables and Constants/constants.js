/** Constants are another way to allocate fixed-value variable in memory 
 * meaning you can only set it once!
 * 
 * mostly used for values that won't change or not allowed to change anywhere in the source-code
 * through the lifetime of the app e.g. PI = 3.14, 
*/

const PI = 3.14;
let circleDiameter = 20;
PI = 3.5; // will raise an error, protects our values from being manipulated
let cirleCircumference = 2 * PI * (circleDiameter/2);

console.log('Circle Circumference: ', cirleCircumference);