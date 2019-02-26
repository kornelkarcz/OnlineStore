<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All products</title>
    <script src="/js/action.js" type="text/javascript"></script>
</head>
<body>


<h1>List of all products</h1>

<table border="1px" cellpadding="10">

    <thead>
    <th>Id</th>
    <th>Name</th>
    <th>Category</th>
    <th>Manufacturer</th>
    <th>Price</th>
    <th>Quantity</th>
    <th colspan="3">Actions</th>
    </thead>
    <c:forEach items="${products}" var="product">
        <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>${product.category.name}</td>
            <td>${product.manufacturer}</td>
            <td>${product.price}</td>
            <td><input id="quantity" type="text" min="0" value=""/></td>
            <td><a id="link" href="http://localhost:8080/cart/add-to-cart/${product.id}/">
                <button id="button">Add to cart</button>
            </a></td>
            <td><a href="http://localhost:8080/product/edit/${product.id}">
                <button>Edit</button>
            </a></td>
            <td><a href="http://localhost:8080/product/delete/${product.id}"
                   onclick="return confirm('Are you sure you want to delete this item?')">
                <button>Delete</button>
            </a></td>
        </tr>
    </c:forEach>
</table>

<a href="/product/add">Add next product</a>

</body>
</html>
