<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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

<%
    session.invalidate();
    response.sendRedirect("http://localhost:8080");
%>

<p>You have been logged out hopefully</p> <br>
<a href="http://localhost:8080">Homepage</a>
</body>
</html>
