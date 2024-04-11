<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach items="${myList}" var="item" varStatus="status">  <%--루프의 status 를 확인--%>
    <div style="border: 1px solid black; margin: 5px; ">
        <p>index : ${status.index}</p>
        <p>count : ${status.count}</p> <%--루프의 횟수--%>
        <p>first : ${status.first}</p> <%--첫번째 루프인지?--%>
        <p>last : ${status.last}</p> <%--마지막 루프인지?--%>
        <p>current : ${status.current}</p> <%--현재 아이템?--%>
    </div>
</c:forEach>

<hr>
<c:forEach items="${myList}" varStatus="status" var="item">
    ${item}
    <c:if test="${not status.last}">
        ,
    </c:if>
</c:forEach>

<hr>
<%--기술들: java, css, react--%>
<c:forEach items="${myList}" varStatus="status" var="item">
    <c:if test="${status.first}">
        기술들:
    </c:if>
    ${item}
    <c:if test="${not status.last}">
        ,
    </c:if>
</c:forEach>


</body>
</html>
