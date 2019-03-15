<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add address</title>
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

        <article class="index-form">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4"></div>
                    <div class="col-sm-4">
                        <h2>Provide postal info</h2>
                        <form:form method="post" modelAttribute="address">
                            <div class="form-group">
                                <label for="name">Street name:</label>
                                <form:input path="streetName" class="form-control" type="text" name="streetName"/>
                                <form:errors path="streetName" cssClass="error"/>
                            </div>
                            <div class="form-group">
                                <label for="houseNumber">House number:</label>
                                <form:input path="houseNumber" class="form-control" type="text" name="houseNumber"/>
                                <form:errors path="houseNumber" cssClass="error"/>
                            </div>
                            <div class="form-group">
                                <label for="flatNumber">Flat number:</label>
                                <form:input path="flatNumber" class="form-control" type="text" name="flatNumber"/>
                                <form:errors path="flatNumber" cssClass="error"/>
                            </div>
                            <div class="form-group">
                                <label for="postalCode">Postal code:</label>
                                <form:input path="postalCode" class="form-control" type="text" name="postalCode"/>
                                <form:errors path="postalCode" cssClass="error"/>
                            </div>
                            <div class="form-group">
                                <label for="city">City:</label>
                                <form:input path="city" class="form-control" type="text" name="city"/>
                                <form:errors path="city" cssClass="error"/>
                            </div>
                            <div class="form-group">
                                <label for="country">City:</label>
                                <form:input path="country" class="form-control" type="text" name="country"/>
                                <form:errors path="country" cssClass="error"/>
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
