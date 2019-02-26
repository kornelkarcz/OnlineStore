<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
    <%--<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">--%>
    <%--<link rel="stylesheet" href="/resources/demos/style.css">--%>
    <%--<script src="https://code.jquery.com/jquery-1.12.4.js"></script>--%>
    <%--<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>--%>
    <%--<script>--%>
        <%--$( function() {--%>
            <%--$( "#datepicker" ).datepicker();--%>
        <%--} );--%>
    <%--</script>--%>
</head>
<body>
<h1>OnlineStore Register Form</h1>
<h2>Please insert personal information below</h2>

<table>
    <form:form method="post" modelAttribute="user">
        <tr>
            <td>First name:</td>
            <td><form:input path="firstName"/></td>
            <td><form:errors path="firstName"/></td>
        </tr>
        <tr>
            <td>Last name:</td>
            <td><form:input path="lastName"/></td>
            <td><form:errors path="lastName"/></td>
        </tr>
        <tr>
            <td>E-mail:</td>
            <td><form:input path="email"/></td>
            <td><form:errors path="email"/></td>
        </tr>
        <tr>
            <td>Password:</td>
            <td><form:password path="password" /></td>
            <td><form:errors path="password"/></td>
        </tr>

        <tr>
            <td>Date of birth:</td>
            <td><form:input type="date" path="dateOfBirth"/></td>
            <td><form:errors path="dateOfBirth"/></td>
        </tr>


        <tr>
            <td><input type="submit" value="Next step"></td>
        </tr>
    </form:form>
</table>

</body>
</html>
