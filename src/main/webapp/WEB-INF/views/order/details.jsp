<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>List of orders</h1>

<c:forEach var="order" items="${orders}">

    <tr>
        <td>${order.id}</td>
        <td>
            <c:set target="${order}" property="orderDate">
                <fmt:parseDate value="${order.orderDate}" type="date" dateStyle="short" pattern="dd-MM-yyyy"/>
            </c:set>
                ${order.orderDate}/>
        </td>
        <td>${order.sum}</td>

        <br>
    </tr>
</c:forEach>

</body>
</html>
