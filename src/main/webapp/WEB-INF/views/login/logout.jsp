<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Logging out</title>
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

<%
    session.invalidate();
%>

<script>
    var timer = setTimeout(function() {
        window.location='http://localhost:8080'
    }, 2000);
</script>

<section class="main-container">
    <article class="index-intro">

       <div class="col-sm-2"></div>
       <div class="col-sm-8">
           <img class="img-responsive img-rounded" src="/images/image4.jpg" style="size: auto">
       </div>
       <div class="col-sm-2"></div>

    </article>
</section>

<%@ include file="../footer.jsp" %>

</body>
</html>
