<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:import url="/WEB-INF/fragment/navbar5.jsp">
    <c:param name="current" value="candy"/>
</c:import>
<h3>사탕</h3>
<p>사탕 설명</p>

<form action="" >
    <input type="text" name="product" value="사탕" readonly>
    <input type="number" value="1" min="1" max="10" name="quantity">
    <button>장바구니 추가</button>
</form>
</body>
</html>
