<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="/css/style.css">
    <title>Login</title>

</head>
<body>

<div class="form-style-10">
    <h1>Sign in!</h1>
    <form:form method="post" modelAttribute="fake">
        <div class="section">Login Info</div>
        <div class="inner-wrap">
            <label>Email Address <form:input path="email" type="email" name="field1"/></label>
            <label>Password <form:input path="password" type="password" name="field2"/></label>
        </div>

        <div class="button-section">
            <input type="submit" value="Sign in" name="Sign Up"/>
        </div>
    </form:form>
</div>
</body>
</html>
