<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All categories</title>
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
                        <th>Category Id</th>
                        <th>Category Name</th>
                        <th colspan="2">Actions</th>
                    </tr>
                    <c:forEach items="${categories}" var="category">
                        <tr class="itemRow">
                            <td>${category.id}</td>
                            <td>${category.name}</td>
                            <td><a href="/admin/categories/edit/${order.id}">
                                <button class="btn btn-primary btn-block active">Edit</button>
                            </a></td>
                            <td><a href="/admin/categories/delete/${order.id}">
                                <button class="btn btn-primary btn-block active">Delete</button>
                            </a></td>
                        </tr>
                    </c:forEach>

                </table>
            </div>
            <div id="xd">
                <a class="btn btn-primary btn-block active" href="/admin/categories/add">
                    Add category
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
