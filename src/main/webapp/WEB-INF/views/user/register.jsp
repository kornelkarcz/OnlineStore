<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
    <script>
        $( function() {
            $( "#datepicker" ).datepicker();
        } );
    </script>
</head>
<body>
<h1>OnlineStore Register Form</h1>

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
            <td><form:input id="datepicker" path="dateOfBirth"/></td>
            <td><form:errors path="dateOfBirth"/></td>
        </tr>


        <tr>
            <td><input type="submit" value="Submit"></td>
        </tr>
    </form:form>
</table>

</body>
</html>
