<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pay for your order</title>
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


        <article class="index-form">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4"></div>
                    <div class="col-sm-4">
                        <h2>Insert Credit Card Info</h2>
                        <h4>Sum to pay: ${cart.sum} PLN</h4>
                        <form method="post">
                            <div class="form-group">
                                <label for="cardholderName">Cardholder name:</label>
                                <input class="form-control" type="text" name="cardholderName"
                                       placeholder="Cardholder Name"/>
                            </div>
                            <div class="form-group">
                                <label for="cardNumber">Card number:</label>
                                <input class="form-control" type="text" name="cardNumber" placeholder="Card number"
                                data-mask="0000 0000 0000 0000"/>
                            </div>
                            <div class="card-grp">
                                <div class="card-item">
                                    <label for="expirationDate">Expiration date:</label>
                                    <input class="form-control" type="text" name="expirationDate" placeholder="00 / 00"
                                    data-mask="00 / 00"/>
                                </div>
                                <div class="card-item">
                                    <label for="CVC">CVC:</label>
                                    <input class="form-control" type="text" name="cvc" placeholder="000"
                                    data-mask="000"/>
                                </div>
                            </div>

                            <a class="btn btn-primary btn-block active" href="http://localhost:8080/payment/success">
                                Pay
                            </a>
                        </form>
                    </div>
                    <div class="col-sm-4"></div>
                </div>
            </div>
        </article>

    </article>
</section>

<%@ include file="../footer.jsp" %>
<%--<script src="/js/payment.js" type="text/javascript"></script>--%>

<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>

</body>
</html>
