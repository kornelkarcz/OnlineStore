document.addEventListener("DOMContentLoaded", function () {

    var button = document.querySelector(".btn");
    console.log(button);

    var owner = $('#owner'),
        cardNumber = $('#cardNumber'),
        cardNumberField = $('#card-number-field'),
        CVV = $("#cvv"),
        mastercard = $("#mastercard"),
        confirmButton = $('#confirm-purchase'),
        visa = $("#visa"),
        amex = $("#amex");


    button.addEventListener("click", function (event) {

        window.location = "http://localhost:8080/payment/success";
    });

})