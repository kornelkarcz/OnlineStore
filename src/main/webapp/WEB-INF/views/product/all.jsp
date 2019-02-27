<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All products</title>
    <script src="/js/action.js" type="text/javascript"></script>
    <%--<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"--%>
    <%--integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">--%>
    <link rel="stylesheet" href="/css/style.css">

</head>
<body>


<h1>List of all products</h1>
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
                            <%--<a id="link" href="http://localhost:8080/cart/add-to-cart/${product.id}/">--%>
                        <button class="button">Add to cart</button>
                            <%--</a>--%>
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

<div id="footerdiv">
    <footer id="footer">
        <div class="wrapper">
            <nav>
                <ul>
                    <li><a href="">Homepage</a></li>
                    <li><a href="">Contact us</a></li>
                    <li><a href="">About us</a></li>
                    <li><a href="">Forum</a></li>
                </ul>
            </nav>
        </div>
    </footer>
</div>

</body>
</html>
