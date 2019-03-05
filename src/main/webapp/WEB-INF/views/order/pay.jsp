<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pay for your order</title>
    <%@ include file="../dependecies.jsp" %>
    <%--<script src="/js/payment.js"></script>--%>
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

<div id="container">
    <div id="main">

        <article class="index-form">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4"></div>
                    <div class="col-sm-4">
                        <h2>Insert Credit Card Info</h2>
                        <h4>Sum to pay: ${cart.sum} PLN</h4>
                        <form method="post">
                            <div class="form-group">
                                <label for="cardholderName">Carholder name:</label>
                                <input class="form-control" type="text" name="cardholderName"/>
                            </div>
                            <div class="form-group">
                                <label for="cardNumber">Card number:</label>
                                <input class="form-control" type="text" name="cardNumber"/>
                            </div>
                            <div class="form-group">
                                <label for="billingAddress">Billing address:</label>
                                <input class="form-control" type="text" name="billingAddress"/>
                            </div>
                            <div class="form-group">
                                <label for="expirationDate">Expiration date:</label>
                                <input class="form-control" type="text" name="expirationDate"/>
                            </div>

                            <a class="btn btn-primary btn-block active" href="http://localhost:8080/payment/success">
                                <%--<button class="btn btn-primary btn-block active">Pay</button>--%>
                                Pay
                            </a>
                        </form>
                    </div>
                    <div class="col-sm-4"></div>
                </div>
            </div>
        </article>
    </div>
</div>

<%@ include file="../footer.jsp" %>
<%--<script src="/js/payment.js" type="text/javascript"></script>--%>
</body>
</html>
