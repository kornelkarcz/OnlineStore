<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Editing category</title>
    <%@ include file="../dependecies.jsp" %>
</head>
<body>
<%@ include file="../header.jsp" %>
<h1>Edit a category</h1>
<table>
    <form:form method="post" modelAttribute="category" action="/category/edit">

        <form:hidden path="id"/>
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
<%@ include file="../footer.jsp" %>
</body>
</html>
