<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My Account</title>
    <%@ include file="../dependecies.jsp" %>
</head>
<body>

<c:choose>
    <c:when test="${sessionScope.logged != null}">
        <%@include file="../loggedHeader.jsp" %>
    </c:when>
    <c:otherwise>
        <%@include file="../header.jsp" %>
    </c:otherwise>
</c:choose>

<section class="main-container">
    <article class="index-intro">

        <h3 style="text-align: center">User Control Panel</h3>
        <div class="col-sm-2"></div>
        <div class="col-sm-4">
            <h2>User Stats</h2>
            <table class="table table-condensed table-hover">
                <tr class="itemRow">
                    <td>Number of orders</td>
                    <td class="stat">${countOrders}</td>
                </tr>
                <tr class="itemRow">
                    <td>Number of payments</td>
                    <td class="stat">${userPaymentNumber}</td>
                </tr>
                <tr class="itemRow">
                    <td>Total sum of payments</td>
                    <td class="stat">${userPaymentSum}</td>
                </tr>
            </table>
        </div>
        <div class="col-sm-4">
            <div id="list-example" class="list-group">
                <a class="list-group-item list-group-item-action" href="#list-item-1">My details</a>
                <a class="list-group-item list-group-item-action"
                   href="http://localhost:8080/user/myaccount/add-address">Add address</a>
                <a class="list-group-item list-group-item-action" href="http://localhost:8080/order/allorders">My
                    orders</a>
                <a class="list-group-item list-group-item-action" href="http://localhost:8080/payment/allpayments">My
                    payments</a>
            </div>
            <div data-spy="scroll" data-target="#list-example" data-offset="0" class="scrollspy-example">
            </div>
        </div>
        <div class="col-sm-2"></div>

    </article>
</section>
<%@ include file="../footer.jsp" %>
</body>
</html>
