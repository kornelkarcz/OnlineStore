<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <%@ include file="../dependecies.jsp" %>

</head>
<body>
<%@ include file="../header.jsp" %>

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
<%@ include file="../footer.jsp" %>
</body>
</html>
