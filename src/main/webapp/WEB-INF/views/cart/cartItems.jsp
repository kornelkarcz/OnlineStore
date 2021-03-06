<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cart</title>
    <%@ include file="../dependecies.jsp" %>
    <script src="/js/cartItem.js"></script>

</head>
<body>
<c:choose>
    <c:when test="${isAdmin == true}">
        <%@include file="../adminHeader.jsp" %>
    </c:when>
    <c:when test="${sessionScope.logged != null}">
        <%@include file="../loggedHeader.jsp" %>
    </c:when>
    <c:otherwise>
        <%@include file="../header.jsp" %>
    </c:otherwise>
</c:choose>

<section class="main-container">
    <article class="index-intro">

        <h1>List of items in your cart</h1>

        <article class="index-table">
            <div class="table-container">
                <table class="table table-condensed table-hover">
                    <tr class="info">
                        <th>Name</th>
                        <th>Manufacturer</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th colspan="1">Actions</th>
                    </tr>
                    <c:forEach var="cartItem" items="${cart.cartItems}">
                        <tr>
                            <td>${cartItem.product.name}</td>
                            <td>${cartItem.product.manufacturer}</td>
                            <td>${cartItem.product.price}</td>
                            <td>${cartItem.quantity}</td>
                            <td>
                                <a href="http://localhost:8080/cart/remove/${cartItem.product.id}/${cartItem.quantity}">
                                    <button>Remove from cart</button>
                                </a>
                            </td>
                            <br>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </article>


        Sum: ${cart.sum}<br>

        <button class="button">Continue shopping</button>
        <button class="checkout">Go to the checkout</button>

    </article>
</section>

<%--<article class="index-table">--%>
<%--<div class="table-container">--%>
<%--<table class="table table-condensed table-hover">--%>
<%--<tr class="info">--%>
<%--<th>Name</th>--%>
<%--<th>Manufacturer</th>--%>
<%--<th>Price</th>--%>
<%--<th>Quantity</th>--%>
<%--</tr>--%>
<%--<c:forEach var="cartItem" items="${cart.cartItems}}" >--%>
<%--<tr class="itemRow">--%>
<%--<td>${cartItem.product.name}</td>--%>
<%--<td>${cartItem.product.manufacturer}</td>--%>
<%--<td>${cartItem.product.price}</td>--%>
<%--<td>${cartItem.quantity}</td>--%>
<%--<td>&lt;%&ndash; to jest 5 dziecko vide: action.js&ndash;%&gt;--%>
<%--<input id="quantity" type="number" min="0" value=""/>--%>
<%--</td>--%>
<%--<td>--%>
<%--<button class="button">Add to cart</button>--%>
<%--</td>--%>
<%--<td><a href="http://localhost:8080/product/edit/${product.id}">--%>
<%--<button>Edit</button>--%>
<%--</a></td>--%>
<%--<td><a href="http://localhost:8080/product/delete/${product.id}"--%>
<%--onclick="return confirm('Are you sure you want to delete this item?')">--%>
<%--<button>Delete</button>--%>
<%--</a></td>--%>
<%--</tr>--%>
<%--</c:forEach>--%>

<%--</table>--%>
<%--</div>--%>
<%--<div id="xd">--%>
<%--<a class="btn btn-primary btn-block active" href="/product/add">--%>
<%--Add next product--%>
<%--</a>--%>
<%--</div>--%>

<%--&lt;%&ndash;<div id="xd1">&ndash;%&gt;--%>
<%--&lt;%&ndash;<a class="btn btn-primary btn-block active" href="/product/add">&ndash;%&gt;--%>
<%--&lt;%&ndash;Add to cart&ndash;%&gt;--%>
<%--&lt;%&ndash;</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
<%--</article>--%>


<%@ include file="../footer.jsp" %>
</body>
</html>
