<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<c:set var="attr1" value="page value1" scope="page"/>
<c:set var="attr1" value="request value1" scope="request"/>
<c:import url="navbar5.jsp"/>
<body>
<div>
    <div>
        <%--page value1--%>
        ${attr1} // sub8 - page value1 나오게하기
    </div>
    <div>
        ${requestScope.attr1} // sub8 - request value1 나오게하기
        <%--request value1--%>
    </div>
</div>

</body>
</html>
