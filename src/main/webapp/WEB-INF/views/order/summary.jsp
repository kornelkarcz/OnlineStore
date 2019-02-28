<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Order summary</title>
    <script src="/js/order.js" type="text/javascript"></script>

</head>
<body>
<div>
    <h1>You are at the checkout</h1>

    <c:forEach var="cartItem" items="${cart.cartItems}">
        <tr>
            <td>${cartItem.product.id}</td>
            <td>${cartItem.product.name}</td>
            <td>${cartItem.product.manufacturer}</td>
            <td>${cartItem.product.price}</td>
            <td>${cartItem.quantity}</td>

            <br>
        </tr>
    </c:forEach>

    Sum: ${cart.sum}

    <br>

    <button class="pay-button">Pay</button>
    <button class="cancel-button">Cancel</button>

</div>
</body>
</html>
