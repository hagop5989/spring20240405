<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach begin="1" end="3" var="num">
    <p>반복 출력 코드 ${num}</p>
</c:forEach>
<hr>
<c:forEach items="${myList}" var="elem"> <%--반복할 attribute 를 입력--%>
    <p>${elem}</p>
</c:forEach>
<hr>
<c:forEach items="${food}" var="elem"> <%--반복할 attribute 를 입력--%>
    <p>${elem}</p>
</c:forEach>
<hr>
<c:forEach items="${food}" var="elem" begin="2" end="3"> <%--여기선 begin,end가 index--%>
    <p>${elem}</p>
</c:forEach>
<hr>
<c:forEach items="${myMap}" var="entry"> <%--순서 보장받으려면 List사용--%>
    <p>${entry.key} : ${entry.value}</p>
</c:forEach>
<hr>
<c:forEach items="${cars}" var="entry" begin="2" end="2"> <%--순서 보장받으려면 List사용--%>
    <p> ${entry.key} : ${entry.value}</p>
</c:forEach>
<hr>
<c:forEach items="${myList2}" var="elem" varStatus="status" step="1">
    ${status.index} ${elem} <br>

</c:forEach>
<hr>
<c:forEach items="${myMap2}" var="entry">
    ${entry.key} : ${entry.value},
</c:forEach>
<hr>

</body>
</html>
