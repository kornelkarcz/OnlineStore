document.addEventListener("DOMContentLoaded", function () {

    var button = document.querySelector(".pay-button");


    button.addEventListener("click", function (event) {

        window.location = "http://localhost:8080/order/pay/";
    });

})