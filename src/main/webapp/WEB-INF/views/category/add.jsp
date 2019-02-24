<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding a category</title>
</head>
<body>
<h1>Add a category</h1>

<table>
    <form:form method="post" modelAttribute="category">
        <tr>
            <td>Name</td>
            <td><form:input path="name"/></td>
            <td><form:errors path="name"/></td>
        </tr>
        <tr>
            <td><input type="submit" value="Submit"></td>
        </tr>
    </form:form>
</table>

</body>
</html>
