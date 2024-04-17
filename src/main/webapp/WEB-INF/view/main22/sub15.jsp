<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${not empty message}">
    <div style="padding: 20px; background-color:lightblue;">${message}</div>
</c:if>
<%--h1>lorem3^p>lorem--%>
<h1>Lorem ipsum dolor.</h1>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum id, inventore necessitatibus odit quidem repellat
    tenetur ullam velit voluptatum. Autem cum dolorem et ipsum omnis pariatur perferendis quidem repellat rerum!</p>
</body>
</html>
