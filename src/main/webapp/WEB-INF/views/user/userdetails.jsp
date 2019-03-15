<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My Details</title>
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
            <h2>Personal Details</h2>
            <table class="table table-condensed table-hover">
                <tr class="itemRow">
                    <td>First Name:</td>
                    <td class="stat">${userDetails.firstName}</td>
                </tr>
                <tr class="itemRow">
                    <td>Last Name:</td>
                    <td class="stat">${userDetails.lastName}</td>
                </tr>
                <tr class="itemRow">
                    <td>E-mail:</td>
                    <td class="stat">${userDetails.email}</td>
                </tr>
                <td><a href="/admin/categories/edit/${order.id}">
                    <button class="btn btn-primary btn-block active">Change password</button>
                </a>
                </td>
            </table>
        </div>
        <div class="col-sm-4">
            <h2>Address Details</h2>
            <table class="table table-condensed table-hover">
                <tr class="itemRow">
                    <td>First Name:</td>
                    <td class="stat">${userDetails.firstName}</td>
                </tr>
            </table>
        </div>
    </article>
</section>

<%@ include file="../footer.jsp" %>
</body>
</html>
