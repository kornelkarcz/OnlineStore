document.addEventListener("DOMContentLoaded", function () {

    var button = document.querySelector(".btn");
    console.log(button);


    button.addEventListener("click", function (event) {

        window.location = "http://localhost:8080/payment/success";
    });

})