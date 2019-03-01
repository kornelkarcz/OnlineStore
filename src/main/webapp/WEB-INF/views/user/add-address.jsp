<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add address</title>
    <%@ include file="../dependecies.jsp" %>
</head>
<body>
<%@ include file="../header.jsp" %>

<article class="index-table">
    <div class="container">
        <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-4">
                <form:form method="post" modelAttribute="address">
                    <div class="form-group">
                        <label for="name">Street name:</label>
                        <form:input path="streetName" class="form-control" type="text" name="streetName"/>
                    </div>
                    <div class="form-group">
                        <label for="houseNumber">House number:</label>
                        <form:input path="houseNumber" class="form-control" type="text" name="houseNumber"/>
                    </div>
                    <div class="form-group">
                        <label for="flatNumber">Flat number:</label>
                        <form:input path="flatNumber" class="form-control" type="text" name="flatNumber"/>
                    </div>
                    <div class="form-group">
                        <label for="postalCode">Postal code:</label>
                        <form:input path="postalCode" class="form-control" type="text" name="postalCode"/>
                    </div>
                    <div class="form-group">
                        <label for="city">City:</label>
                        <form:input path="city" class="form-control" type="text" name="city"/>
                    </div>
                    <div class="form-group">
                        <label for="country">City:</label>
                        <form:input path="country" class="form-control" type="text" name="country"/>
                    </div>
                    <button class="btn btn-primary btn-block active">Submit</button>
                </form:form>
            </div>
            <div class="col-sm-4"></div>
        </div>
    </div>
</article>


<%@ include file="../footer.jsp" %>
</body>
</html>
