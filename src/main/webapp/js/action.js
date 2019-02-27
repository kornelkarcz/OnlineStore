document.addEventListener("DOMContentLoaded", function () {

    var buttons = document.querySelectorAll(".itemRow .button");

    for (i = 0; i < buttons.length; i++) {
        var button = buttons[i];
        button.addEventListener("click", function (event) {

            var id = this.parentNode.parentNode.children[0].innerHTML;
            var correctQuantity = this.parentNode.parentNode.children[5].children[0].value;

            window.location = "http://localhost:8080/cart/add-to-cart/" + id + "/" + correctQuantity;

        })
    }
})