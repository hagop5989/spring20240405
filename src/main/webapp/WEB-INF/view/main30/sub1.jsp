<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<style>
    div {
        padding: 5px;
    }

    div > span {
        width: 200px;
        display: block;
    }
</style>
<body>
<h3>고객 정보 수정</h3>

<c:if test="${not empty message}">
    <div>${message}</div>
</c:if>
<form action="">
    번호
    <input type="text" name="id">
    <button>조회</button>
</form>
<hr>

<form action="/main30/sub1/update" method="post">
    <div><span>번호</span><input type="text" name="id" value="${customer.id}" readonly></div>
    <div><span>이름</span><input type="text" name="name" value="${customer.name}"></div>
    <div><span>계약명</span><input type="text" name="contactName" value="${customer.contactName}"></div>
    <div><span>주소</span><input type="text" name="address" value="${customer.address}"></div>
    <div><span>도시</span><input type="text" name="city" value="${customer.city}"></div>
    <div><span>우편번호</span><input type="text" name="postalCode" value="${customer.postalCode}"></div>
    <div><span>국가</span><input type="text" name="country" value="${customer.country}"></div>

    <div><input type="submit" value="수정"></div>
</form>
</body>
</html>
