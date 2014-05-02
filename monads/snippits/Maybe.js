
john = {
    firstName: "John",
    middleName: "Edward",
    lastName: "Doe",
    homeAddress: {
        line1: "123 W. Somewhere Dr.",
        line2: "Apt. 334",
        city: "Kansas City",
        state: "Missouri",
        zipCode: 64108
    },
    workAddress: {
        line1: "432 N. Nowhere Dr.",
        line2: "Ste. 643",
        city: "Kansas City",
        state: "Missouri",
        zipCode: 64109
    }
};

jane = {
    firstName: "Jane",
    lastName: "Doe"
}

console.log(john.middleName);
console.log(jane.middleName);

//console.log(john.homeAddress.line2);
//console.log(jane.homeAddress.line2);

function getHomeLine2(obj) {
    var a = obj.homeAddress;
    if (a) return a.line2;
    else return null;
}

function getWorkLine2(obj) {
    var a = obj.workAddress;
    if (a) return a.line2;
    else return null;
}

console.log(getHomeLine2(john));
console.log(getHomeLine2(jane));

console.log(getWorkLine2(john));
console.log(getWorkLine2(jane));
