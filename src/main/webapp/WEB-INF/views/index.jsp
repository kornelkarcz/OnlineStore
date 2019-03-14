<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <title>OnlineStore</title>
    <%@ include file="dependecies.jsp" %>

</head>
<body>

<c:choose>
    <c:when test="${isAdmin == true}">
        <%@include file="adminHeader.jsp" %>
    </c:when>
    <c:when test="${sessionScope.logged != null}">
        <%@include file="loggedHeader.jsp" %>
    </c:when>
    <c:otherwise>
        <%@include file="header.jsp" %>
    </c:otherwise>
</c:choose>

<section class="main-container">

    <article class="index-intro">
        <div class="container">
            <div class="jumbotron">
                <div class="row">
                    <div class="col-sm-6"></div>
                    <div class="col-sm-6">
                        <h1>Welcome to OnlineStore</h1>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sit amet dolor tortor. Morbi
                            eu erat vitae dolor ullamcorper rutrum. Sed non enim suscipit, sollicitudin ante non,
                            sodales est. Nam sit amet turpis elementum odio sollicitudin consectetur sit amet tempus
                            felis. Maecenas mollis lorem sit amet massa vestibulum, eget feugiat ligula blandit.
                        </p>
                    </div>
                </div>
            </div>
            <div>
                <div class="div-gallery">
                    <div class="col-sm-6 gallery1" style="padding: 10px">
                        <a href="#">
                            <img class="img-responsive img-rounded" src="/images/image2.jpg"
                                 style="height: 400px; width: 550px">
                        </a>
                    </div>
                    <div class="col-sm-6 gallery2" style="padding: 10px">
                        <a href="http://localhost:8080/product/all">
                            <img class="img-responsive img-rounded" src="/images/image3.jpg"
                                 style="height: 400px; width: 550px">
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </article>
</section>

<%@ include file="footer.jsp" %>
</body>
</html>
