/*** 
 * Dealing with APIs can lead to uncertainty, 
 * we weren't sure we actually had the data needed when we needed it.
 * 
 */


// Technique 1 -> make the 2nd request dependent on the first one
// move the second request within the onload event handler of first request
// to ensure that we have the statuses array
export function raceCondition() {

    // Request 1
    let xhr = new XMLHttpRequest(); // create XMLHttpRequest, create an http request against api
    let statuses = [];

    xhr.open("GET", "http://localhost:3000/orderStatuses");

    // will execute if the http response = 200 (success)
    xhr.onload = () => {

        // now we ensure we have the statuses
        statuses = JSON.parse(xhr.responseText);

        // Request 2 
        let xhr2 = new XMLHttpRequest();
        xhr2.open("GET", "http://localhost:3000/orders/1");
        xhr2.onload = () => {
            const order = JSON.parse(xhr2.responseText);
            const description = statuses.map(t => {
                if (t.id === order.orderStatusId) {
                    return t.description;
                }
            })[0];

            setText(`Order Status: ${description}`);
        };

        xhr2.send();
    }
    xhr.send();
}

// We call it a pyramid because we do resolve dependencies between requests (Pyramid-base (1st-request) ---then---> 2nd-request )