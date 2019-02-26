<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h1>Log in</h1>

<table>
    <form:form method="post" modelAttribute="fake">

        <tr>
            <td>E-mail:</td>
            <td><form:input path="email"/></td>
            <td><form:errors path="email"/></td>
        </tr>
        <tr>
            <td>Password:</td>
            <td><form:password path="password"/></td>
            <td><form:errors path="password"/></td>
        </tr>
        <tr>
            <td><input type="submit" value="Login"></td>
        </tr>
    </form:form>

</table>
</body>
</html>
