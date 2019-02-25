<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%> <%@ taglib prefix = "c" uri =
        "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Add postal information</title>
</head>
<body>
<h1>OnlineStore Register</h1>
<h2>Please insert postal information below</h2>

<table>
    <form:form method="post" modelAttribute="address">
        <form:hidden path="${user.id}"/>
        <tr>
            <td>Street name</td>
            <td><form:input path="streetName"/></td>
            <td><form:errors path="streetName"/></td>
        </tr>
        <tr>
            <td>House number</td>
            <td><form:input path="houseNumber"/></td>
            <td><form:errors path="houseNumber"/></td>
        </tr>
        <tr>
            <td>Flat number</td>
            <td><form:input path="flatNumber"/></td>
            <td><form:errors path="flatNumber"/></td>
        </tr>
        <tr>
            <td>Postal code</td>
            <td><form:password path="postalCode" /></td>
            <td><form:errors path="postalCode"/></td>
        </tr>
        <tr>
            <td>city</td>
            <td><form:password path="city" /></td>
            <td><form:errors path="city"/></td>
        </tr>
        <tr>
            <td>Country</td>
            <td><form:password path="country" /></td>
            <td><form:errors path="country"/></td>
        </tr>

        <tr>
            <td><input type="submit" value="Register"></td>
        </tr>
    </form:form>
</table>


</body>
</html>
