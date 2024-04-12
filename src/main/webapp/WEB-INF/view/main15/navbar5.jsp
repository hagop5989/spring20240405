<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<c:set var="attr1" value="page value2" scope="page"/>

<div>
    <div>
        <%--page value2--%>
        ${attr1} / page value2 나오게하기
    </div>
    <div>
        <%--request value1--%>
        ${requestScope.attr1} / request value1 나오게 하기
    </div>
</div>
