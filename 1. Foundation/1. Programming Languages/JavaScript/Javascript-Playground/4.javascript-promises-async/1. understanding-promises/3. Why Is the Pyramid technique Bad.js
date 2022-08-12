/*** why is the pyramid technique bad?
 * 
 * Callback of Doom
 * A common problem that arises when a program uses many levels of nested indentation to control access to a function.
 * https://en.wikipedia.org/wiki/Pyramid_of_doom_(programming)
 * Z <-- Depends On -- Y --- Depends On -- X --- ... --- A
 * 
 * Why is it a Pyramid of Doom? i.e. Why it bad?
 * 1. Dirty Code, hard to read and hard to maintain
 * 2. Exposes you to more errors
 * 3. Handling Errors
 */




// Example 
function pyramidOfDoom() {
    let xhr = new XMLHttpRequest();

    xhr.onload = () => {
        let xhr2 = new XMLHttpRequest();
        const order = JSON.parse(xhr2.responseText);

        xhr2.onload = () => {

            let xhr3 = new XMLHttpRequest();
            const payments = JSON.parse(xhr2.responseText); // there is a bug here !

            xhr3.onload = () => {
                let xhr4 = new XMLHttpRequest();

                xhr4.onload = () => {
                    const paymentType = JSON.parse(xhr4.responseText);

                    // Do Something
                }
            }
        }
    }
}


/** Handling Errors Drawback Scenario
 * if xhr3 returned 500 from the server
 * then xhr4 will not be called, the the one error function of xhr3 would get called
 */

// code is more messy
function pyramidOfDoomHandlingErrors() {
    let xhr = new XMLHttpRequest();

    xhr.onload = () => {
        let xhr2 = new XMLHttpRequest();
        xhr2.onload = () => {
            let xhr3 = new XMLHttpRequest();
            xhr3.onload = () => {
                let xhr4 = new XMLHttpRequest();
                xhr4.onload = () => {
                }
                xhr4.onerror = () => {
                }
            }
            xhr3.onerror = () => {
            }
        }
        xhr2.onerror = () => {
        }
    }
    xhr4.onerror = () => {
    }
}