/** apply() function
 * https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/apply
 * The apply() method calls a function with a given this value, and arguments provided as an array (or an array-like object).
 */


/** Diff between apply() and call() ?
 *  -------------------------------------
 *  apply(context,[arg1,arg2,arg3,...]) -> accepts arguments as an array.
 *  call(context, arg1,arg2,...) -> accepts arguments as a comma separated args.
 */


/** When to use apply() and when to use call()?
 *  ---------------------------------------------
 *  use apply() when the arguments are in form of array, with similar elements.
 *  use call() with individual arguments of varying type.
 */

function introduction(name, profession) {
    console.log('My name is ' + name + ` and I am a ` + profession + '.');
    console.log(this);
}


introduction('John', 'student');
introduction.apply(undefined, ['Mary', 'Lawyer']);
introduction.apply(undefined, ['James', 'artist']);