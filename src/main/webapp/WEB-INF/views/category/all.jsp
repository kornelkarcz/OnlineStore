<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All categories</title>
    <%@ include file="../dependecies.jsp" %>
</head>
<body>
<%@ include file="../header.jsp" %>
<h1>All categories</h1>

<table border="1px">

    <thead>
    <th>Id</th>
    <th>Name</th>
    <th colspan="2">Actions</th>
    </thead>
    <c:forEach items="${categories}" var="category">
        <tr>
            <td>${category.id}</td>
            <td>${category.name}</td>
            <td><a href="http://localhost:8080/category/edit/${category.id}">Edit</a></td>
            <td><a href="http://localhost:8080/category/delete/${category.id}"
                   onclick="return confirm('Are you sure you want to delete this item?')" ;>Delete</a></td>
        </tr>
    </c:forEach>
</table>

<a href="/category/add">Add next category</a>
<%@ include file="../footer.jsp" %>
</body>
</html>
