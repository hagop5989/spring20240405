<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div>${requestScope.name}</div>
<div>${sessionScope.city}</div>
<div>${city}</div> <%-- sessionScope 생략--%>


<hr>
<div>${model}</div>
<div>${requestScope.model}</div>
<div>${sessionScope.model}</div>
</body>
</html>
