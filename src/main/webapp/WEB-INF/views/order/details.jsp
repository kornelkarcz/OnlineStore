<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>My orders</title>
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

                    <h1>My all orders</h1>

                    <tr class="info">
                        <th>Id</th>
                        <th>Date</th>
                        <th>Sum</th>
                        <th>Actions</th>
                    </tr>


                    <c:forEach var="order" items="${orders}">
                        <tr class="itemRow">
                            <td>${order.id}</td>
                            <td>${order.orderDate}</td>
                            <td>${order.sum}</td>
                            <td><a class="btn btn-primary btn-block active" href="#">Details</a></td>
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
