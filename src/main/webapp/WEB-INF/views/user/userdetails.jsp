<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My Details</title>
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
        <h3 style="text-align: center">User Control Panel</h3>

        <div class="col-sm-2"></div>
        <div class="col-sm-4">
            <h2>Personal Details</h2>
            <table class="table table-condensed table-hover">
                <tr class="itemRow">
                    <td>First Name:</td>
                    <td class="stat">${userDetails.firstName}</td>
                </tr>
                <tr class="itemRow">
                    <td>Last Name:</td>
                    <td class="stat">${userDetails.lastName}</td>
                </tr>
                <tr class="itemRow">
                    <td>E-mail:</td>
                    <td class="stat">${userDetails.email}</td>
                </tr>
                <tr class="itemRow">
                    <td><a href="/admin/categories/edit/${order.id}">
                        <button class="btn btn-primary btn-block active">Change password</button>
                    </a>
                    </td>
                </tr>
            </table>
        </div>
        <div class="col-sm-4">
            <h2>Address Details</h2>
            <table class="table table-condensed table-hover">
                <c:choose>
                    <c:when test="${userDetails.address != null}">
                        <tr class="itemRow">
                            <td>Street Name:</td>
                            <td class="stat">${addressDetails.streetName}</td>
                        </tr>
                        <tr class="itemRow">
                            <td>House Number:</td>
                            <td class="stat">${addressDetails.houseNumber}</td>
                        </tr>
                        <tr class="itemRow">
                            <td>Flat Number:</td>
                            <td class="stat">${addressDetails.flatNumber}</td>
                        </tr>
                        <tr class="itemRow">
                            <td>Postal Code:</td>
                            <td class="stat">${addressDetails.postalCode}</td>
                        </tr>
                        <tr class="itemRow">
                            <td>City:</td>
                            <td class="stat">${addressDetails.city}</td>
                        </tr>
                        <tr class="itemRow">
                            <td>Country:</td>
                            <td class="stat">${addressDetails.country}</td>
                        </tr>
                        <tr class="itemRow">
                            <td><a href="/user/myaccount/details/edit-address/${addressDetails.id}">
                                <button class="btn btn-primary btn-block active">Edit address</button>
                            </a>
                            </td>
                        </tr>
                    </c:when>
                    <c:otherwise>
                        <tr class="itemRow">
                            <td>Street Name:</td>
                            <td class="stat">No Street Name</td>
                        </tr>
                        <tr class="itemRow">
                            <td>House Number:</td>
                            <td class="stat">No House Number</td>
                        </tr>
                        <tr class="itemRow">
                            <td>Flat Number:</td>
                            <td class="stat">No Flat Number</td>
                        </tr>
                        <tr class="itemRow">
                            <td>Postal Code:</td>
                            <td class="stat">No Postal Code</td>
                        </tr>
                        <tr class="itemRow">
                            <td>City:</td>
                            <td class="stat">No City</td>
                        </tr>
                        <tr class="itemRow">
                            <td>Country:</td>
                            <td class="stat">No Country</td>
                        </tr>
                        <tr class="itemRow">
                            <td><a href="/user/myaccount/details/add-address">
                                <button class="btn btn-primary btn-block active">Add address</button>
                            </a>
                            </td>
                        </tr>
                    </c:otherwise>
                </c:choose>
            </table>
        </div>
    </article>
</section>

<%@ include file="../footer.jsp" %>
</body>
</html>
