<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
    <%@ include file="../dependecies.jsp" %>
</head>
<body>
<%@ include file="../header.jsp" %>
<div id="container">
    <div id="main">


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

    </div>
</div>
<%@ include file="../footer.jsp" %>
</body>


</html>
