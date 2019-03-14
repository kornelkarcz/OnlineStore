<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Payment details</title>
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

                    <h1>Payment details</h1>

                    <tr class="info">
                        <th>Payment Id</th>
                        <th>Product Id</th>
                        <th>Name</th>
                        <th>Manufacturer</th>
                        <th>Quantity</th>
                        <th>Price</th>
                        <th>Sum</th>
                        <th>Order Id</th>
                        <th>Order Date</th>
                    </tr>

                    <c:forEach items="${paymentDetails}" var="paymentDetail">
                        <tr class="itemRow">
                            <td>${paymentDetail.paymentId}</td>
                            <td>${paymentDetail.productId}</td>
                            <td>${paymentDetail.productName}</td>
                            <td>${paymentDetail.productManufacturer}</td>
                            <td>${paymentDetail.quantity}</td>
                            <td>${paymentDetail.price}</td>
                            <td>${paymentDetail.sum}</td>
                            <td>${paymentDetail.orderId}</td>
                            <td>${paymentDetail.orderDate}</td>
                        </tr>
                    </c:forEach>

                </table>

                <div class="col-sm-4" style="text-align: center; padding-top: 50px; font-size: 16px">
                    Total order sum: ${payment.sum}
                </div>
                <div class="col-sm-4"></div>
                <div class="col-sm-4" style="padding-top: 50px">
                    <a class="btn btn-primary btn-block active" href="http://localhost:8080/payment/allpayments">Back to all payments</a>
                </div>

            </div>
        </article>
    </article>
</section>


<%@ include file="../footer.jsp" %>
</body>
</html>
