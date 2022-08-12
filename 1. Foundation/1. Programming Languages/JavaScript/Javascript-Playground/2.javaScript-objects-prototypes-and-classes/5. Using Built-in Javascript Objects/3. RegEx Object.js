
function checkPasswordComplexity(password) {
    let validator1 = new RegExp('^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d).{8,}$', 'gi');
    let validator2 = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,}$/gi;
    return validator1.test(password);
}
console.log(checkPasswordComplexity('password'));


// Search for string based on a regex pattern

function getFirstAlert(logData) {
    let regex = /ERROR(.*?):(.*?);/g;
    return regex.exec(logData);
}

function findAllAlerts(logData) {
    let regex = /ERROR(.*?):(.*?);/g;
    let result = regex.exec(logData);
    while(result != null){
        console.log(result[1]);
        console.log(result[2]);
        console.log('----------------------');
        result = regex.exec(logData);
    }

}

let logData = 'INFO:OK;ERROR(HIGH):Something broke;ERROR(LOW):something fishy;';
let result = getFirstAlert(logData);
let result1 = getFirstAlert(logData);

console.log(result);
console.log(result1);
console.log(result[0]);
console.log(result.index);
console.log(result.input);

findAllAlerts(logData);