/** Block Scope
 * was Introduced in es6/es2015.
 * any snippet of code that's surrounded with a curly braces is a block.
 * each block has a scope, that scope defines the lifetime of variables/objects declared within it.
 * ------------- NOTE
 * variable/objects/functions declared with `var` keyword do not have a block-scope, that's because of hoisting nature of var.
 */

let key = 123;

function isAdult(age) {
    // None Accessible code-block
    {
        // preparing few-things
        let salt = 356;
        let secret = salt * key;
        var secret2 = salt * key;
        console.log('posted secret ' + secret + ' to the server');
        console.log('verified!');
    }

    let decision;
    if (age > 18) {
        decision = true;
    } else {
        decision = false;
    }

    console.log(`Decision: ${decision}`);
    // console.log(secret);  // ReferenceError: secret is not defined
    console.log(secret2); // Will pass, because var defined variables are not tied to the block-scope -> they are global

    return decision;
}

isAdult(35);