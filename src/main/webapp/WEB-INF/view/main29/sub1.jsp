<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${not empty message}">
    <div style="background-color:skyblue;"> ${customer.id} ${message}</div>
</c:if>
<h3>고객 조회</h3>
<form action="">
    고객 번호
    <input type="number" name="id">
    <button>조회</button>
</form>
<hr>
<c:if test="${empty cusomter}">고객 정보가 없습니다!</c:if>
<c:if test="${not empty customer}">
    <div>번호 <input type="number" readonly value="${customer.id}"></div>
    <div>이름 <input type="number" readonly value="${customer.name}"></div>
    <div>계약명 <input type="number" readonly value="${customer.contactName}"></div>
    <div>주소 <input type="number" readonly value="${customer.address}"></div>
    <div>도시 <input type="number" readonly value="${customer.city}"></div>
    <div>우편번호 <input type="number" readonly value="${customer.postalCode}"></div>
    <div>국가 <input type="number" readonly value="${customer.country}"></div>


    <form action="/main29/sub1" method="post">
        <div style="display: none;">
            <input type="text" name="id" value="${customer.id}">
        </div>
        <button>삭제</button>
    </form>
</c:if>
</body>
</html>
