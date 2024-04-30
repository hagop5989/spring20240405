<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>새로운 로그인 페이지 입니다!</h1>

<form action="/login" method="post">
    <div><input type="text" name="username"></div>
    <div><input type="password" name="password"></div>
    <div>
        <button>로그인</button>
    </div>
</form>
</body>
</html>
