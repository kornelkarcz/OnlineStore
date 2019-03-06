<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Logging out</title>
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

<%
    session.invalidate();
//    response.sendRedirect("http://localhost:8080");
%>

<section class="main-container">
    <article class="index-intro">
        <p>You have been logged out hopefully</p> <br>
        <a href="http://localhost:8080">Homepage</a>
    </article>
</section>

<%@ include file="../footer.jsp" %>

</body>
</html>
