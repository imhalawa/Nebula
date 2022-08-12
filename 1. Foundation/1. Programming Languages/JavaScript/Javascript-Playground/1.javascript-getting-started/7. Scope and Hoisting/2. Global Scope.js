/** In Javascript there are two scopes
 * Global Scope -> it depends on the context where you run your script.
 * for example, if you ran it within a browser -> your global scope will be within the Window Object
 * --------------------------------------------------------------------------------------------------
 * Function Scope => anything that's defined within a function
 */

// Global Scope vars, functions and objects are child's of the Window Object within a browser.
let app = {
    state: {
        cart: 4,
    },
    cookie: "nothing here"
};


console.log(app.cookie);


// Global Scope vars can be used within functions

let productName = "32 inch screen";

// this is called IIFE (Immediately Invoked Function Expression)
// https://developer.mozilla.org/en-US/docs/Glossary/IIFE
(function getProductName() {
    console.log(productName);
})();