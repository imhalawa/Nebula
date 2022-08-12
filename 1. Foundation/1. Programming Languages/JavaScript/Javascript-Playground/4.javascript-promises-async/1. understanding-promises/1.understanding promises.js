/*** Understanding promises
 * problem/scenario: fetching data
 * 
 * the following two http requests will be executed asynchronously 
 * and the problem happens because of the dependency between both requests
 * that if the 2nd http request responded faster than the first one, it's onload even will be fired
 * while the final result is dependent on the 1st request it's will resolve to undefined.
 * because the statuses array is empty at that moment!
 * 
 * note: that the code within raceCondition() itself will execute synchronously that's why both requests were send in the same time.
 * 
 */

export function raceCondition() {

    // Request 1
    let xhr = new XMLHttpRequest(); // create XMLHttpRequest, create an http request against api
    let statuses = [];

    xhr.open("GET", "http://localhost:3000/orderStatuses");

    // will execute if the http response = 200 (success)
    xhr.onload = () => {
        statuses = JSON.parse(xhr.responseText);
    }
    xhr.send();

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

