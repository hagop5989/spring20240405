<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Main20_sub1</title>
</head>
<body>
<%-- 텍스트 인풋 --%>
<div><input type="text"></div>
<hr>
<%-- 숫자 --%>
<div><input type="number"></div>
<hr>
<%-- 날짜 --%>
<div><input type="date"></div>
<hr>
<%-- 날짜-시간 --%>
<div><input type="datetime-local"></div>
<hr>
<%-- 파일 --%>
<div><input type="file"></div>
<hr>
<%-- 암호 --%>
<div><input type="password"></div>
<hr>
<div>
    <%-- 라디오 버튼, 같은 네임 attribute를 가져야 그 중 한개만 선택 가능케 됨--%>
    <%-- div*3>input[type=radio]--%>
    <div><input type="radio" name="food">1</div>
    <div><input type="radio" name="food">2</div>
    <div><input type="radio" name="food">3</div>
</div>
<hr>
<%-- 체크박스, 이름이 같아도 라디오 버튼과 다르게 동시에 여러개 선택가능 --%>
<%--div>div*3>input[type=checkbox][name=food]--%>
<div>
    <div><input type="checkbox" name="food">a</div>
    <div><input type="checkbox" name="food">b</div>
    <div><input type="checkbox" name="food">c</div>
</div>
</body>
</html>
