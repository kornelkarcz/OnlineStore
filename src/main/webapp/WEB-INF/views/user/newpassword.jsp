<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Change password</title>
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
                        <h2>Provide postal info</h2>
                        <form method="post" action="/user/myaccount/details/newpassword">
                            <div class="form-group">
                                <label for="oldPassword">Old password:</label>
                                <input class="form-control" type="password" name="oldPassword" id="oldPassword"/>
                            </div>
                            <div class="form-group">
                                <label for="newPassword">New password:</label>
                                <input class="form-control" type="password" name="newPassword" id="newPassword"/>
                            </div>
                            <div class="form-group">
                                <label for="repeatPassword">Confirm new password:</label>
                                <input class="form-control" type="password" name="repeatPassword" id="repeatPassword"/>
                            </div>
                            <button class="btn btn-primary btn-block active">Update password</button>
                        </form>
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
