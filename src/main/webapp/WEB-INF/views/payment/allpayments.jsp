<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<c:forEach var="payment" items="${payments}">
    <tr class="itemRow">
        <td>${payment.paymentId}</td>
        <td>${payment.paymentDate}</td>
        <td>${payment.sum}</td>
        <td><a class="btn btn-primary btn-block active">Details</a></td>
    </tr>
</c:forEach>

</body>
</html>
