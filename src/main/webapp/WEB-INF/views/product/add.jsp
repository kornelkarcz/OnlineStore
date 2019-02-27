<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding product</title>
    <link rel="stylesheet" href="/css/style.css">

</head>
<body>
<h1>Add a product</h1>

<%--<table>--%>
<%--<form:form method="post" modelAttribute="product">--%>
<%--<tr>--%>
<%--<td>Name</td>--%>
<%--<td><form:input path="name"/></td>--%>
<%--<td><form:errors path="name"/></td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--<td>EAN Number</td>--%>
<%--<td><form:input path="eanNumber"/></td>--%>
<%--<td><form:errors path="eanNumber"/></td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--<td>Category</td>--%>
<%--<td><form:select path="category">--%>
<%--<form:option value="0" label="Select a category"/>--%>
<%--<form:options items="${categories}" itemLabel="name" itemValue="id"/>--%>
<%--</form:select></td>--%>
<%--<td><form:errors path="category"/></td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--<td>Manufacturer</td>--%>
<%--<td><form:input path="manufacturer"/></td>--%>
<%--<td><form:errors path="manufacturer"/></td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--<td>Price</td>--%>
<%--<td><form:input path="price"/></td>--%>
<%--<td><form:errors path="price"/></td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--<td>Description</td>--%>
<%--<td><form:textarea path="description"/></td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--<td><input type="submit" value="Submit"></td>--%>
<%--</tr>--%>
<%--</form:form>--%>
<%--</table>--%>

<div class="form-style-10">
    <h1>Add product!</h1>
    <form:form method="post" modelAttribute="product">
        <div class="section">Product Info</div>
        <div class="inner-wrap">
            <label>Name <form:input path="name" type="text" name="field1"/></label>
            <label>EAN Number <form:input path="eanNumber" type="text" name="field2"/></label>
            <label>Category <form:select path="category">
                <form:option value="0" label="Select a category"/>
                <form:options items="${categories}" itemLabel="name" itemValue="id"/>
            </form:select></label>
            <label>Manufacturer <form:input path="manufacturer" type="text" name="field3"/></label>
            <label>Price <form:input path="price" type="text" name="field4"/></label>
            <label>Description <form:input path="description" type="text" name="field5"/></label>
        </div>

        <div class="button-section">
            <input type="submit" value="Add" name="Sign Up"/>
        </div>
    </form:form>
</div>

<div id="footerdiv">
    <footer id="footer">
        <div class="wrapper">
            <nav>
                <ul>
                    <li><a href="">Homepage</a></li>
                    <li><a href="">Contact us</a></li>
                    <li><a href="">About us</a></li>
                    <li><a href="">Forum</a></li>
                </ul>
            </nav>
        </div>
    </footer>
</div>


</body>
</html>
