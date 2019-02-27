<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add address</title>
</head>
<body>
<h1>Add your address</h1>

<form:form method="post" modelAttribute="address">
    <table>
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
            <td><form:input path="postalCode"/></td>
            <td><form:errors path="postalCode"/></td>
        </tr>
        <tr>
            <td>City</td>
            <td><form:input path="city"/></td>
            <td><form:errors path="city"/></td>
        </tr>
        <tr>
            <td>Country</td>
            <td><form:input path="country"/></td>
            <td><form:errors path="country"/></td>
        </tr>

        <tr>
            <td><input type="submit" value="Submit"></td>
        </tr>
    </table>
</form:form>

</body>
</html>
