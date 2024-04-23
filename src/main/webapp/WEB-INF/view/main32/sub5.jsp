<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div>${message}</div>
직원 입력
<form action="/main32/sub5" method="post">
    <div>lastname : <input type="text" name="lastName"></div>
    <div>firstname : <input type="text" name="firstName"></div>
    <div>birthDate : <input type="date" name="birthDate"></div>
    <div>photo : <input type="text" name="photo"></div>
    <div>notes : <input type="text" name="notes"></div>
    <div><input type="submit" value="입력"></div>
</form>

</body>
</html>
