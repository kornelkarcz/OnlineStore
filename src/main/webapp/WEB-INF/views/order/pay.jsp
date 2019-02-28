<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pay for your order</title>
    <%@ include file="../dependecies.jsp" %>
</head>
<body>
<%@ include file="../header.jsp" %>
<h1>Finish your shopping</h1>

<h2>Total sum: ${cart.sum}</h2>

<form>
    <a href="http://localhost:8080/payment/success">Pay</a>
</form>
<%@ include file="../footer.jsp" %>
<%--<script src="/js/payment.js" type="text/javascript"></script>--%>
</body>
</html>
