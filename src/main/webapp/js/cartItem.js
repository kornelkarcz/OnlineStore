document.addEventListener("DOMContentLoaded", function () {

    var button = document.querySelector(".button");
    var checkout = document.querySelector(".checkout");
    console.log(button);

    button.addEventListener("click", function (event) {

        window.location = "http://localhost:8080/product/all/";
    });

    checkout.addEventListener("click", function (evt) {
        window.location = "http://localhost:8080/order/";
    })

})