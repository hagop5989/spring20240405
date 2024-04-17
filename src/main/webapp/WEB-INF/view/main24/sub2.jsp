<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<style>
    table {
        width: 100%;
        border-collapse: collapse; /* 테이블 선들이 겹쳐 보이도록 */
    }

    th, td {
        border: 1px solid #ddd; /* 선의 색과 두께 조정 */
        padding: 8px; /* 셀 패딩 */
        text-align: left; /* 텍스트 정렬 */
    }

    tr:nth-child(even) {
        background-color: lightslategrey; /* 짝수 줄은 회색 배경 */
    }

    tr:hover {
        background-color: #ddd; /* 마우스 오버시 배경색 변경 */
    }
</style>
<body>
<h3>고객 목록</h3>
<table>
    <thead>
    <tr>
        <td>No</td>
        <td>이름</td>
        <td>도시</td>
        <td>국적</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${customers}" var="customer" varStatus="status">
    <tr>
    <tbody>
    <td>${status.count}</td>
    <td>${customer.customerName}</td>
    <td>${customer.city}</td>
    <td>${customer.country}</td>
    </tbody>
    </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
