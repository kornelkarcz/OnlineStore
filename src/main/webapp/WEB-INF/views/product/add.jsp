<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <title>Adding product</title>
    <%@ include file="../dependecies.jsp" %>

</head>
<body>
<%@ include file="../header.jsp" %>


<div id="container>">
    <div id="main">
        <article class="index-form">
            <div class="container">
                <div class="row">
                    <%--sm-4 chodzi o rozmiar tabletu lub tel, bootrap ma 12 kolumn, w ten sposob dzielimy go na rowne 3 czesci
                    wiec formularz pojawi nam sie na srodku jezeli zaczniemy uzupelnia jego srodkowy div w tym przypadku--%>
                    <div class="col-sm-4"></div>
                    <div class="col-sm-4">
                        <h2>Add a product</h2>
                        <form:form method="post" modelAttribute="product">
                            <div class="form-group">
                                <label for="name">Name:</label>
                                <form:input path="name" class="form-control" type="text" name="name"/>
                            </div>
                            <div class="form-group">
                                <label for="eanNumber">EAN Number:</label>
                                <form:input path="eanNumber" class="form-control" type="text" name="eanNumber"/>
                            </div>
                            <div class="form-group">
                                <label for="category">Category:</label>
                                <form:select class="form-control" path="category">
                                    <form:option value="0" label="Select a category"/>
                                    <form:options items="${categories}" itemLabel="name" itemValue="id"/>
                                </form:select>
                            </div>
                            <div class="form-group">
                                <label for="manufacturer">Manufacturer:</label>
                                <form:input path="manufacturer" class="form-control" type="text" name="manufacturer"/>
                            </div>
                            <div class="form-group">
                                <label for="price">Price:</label>
                                <form:input path="price" class="form-control" type="text" name="price"/>
                            </div>
                            <div class="form-group">
                                <label for="description">Description:</label>
                                <form:textarea path="description" class="form-control"/>
                            </div>
                            <button class="btn btn-primary btn-block active">Submit</button>
                        </form:form>
                    </div>
                    <div class="col-sm-4"></div>
                </div>
            </div>
        </article>
    </div>
</div>

<%@ include file="../footer.jsp" %>
</body>
</html>
