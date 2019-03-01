<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All products</title>
    <%@ include file="../dependecies.jsp" %>
    <script src="/js/action.js"></script>

</head>
<body>
<%@ include file="../header.jsp" %>

<div id="container">
    <div id="main">
        <div>
            <div>
                <table>
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
                        <tr class="itemRow">
                            <td>${product.id}</td>
                            <td>${product.name}</td>
                            <td>${product.category.name}</td>
                            <td>${product.manufacturer}</td>
                            <td>${product.price}</td>
                            <td><%-- to jest 5 dziecko vide: action.js--%>
                                <input id="quantity" type="number" min="0" value=""/>
                            </td>
                            <td>
                                <button class="button">Add to cart</button>
                            </td>
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
            </div>
        </div>
        <div>
            <a href="/product/add">Add next product</a>
        </div>
    </div>
</div>

<%@ include file="../footer.jsp" %>
</body>
</html>
