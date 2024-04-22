<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>직원 조회 및 삭제</h3>
<div style="background-color: lightcoral;">
    <c:if test="${not empty message}">
        ${message}
    </c:if>
</div>
<form action="/main29/sub2" name="employee">
    조회 할 ID 입력
    <input type="number" name="id">
    <button>조회</button>
</form>
<hr>
<c:if test="${empty employee}">직원 정보가 없습니다!</c:if>
<c:if test="${not empty employee}">
    <div> id <input type="number" readonly value="${employee.id}"></div>
    <div>lastName <input type="text" readonly value="${employee.lastName}"></div>
    <div>firstName <input type="text" readonly value="${employee.firstName}"></div>
    <div>photo <input type="text" readonly value="${employee.photo}"></div>
    <div>birthDate <input type="text" readonly value="${employee.birthDate}"></div>
    <div>notes <textarea cols="50" rows="5">${employee.notes}</textarea></div>
    <hr>


    <form action="/main29/sub2" method="post" onsubmit="return confirm('삭제하시겠습니까?')">
        <div>삭제할 ID 입력
            <input type="text" name="id" value="${empolyee.id}">
            <button>삭제</button>
        </div>
    </form>
</c:if>
</body>
</html>
