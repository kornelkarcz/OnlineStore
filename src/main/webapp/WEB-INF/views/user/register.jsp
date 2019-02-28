<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
    <link rel="stylesheet" href="/css/style.css">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <link rel="stylesheet" href="/css/styles.css"/>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<h1>OnlineStore Register Form</h1>
<h2>Please insert personal information below</h2>

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
