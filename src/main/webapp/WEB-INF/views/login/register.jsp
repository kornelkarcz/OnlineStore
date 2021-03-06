<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
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

        <article class="index-form">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4"></div>
                    <div class="col-sm-4">
                        <h2>Register</h2>
                        <form:form method="post" modelAttribute="user">
                            <div class="form-group">
                                <label for="firstName">First name:</label>
                                <form:input path="firstName" class="form-control" type="text" name="firstName"/>
                                <form:errors path="firstName" cssClass="error"/>
                            </div>
                            <div class="form-group">
                                <label for="lastName">Last name:</label>
                                <form:input path="lastName" class="form-control" type="text" name="lastName"/>
                                <form:errors path="lastName" cssClass="error"/>
                            </div>
                            <div class="form-group">
                                <label for="email">Email:</label>
                                <form:input path="email" class="form-control" type="text" name="email"/>
                                <form:errors path="email" cssClass="error"/>
                            </div>
                            <div class="form-group">
                                <label for="password">Password:</label>
                                <form:input path="password" class="form-control" type="password" name="password"/>
                                <form:errors path="password" cssClass="error"/>
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
