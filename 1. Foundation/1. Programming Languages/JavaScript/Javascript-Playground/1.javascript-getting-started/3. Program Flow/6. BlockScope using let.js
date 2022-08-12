if(true){
    let letVariable  = 'yes';
    console.log(letVariable);

    var varVariable = 'always';
}

// always accessible because var register variables globally
console.log(varVariable);


// defined variable within if statement is not accessible outside the code block
console.log(letVariable);