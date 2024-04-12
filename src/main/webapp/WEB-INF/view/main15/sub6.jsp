<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<c:set var="current" value="sub6" scope="request"/>
<c:import url="navbar3.jsp"/>
<body>
<div>sub6 콘텐츠</div>
${current}
</body>
</html>
