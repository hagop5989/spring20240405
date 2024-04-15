<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Main20_sub2</title>
</head>
<body>
<%-- value : 기본 값--%>
<div><input type="text" value="jordan"></div>
<%-- readonly : 기본 값 변경 불가--%>
<div><input type="text" value="readonly" readonly></div>
<%-- size : 표시되는 인풋의 길이 --%>
<div><input type="text" value="다섯개만출력가능" size="5"></div>
<%-- maxlength : 입력값 길이 제한 --%>
<div><input type="text" value="다섯개만입력가능" maxlength="5"></div>
<%-- min : 최소값, max : 최대값 --%>
<div><input type="text" value="최소값10최대값20" min="10" max="20"></div>
<%-- multiple : 여러개 선택 가능--%>
<div><input type="file" value="여러개 선택" multiple></div>
<%-- placeholder: 입력값 힌트 주기 --%>
<div><input type="text" placeholder="입력값 힌트 주기"></div>

</body>
</html>
