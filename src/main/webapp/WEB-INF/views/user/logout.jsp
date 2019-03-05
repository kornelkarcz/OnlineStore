<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    session.invalidate();
    response.sendRedirect("http://localhost:8080");
%>

<p>You have been logged out hopefully</p> <br>
<a href="http://localhost:8080">Homepage</a>
</body>
</html>
