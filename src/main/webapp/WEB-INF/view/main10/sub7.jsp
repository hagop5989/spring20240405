<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>
    <%--p*3>ul>li*3--%>
    <p>
    <ul>
        <li>${cars[0].modelName}</li>
        <li>${cars[0].price}</li>
        <li>${cars[0].color}</li>

    </ul>
    </p>
    <p>
    <ul>
        <li>${cars[1].modelName}</li>
        <li>${cars[1].price}</li>
        <li>${cars[1].color}</li>
    </ul>
    </p>
    <p>
    <ul>
        <li>${cars[2].modelName}</li>
        <li>${cars[2].price}</li>
        <li>${cars[2].color}</li>
    </ul>
    </p>


</h1>
</body>
</html>
