<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cart</title>
</head>
<body>

<h1>List of items in your cart</h1>

<c:forEach var="cartItem" items="${cart.cartItems}">
    <tr>
        <td>${cartItem}</td>
    </tr>
</c:forEach>

</body>
</html>
