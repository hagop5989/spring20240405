<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>고객 조회 및 수정</h3>
<form>
    번호
    <input type="number" name="id">
    <button>조회</button>
</form>
<hr>
<div>메세지 :${message}</div>
<hr>
<c:if test="${empty customer}">
    조회된 직원이 없습니다.
</c:if>
<c:if test="${not empty customer}">
    <h3>${customer.id}번 직원</h3>
    <form action="/main32/sub7/update" method="post">
        <div>
            CustomerName
            <input type="text" value="${customer.name}" name="name">
        </div>
        <div>
            ContactName
            <input type="text" value="${customer.contactName}" name="contactName">
        </div>
        <div>
            Address
            <input type="text" value="${customer.address}" name="address">
        </div>
        <div>
            City
            <input type="text" value="${customer.city}" name="city">
        </div>
        <div>
            PostalCode
            <input type="text" value="${customer.postalCode}" name="postalCode">
        </div>
        <div>
            Country
            <input type="text" value="${customer.country}" name="country">
        </div>

        <input type="hidden" value="${customer.id}" name="id">
        <input type="submit" value="전송">
    </form>
</c:if>

</body>
</html>
