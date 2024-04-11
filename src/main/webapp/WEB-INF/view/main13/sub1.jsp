<%@ page import="java.util.Random" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%-- set : attribute 추가--%>
<%--<c:set var="" value=""></c:set> 형식 --%>
<c:set var="attr1" value="손흥민"></c:set>
<c:set var="attr2" value="이강인"></c:set>
<c:set var="attr3" value="김하성" scope="page"></c:set> <%--scope 기본값은 page--%>


<p>${attr1}</p>
<%-- 이강인 --%>
<p>${attr2}</p>
<p>${attr3}</p>

<hr>
<c:set target="${obj1}" property="address" value="강남"></c:set> <%--target: 변경할 propert 를 가지고 있는 객체이름--%>
<c:set target="${obj1}" property="age" value="50"/>
<p>${obj1.address}</p>
<p>${obj1.city}</p>
<p>${obj1.age}</p>


</body>
</html>
