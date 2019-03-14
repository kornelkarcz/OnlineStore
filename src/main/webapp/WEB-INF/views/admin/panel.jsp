<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Panel Control</title>
    <%@ include file="../dependecies.jsp" %>
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
        <h3>Admin Panel Control</h3>
        <div class="col-sm-2"></div>
        <div class="col-sm-4">
            <h3>OnlineStore Stats</h3>
            <table class="table table-condensed table-hover">
                <tr class="itemRow">
                    <td>Number of users:</td>
                    <td class="stat">${countUser}</td>
                </tr>
                <tr class="itemRow">
                    <td>Number of orders</td>
                    <td class="stat">${countOrders}</td>
                </tr>
                <tr class="itemRow">
                    <td>Number of payments</td>
                    <td class="stat">${countPayments}</td>
                </tr>
                <tr class="itemRow">
                    <td>Total sum of payments</td>
                    <td class="stat">${sumPayments}</td>
                </tr>
            </table>

        </div>
        <div class="col-sm-4">
            <div id="list-example" class="list-group">
                <a class="list-group-item list-group-item-action" href="/admin/users">Users</a>
                <a class="list-group-item list-group-item-action" href="/admin/products">Products</a>
                <a class="list-group-item list-group-item-action" href="#">Categories</a>
                <a class="list-group-item list-group-item-action" href="#">Orders</a>
                <a class="list-group-item list-group-item-action" href="#">Payments</a>
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
