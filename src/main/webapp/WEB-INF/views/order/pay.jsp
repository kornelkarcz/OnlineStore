<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pay for your order</title>

</head>
<body>

<h1>Finish your shopping</h1>

<h2>Total sum: ${cart.sum}</h2>

<form>
    <a href="http://localhost:8080/payment/success">Pay</a>
</form>

<%--<script src="/js/payment.js" type="text/javascript"></script>--%>
</body>
</html>
