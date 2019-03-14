<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All products</title>
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



        <article class="index-table">
            <div class="table-container">
                <table class="table table-condensed table-hover">
                    <tr class="info">
                        <th>Id</th>
                        <th>Name</th>
                        <th>Category</th>
                        <th>Manufacturer</th>
                        <th>Price</th>
                        <th colspan="2">Actions</th>
                    </tr>
                    <c:forEach items="${products}" var="product">
                        <tr class="itemRow">
                            <td>${product.id}</td>
                            <td>${product.name}</td>
                            <td>${product.category.name}</td>
                            <td>${product.manufacturer}</td>
                            <td>${product.price}</td>
                            <td><a href="http://localhost:8080/product/edit/${product.id}">
                                <button class="btn btn-primary btn-block active">Edit</button>
                            </a></td>
                            <td><a href="http://localhost:8080/product/delete/${product.id}"
                                   onclick="return confirm('Are you sure you want to delete this item?')">
                                <button class="btn btn-primary btn-block active">Delete</button>
                            </a></td>
                        </tr>
                    </c:forEach>

                </table>
            </div>
            <div id="xd">
                <a class="btn btn-primary btn-block active" href="/product/add">
                    Add next product
                </a>
                <a class="btn btn-primary btn-block active" href="/admin/panel-control">
                    Back to panel
                </a>
            </div>

        </article>

    </article>
</section>


<%@ include file="../footer.jsp" %>
</body>
</html>
