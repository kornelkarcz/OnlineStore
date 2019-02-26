document.addEventListener("DOMContentLoaded", function () {

    // var y = document.getElementById("quantity").value;
    // var k = document.getElementById("link");
    // var z = k.getAttribute("href");
    // var x = k.setAttribute("href", (z + y).toString());
    //
    // console.log(y);
    // console.log(k);
    // console.log(z);
    // console.log(x);


    // function passValue() {
    //
    //     console.log(y);
    //     console.log(z);
    //     console.log(x);
    //
    //
    // }

    var input = document.getElementById("quantity");

    input.addEventListener("input", function() {

        var y = document.getElementById("quantity").value;
        var z = document.getElementById("link").getAttribute("href");
        var x = document.getElementById("link").setAttribute("href", z + y);

    })

})