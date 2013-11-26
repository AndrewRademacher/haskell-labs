
function getFibs (n) {
    var fibs = [1, 1];

    for (var i = 2; i < n; i++) 
        fibs.push(fibs[fibs.length - 1] + fibs[fibs.length - 2]);

    return fibs;
}

//  Main
var n   = Number(process.argv[2]),
    lst = getFibs(n);

console.log(lst[lst.length - 1]);
