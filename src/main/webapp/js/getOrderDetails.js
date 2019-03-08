document.addEventListener("DOMContentLoaded", function () {

    var buttons = document.querySelectorAll(".itemRow .btn");
    console.log(buttons);

    for (i = 0; i <buttons.length; i++) {
     var button = buttons[i];
     button.addEventListener("click", function (event) {

         var id = this.parentNode.parentNode.children[0].innerHTML;

         window.location = "http://localhost:8080/order/allorders/" + id ;

     })
    }
});
