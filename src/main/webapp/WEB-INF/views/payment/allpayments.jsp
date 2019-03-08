<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All payments</title>
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

        <article class="index-table">
            <div class="table-container">
                <table class="table table-condensed table-hover">

                    <h1>My all payments</h1>

                    <tr class="info">
                        <th>Id</th>
                        <th>Date</th>
                        <th>Sum</th>
                        <th>Actions</th>
                    </tr>

                    <c:forEach var="payment" items="${payments}">
                        <tr class="itemRow">
                            <td>${payment.paymentId}</td>
                            <td>${payment.paymentDate}</td>
                            <td>${payment.sum}</td>
                            <td><a class="btn btn-primary btn-block active">Details</a></td>
                        </tr>
                    </c:forEach>


                </table>
            </div>
        </article>
    </article>
</section>

<%@ include file="../footer.jsp" %>
</body>
</html>
