<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding product for lease</title>
    <%@ include file="../dependecies.jsp" %>
</head>
<body>
<%@ include file="../header.jsp" %>

<table>
    <form:form method="post" modelAttribute="leaseProduct">
        <tr>
            <td>Name</td>
            <td><form:input path="name"/></td>
            <td><form:errors path="name"/></td>
        </tr>
        <tr>
            <td>EAN Number</td>
            <td><form:input path="eanNumber"/></td>
            <td><form:errors path="eanNumber"/></td>
        </tr>
        <tr>
            <td>Category</td>
            <td><form:select path="category">
                <form:option value="0" label="Select a category"/>
                <form:options items="${categories}" itemLabel="name" itemValue="id"/>
            </form:select></td>
            <td><form:errors path="category"/></td>
        </tr>
        <tr>
            <td>Manufacturer</td>
            <td><form:input path="manufacturer"/></td>
            <td><form:errors path="manufacturer"/></td>
        </tr>
        <tr>
            <td>Price</td>
            <td><form:input path="price"/></td>
            <td><form:errors path="price"/></td>
        </tr>
        <tr>
            <td>Description</td>
            <td><form:textarea path="description"/></td>
        </tr>
        <tr>
            <td><input type="submit" value="Submit"></td>
        </tr>
    </form:form>
</table>
<%@ include file="../footer.jsp" %>
</body>

</html>
