<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All products for lease</title>
    <%@ include file="../dependecies.jsp" %>
</head>
<body>
<c:choose>
    <c:when test="${isAdmin == true}">
        <%@include file="../adminHeader.jsp" %>
    </c:when>
    <c:when test="${sessionScope.logged != null}">
        <%@include file="../loggedHeader.jsp" %>
    </c:when>
    <c:otherwise>
        <%@include file="../header.jsp" %>
    </c:otherwise>
</c:choose>
<section class="main-container">
    <article class="index-intro">


        <table border="1px" cellpadding="10">
            <thead>
            <th>Id</th>
            <th>Name</th>
            <th>Category</th>
            <th>Manufacturer</th>
            <th>Price</th>
            <th colspan="2">Actions</th>
            </thead>
            <tbody>
            <c:forEach items="${leaseProducts}" var="leaseProduct">
                <tr>
                    <td>${leaseProduct.id}</td>
                    <td>${leaseProduct.name}</td>
                    <td>${leaseProduct.category.name}</td>
                    <td>${leaseProduct.manufacturer}</td>
                    <td>${leaseProduct.price}</td>
                    <td><a href="http://localhost:8080/lease-product/edit/${leaseProduct.id}">Edit</a></td>
                    <td><a href="http://localhost:8080/lease-product/delete/${leaseProduct.id}"
                           onclick="return confirm('Are you sure you want to delete this item?')" ;>Delete</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>

        <a href="/lease-product/add">Add next lease product</a>
    </article>
</section>

<%@ include file="../footer.jsp" %>
</body>
</html>
