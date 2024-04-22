<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${not empty message}">
    <div style="background-color:skyblue;">${message}</div>
</c:if>
<h3>직원 조회 및 수정</h3>
<form action="/main30/sub2">
    <input type="text" name="id">
    <button>조회</button>
    <c:if test="${empty employee}">고객 정보가 없습니다!</c:if>
    <c:if test="${not empty employee}">
</form>
<form action="/main30/sub2/update" method="post">
    <div> id <input type="number" name="id" value="${employee.id}" readonly></div>
    <div>lastName <input type="text" name="lastName" value="${employee.lastName}"></div>
    <div>firstName <input type="text" name="firstName" value="${employee.firstName}"></div>
    <div>photo <input type="text" name="photo" value="${employee.photo}"></div>
    <div>birthDate <input type="text" name="birthDate" value="${employee.birthDate}"></div>
    <div>notes <textarea name="notes" id="" cols="30" rows="10">${employee.notes}</textarea></div>

    </c:if>
    <div><input type="submit" value="수정"></div>
</form>
</body>
</html>
