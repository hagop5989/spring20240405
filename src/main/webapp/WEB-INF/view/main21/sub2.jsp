<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--form*2>input:s--%>
<form action="/main21/sub1" method="get">
    <input type="submit">
</form>
<form action="/main21/sub1" method="post">
    <input type="submit">
</form>

<%--form*2>input:s--%>
<form action="/main21/sub3" method="get"><input type="submit"></form>
<form action="/main21/sub3" method="post"><input type="submit"></form>

<form action="/main21/sub4"><input type="submit"></form>
<form action="/main21/sub4" method="post"><input type="submit"></form>

<form action="/main21/sub5"><input type="submit" value="Get 방식"></form>
<form action="/main21/sub5" method="post"><input type="submit" value="Post 방식"></form>


</body>

</html>
