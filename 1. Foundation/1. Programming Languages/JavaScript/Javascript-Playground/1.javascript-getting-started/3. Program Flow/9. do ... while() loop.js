/**
 * do
 * {
 *      // Do Something
 * } while (condition)
 * 
 * Will guarantee that it will execute at least 1 time
 */


let serverStatus;
let files = [0, 1, 2, 3, 4, 5];
let i = 0;
do {
    serverStatus = retainServerStatus();
    if (serverStatus !== "offline") {
        uploadFile(files[i]);
        i++;
    } else {
        console.log("application goes offline, please check your network connection!");
    }
} while (serverStatus !== "offline")




function retainServerStatus() {
    let rnd = Math.floor(Math.random() * 11);
    return rnd % 3 == 0 ? "offline" : "online";
}


function uploadFile(file) {
    console.log(`${file} has been uploaded successfully`);
};