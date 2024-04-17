<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>

<style>
    
</style>
<body>
<form action="/main25/sub6">
    이름
    <input type="text" placeholder="조회할 고객 이름을 입력하세요." name="search">
    <input type="submit" value="조회">
</form>
<c:forEach items="${list}" var="elem" varStatus="status">
    <table>
        <tr>
                ${status.count}. ${elem}
        </tr>
    </table>
</c:forEach>
</body>
</html>
