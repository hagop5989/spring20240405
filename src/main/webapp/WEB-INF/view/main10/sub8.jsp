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
        <h1>${myList[0].name}</h1>
        <li>${myList[0].cities}</li>
        <li>${myList[0].cities[0]}</li>
        <li>${myList[0].cities[1]}</li>
        <li>${myList[0].cities[2]}</li>
    </ul>
    </p>
    <p>
    <ul>
        <h1>${myList[1].name}</h1>
        <li>${myList[1].cities}</li>
        <li>${myList[1].cities[0]}</li>
        <li>${myList[1].cities[1]}</li>
    </ul>
    </p>

</h1>
</body>
</html>