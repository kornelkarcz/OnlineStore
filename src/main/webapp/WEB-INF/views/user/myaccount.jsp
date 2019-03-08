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

This is my account<br>

        <a href="http://localhost:8080/order/allorders">My orders</a>
        <a href="http://localhost:8080/payment/allpayments">My payments</a>

    </article>
</section>
<%@ include file="../footer.jsp" %>
</body>
</html>
