// As mentioned previously, when we call a variable
// JS starts from the lowest level-scope then expand to global scope searching for this variable.
// If not found it will return undefined.


let productId = 889;
function showProductId() {
    let productId = 123;

    function fix() {
        let productId = 45678;
        console.log('in fix:', productId);
    }

    fix();

    console.log('in showProductId:', productId);
}

showProductId();

/** Scopes
 * Global Scope
 *      - productId
 *      - showProductId function Scope:
 *           - productId
 *           - fix function Scope:
 *                  - productId
 */