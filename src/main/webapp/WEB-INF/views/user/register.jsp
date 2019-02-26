<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="/css/style.css">
    <title>Register</title>
</head>
<body>
<h1>OnlineStore Register Form</h1>
<h2>Please insert personal information below</h2>

<%--<table>--%>
    <%--<form:form method="post" modelAttribute="user">--%>
        <%--<tr>--%>
            <%--<td>First name:</td>--%>
            <%--<td><form:input path="firstName"/></td>--%>
            <%--<td><form:errors path="firstName"/></td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>Last name:</td>--%>
            <%--<td><form:input path="lastName"/></td>--%>
            <%--<td><form:errors path="lastName"/></td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>E-mail:</td>--%>
            <%--<td><form:input path="email"/></td>--%>
            <%--<td><form:errors path="email"/></td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>Password:</td>--%>
            <%--<td><form:password path="password"/></td>--%>
            <%--<td><form:errors path="password"/></td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td><input type="submit" value="Register"></td>--%>
        <%--</tr>--%>
    <%--</form:form>--%>
<%--</table>--%>


<div class="form-style-10">
    <h1>Register Now!</h1>
    <form:form method="post" modelAttribute="user">
        <div class="section">Registration Info</div>
        <div class="inner-wrap">
            <label>Your First Name <form:input path="firstName" type="text" name="field1"/></label>
            <label>Your Last Name <form:input path="lastName" type="text" name="field2"/></label>
            <label>Email Address <form:input path="email" type="email" name="field3"/></label>
            <label>Password <form:input path="password" type="password" name="field5"/></label>
        </div>

        <div class="button-section">
            <input type="submit" value="Register" name="Sign Up"/>
        </div>
    </form:form>
</div>
</body>
</html>
