<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body style="font-size: 3rem;">
<p>${data}</p>
<%--<p>${데이타}</p>--%>
<p>${"데이타"}</p> <%--데이타--%>
<p>${["데이타"]}</p> <%--데이타--%>
<p>${"3"}</p><%--3--%>
<hr>
<p>${requestScope.data}</p><%--값 1--%>
<p>${requestScope[data]}</p><%--값 1--%>
<p>${requestScope["데이타"]}</p><%--값 2--%>
<p>${requestScope["3"]}</p><%--값 333--%>

</body>
</html>
