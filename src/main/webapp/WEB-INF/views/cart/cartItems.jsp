<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cart</title>
    <script src="/js/cartItem.js" type="text/javascript"></script>
</head>
<body>

<div>
    <h1>List of items in your cart</h1>

    <c:forEach var="cartItem" items="${cart.cartItems}">
        <tr>
            <td>${cartItem}</td>
            <br>
        </tr>
    </c:forEach>

    <button class="button">Continue shopping</button>
    <button class="checkout">Go to the checkout</button>

</div>
</body>
</html>
