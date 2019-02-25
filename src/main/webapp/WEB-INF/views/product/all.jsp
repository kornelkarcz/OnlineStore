<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All products</title>
</head>
<body>
<h1>List of all products</h1>

<table border="1px">
    <c:forEach items="${products}" var="product">
        <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>${product.category.name}</td>
            <td>${product.manufacturer}</td>
            <td>${product.price}</td>
            <td><a href="http://localhost:8080/product/edit/${product.id}">Edit</a></td>
            <td><a href="http://localhost:8080/product/delete/${product.id}" onclick="return confirm('Are you sure you want to delete this item?')";>Delete</a></td>
        </tr>
    </c:forEach>
</table>

<a href="/product/add">Add next book</a>


</body>
</html>
