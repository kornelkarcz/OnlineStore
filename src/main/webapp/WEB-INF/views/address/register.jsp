<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add postal information</title>
</head>
<body>
<h1>OnlineStore Register</h1>
<h2>Please insert postal information below</h2>

<table>
    <form:form method="post" modelAttribute="address">
        <tr>
            <td>First name:</td>
            <td><form:input path="streetName"/></td>
            <td><form:errors path="streetName"/></td>
        </tr>
        <tr>
            <td>Last name:</td>
            <td><form:input path="houseNumber"/></td>
            <td><form:errors path="houseNumber"/></td>
        </tr>
        <tr>
            <td>E-mail:</td>
            <td><form:input path="flatNumber"/></td>
            <td><form:errors path="flatNumber"/></td>
        </tr>
        <tr>
            <td>Password:</td>
            <td><form:password path="password" /></td>
            <td><form:errors path="password"/></td>
        </tr>

        <tr>
            <td>Date of birth:</td>
            <td><form:input id="datepicker" path="dateOfBirth"/></td>
            <td><form:errors path="dateOfBirth"/></td>
        </tr>


        <tr>
            <td><input type="submit" value="Next step"></td>
        </tr>
    </form:form>
</table>


</body>
</html>
