<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All products for lease</title>
</head>
<body>

<h1>List of all products</h1>

<table border="1px" cellpadding="10">
    <c:forEach items="${leaseProducts}" var="leaseProduct">
        <tr>
            <td>${leaseProduct.id}</td>
            <td>${leaseProduct.name}</td>
            <td>${leaseProduct.category.name}</td>
            <td>${leaseProduct.manufacturer}</td>
            <td>${leaseProduct.price}</td>
            <td><a href="http://localhost:8080/lease-product/edit/${leaseProduct.id}">Edit</a></td>
            <td><a href="http://localhost:8080/lease-product/delete/${leaseProduct.id}" onclick="return confirm('Are you sure you want to delete this item?')";>Delete</a></td>
        </tr>
    </c:forEach>
</table>

<a href="/lease-product/add">Add next lease product</a>

</body>
</html>
