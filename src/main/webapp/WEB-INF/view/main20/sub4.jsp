<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Main20_sub4</title>
</head>
<body>
<%-- 어디로 무엇을 어떻게 보내라 --%>
<%-- action : 어디로 --%>
<%-- method : 어떻게 --%>
<form action="/main20/sub5">
    <%-- name : 무엇을 --%>
    <input type="text" name="player" placeholder="이름을 입력해 주세요!">
    <input type="submit">
</form>
<form action="/main20/sub6">
    주소 :
    <input type="text" name="address">
    양식 :
    <input type="text" name="type">
    <input type="submit">
</form>
<hr>
<form action="/main20/sub8">

    <div>이름
        <input type="text" name="name">
    </div>
    <div>
        나이
        <input type="number" name="age" min="1" max="100"></div>
    <div>
        생년월일
        <input type="date" name="birth">
    </div>
    <div>
        주소
        <input type="text" name="address">
    </div>
    <div>
        취미
        <input type="text" name="hobby">
    </div>

    <div><input type="submit"></div>
</form>

<hr>

<form action="/main20/sub9">
    <div>city
        <input type="text" name="city">
    </div>
    <div>
        address
        <input type="number" name="address" min="1" max="100"></div>
    <div>
        title
        <input type="text" name="title">
    </div>
    <div>
        content
        <input type="text" name="content">
    </div>

    <div><input type="submit"></div>
</form>

</body>
</html>
