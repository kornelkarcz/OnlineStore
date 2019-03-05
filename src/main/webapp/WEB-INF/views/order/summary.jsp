<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Order summary</title>
    <%@ include file="../dependecies.jsp" %>
    <script src="/js/order.js" type="text/javascript"></script>

</head>
<body>

<c:choose>
    <c:when test="${sessionScope.logged != null}">
        <%@include file="../loggedHeader.jsp"%>
    </c:when>
    <c:otherwise>
        <%@include file="../header.jsp"%>
    </c:otherwise>
</c:choose>

<div id="container">
    <div id="main">
        <div>
            <h1>You are at the checkout</h1>

            <div class="table-container">
                <table class="table table-condensed table-hover">
                    <tr class="info">
                        <th>Name</th>
                        <th>Manufacturer</th>
                        <th>Price</th>
                        <th>Quantity</th>
                    </tr>
                    <c:forEach var="cartItem" items="${cart.cartItems}">
                        <tr>
                            <td>${cartItem.product.name}</td>
                            <td>${cartItem.product.manufacturer}</td>
                            <td>${cartItem.product.price}</td>
                            <td>${cartItem.quantity}</td>

                            <br>
                        </tr>
                    </c:forEach>
                </table>
            </div>

            Sum: ${cart.sum}<br>

            <button class="pay-button">Pay</button>
            <button class="cancel-button">Cancel</button>

        </div>
    </div>
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>
