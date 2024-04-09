<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>if</h3>
<c:if test="${age >= 20}">

    <p>투표 가능</p>

</c:if>

<c:if test="${age < 20}">

    <p>투표 불가능</p>

</c:if>


<%--products 속성이 빈 리스트면--%>
<c:if test="${empty products}">
    <p>상품이 없습니다.</p>
</c:if>
<c:if test="${!empty products}">
    <p>
            ${products}
        <%

        %>
    </p>
</c:if>
<%--상품이 없습니다 출력--%>
<%--아니면 2개의 요소를 출력--%>

<c:if test="${5 < 8 && 9 > 2}" var="result"> <%--var에 잠깐 연산결과를 저장, page영역의 attribute에 들어감--%>
    <p>출력1</p>
</c:if>
<c:if test="${not result}">
    <p>출력2</p>
</c:if>

<c:if test="${member.country == 'korea' && member.age >= 20}" var="result2">
    <p>한국인이고 20살 이상이면 투표 가능</p>
</c:if>
<c:if test="${!result2}">
    <p>투표 불가능
        <br>
        country: ${member["country"]} , age :${member.age}</p>
</c:if>

</body>
</html>
