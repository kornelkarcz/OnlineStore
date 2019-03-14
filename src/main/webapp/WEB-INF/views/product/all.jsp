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

<c:choose>
    <c:when test="${sessionScope.logged != null}">
        <%@include file="../loggedHeader.jsp"%>
    </c:when>
    <c:otherwise>
        <%@include file="../header.jsp"%>
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
                        <th>Quantity</th>
                        <th colspan="1">Actions</th>
                    </tr>
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
                                <button class="btn btn-primary btn-block active">Add to cart</button>
                            </td>
                        </tr>
                    </c:forEach>

                </table>
            </div>
        </article>

    </article>
</section>

<%@ include file="../footer.jsp" %>
</body>
</html>
