<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>choose, when, otherwise</h3>
<p>1번째 true 를 만나면 값을 반환</p>
<c:choose>
    <c:when test="true">
        <p>1번째 when</p>
    </c:when>
    <c:when test="true">
        <p>2번째 when</p>
    </c:when>
    <c:otherwise>
        <p>otherwise 부분</p>
    </c:otherwise>
</c:choose>

<c:choose>
    <c:when test="${age<=3}">
        <p>어린이용 콘텐츠 ${age}</p>
    </c:when>
    <c:when test="${age<=13}">
        <p>청소년용 콘텐츠 ${age}</p>
    </c:when>
    <c:otherwise>
        <p>성인용 콘텐츠 ${age}</p>
    </c:otherwise>
</c:choose>

</body>
</html>
