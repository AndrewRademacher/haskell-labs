
john = {
    firstName: "John",
    middleName: "Edward",
    lastName: "Doe",
    address: {
        line1: "123 W. Somewhere Dr.",
        line2: "Apt. 334",
        city: "Kansas City",
        state: "Missouri",
        zipCode: 64108
    }
};

jane = {
    firstName: "Jane",
    lastName: "Doe"
};

console.log(john.middleName);
console.log(jane.middleName);

console.log(john.address.line2);
console.log(jane.address.line2);
