<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <title>OnlineStore</title>
    <%@ include file="dependecies.jsp" %>

</head>
<body>
<%--<%@ include file="header.jsp" %>--%>

<c:choose>
    <c:when test="${sessionScope.logged != null}">
        <%@include file="loggedHeader.jsp"%>
    </c:when>
    <c:otherwise>
        <%@include file="header.jsp"%>
    </c:otherwise>
</c:choose>

<section class="main-container">

    <article class="index-intro">
        <div class="container">
            <div class="jumbotron">
                <div class="row">
                    <div class="col-sm-6"></div>
                    <div class="col-sm-6">
                        <h1>Frontend <3</h1>
                        <p>
                            I had a dream. Robots were everywhere, shootin' lasers and shit ~ Martin Luther King
                        </p>
                    </div>

                </div>
            </div>
        </div>
    </article>
</section>


<div id="container">
    <div id="main">

    </div>
</div>

<%@ include file="footer.jsp" %>

</body>
</html>
