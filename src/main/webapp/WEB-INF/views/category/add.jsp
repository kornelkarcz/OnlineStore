<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding a category</title>
    <%@ include file="../dependecies.jsp" %>
</head>
<body>
<%@ include file="../header.jsp" %>
<div id="container">
    <div id="main">
        <h1>Add a category</h1>

        <article class="index-table">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4"></div>
                    <div class="col-sm-4">
                        <form:form method="post" modelAttribute="category">
                            <div class="form-group">
                                <label for="name">Name:</label>
                                <form:input path="name" class="form-control" type="text" name="name"/>
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
