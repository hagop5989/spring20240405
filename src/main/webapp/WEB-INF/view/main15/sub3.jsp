<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<c:set var="current1" value="sub" scope="page"/>
<%-- view 간 값 전달 시, request 영역 attribute 를 활용하면 됨--%>
<c:set var="current2" value="sub3" scope="request"/>
<c:import url="navbar2.jsp"></c:import>
<body>
${current1} ${current2}
sub3의 내용...
</body>
</html>
