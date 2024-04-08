<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%-- Map의 값 가져오기 --%>
<%-- attribute["key"]--%>
<h1>${names["son"]}</h1>
<h1>${names["lee"]}</h1>
<h1>${names["kim"]}</h1>
<br>

<%-- attributeName.key --%>
<h1>${names.son}</h1>
<h1>${names.lee}</h1>
<h1>${names.kim}</h1>

<h1>${others["손흥민"]}</h1>
<h1>${others["lee kang in"]}</h1>
</body>
</html>
