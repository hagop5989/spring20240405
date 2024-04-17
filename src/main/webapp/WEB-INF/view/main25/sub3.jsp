<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>상품명으로 상품 조회</h3>
<form action="/main25/sub3">
    <input type="text" name="name" placeholder="상품명을 입력하세요!">
    <input type="submit" value="조회">
</form>
<hr>
<div>
    <c:forEach items="${products}" var="product">
        <h4>${product.id}번 상품</h4>
        <p>상품명 :
        <div>${product.name}"</div>
        <p>단위 :
        <div>${product.unit}"</div>
        <p>가격:
        <div>${product.price} 달러</div>
        </p>
    </c:forEach>
</div>
</body>
</html>
