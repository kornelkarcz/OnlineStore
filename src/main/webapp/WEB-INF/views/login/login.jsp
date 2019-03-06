<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <%@ include file="../dependecies.jsp" %>

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


<section class="main-container">
    <article class="index-intro">

        <article class="index-form">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4"></div>
                    <div class="col-sm-4">
                        <h2>Log in</h2>
                        <form:form method="post" modelAttribute="fake">
                            <div class="form-group">
                                <label for="email">Email:</label>
                                <form:input path="email" class="form-control" type="text" name="email"/>
                            </div>
                            <div class="form-group">
                                <label for="password">Password:</label>
                                <form:input path="password" class="form-control" type="password" name="password"/>
                            </div>

                            <button class="btn btn-primary btn-block active">Submit</button>
                        </form:form>
                    </div>
                    <div class="col-sm-4"></div>
                </div>
            </div>
        </article>
    </article>
</section>
<%@ include file="../footer.jsp" %>
</body>
</html>
