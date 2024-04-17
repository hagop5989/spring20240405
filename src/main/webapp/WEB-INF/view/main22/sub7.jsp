<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:set var="test" value="${param.id == param.password}"/>
<c:if test="${test}">
    <div style="padding: 20px; background-color: lightblue; font-size: 3rem;">일치합니다.</div>
</c:if>
<c:if test="${!test}">
    <div style="padding: 20px; background-color: lightcoral; font-size: 3rem;">불일치합니다.</div>
</c:if>
<h1>
    id: ${param.id}<br>
    pw: ${param.password}<br>
    test : ${test}
</h1>
</body>
</html>
