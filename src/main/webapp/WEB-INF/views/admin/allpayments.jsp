<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Payments</title>
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

        <article class="index-table">
            <div class="table-container">
                <table class="table table-condensed table-hover">
                    <tr class="info">
                        <th>Payment Id</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Total Sum</th>
                        <th>Payment Date</th>
                        <th colspan="1">Actions</th>
                    </tr>
                    <c:forEach items="${payments}" var="payment">
                        <tr class="itemRow">
                            <td>${payment.id}</td>
                            <td>${payment.firstName}</td>
                            <td>${payment.lastName}</td>
                            <td>${payment.sum}</td>
                            <td>${payment.paymentDate}</td>
                            <td><a href="/admin/payments/details/${payment.id}">
                                <button class="btn btn-primary btn-block active">Details</button>
                            </a></td>
                        </tr>
                    </c:forEach>

                </table>
            </div>
            <div id="xd">
                <a class="btn btn-primary btn-block active" href="/admin/panel-control">
                    Back to panel
                </a>
            </div>

        </article>

    </article>
</section>

<%@ include file="../footer.jsp" %>
</body>
</html>
