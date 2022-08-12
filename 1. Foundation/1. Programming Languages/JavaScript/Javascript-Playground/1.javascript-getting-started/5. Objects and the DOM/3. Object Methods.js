let person = {
    name: "John",
    age: 32,
    partTime: false,
    toString: function () {
        console.log(`Name: ${this.name}, Age: ${this.age}, IsPartTime: ${this.partTime}`);
    },
    setAge: function (ageParam) {
        this.age = ageParam;
    }
};
person.toString();
person.setAge(2);
person.toString();
