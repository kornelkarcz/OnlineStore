<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cart</title>
    <%@ include file="../dependecies.jsp" %>
    <script src="/js/cartItem.js"></script>

</head>
<body>
<%@ include file="../header.jsp" %>
<div id="container">
    <div id="main">

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
    </div>
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>
