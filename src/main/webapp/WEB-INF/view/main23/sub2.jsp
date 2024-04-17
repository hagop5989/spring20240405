<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>고객 이름들(CustomerName)</h3>
<tr>
    <c:forEach items="${nameList2}" var="name" varStatus="status">
        <td>
                ${status.count}. ${name}<br>
        </td>
    </c:forEach>
</tr>
</body>
</html>
