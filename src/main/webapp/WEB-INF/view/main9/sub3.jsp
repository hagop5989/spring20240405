<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>${member1.age}</h1>
<h1>${member1.address}</h1>
<h1>${member1.city}</h1>
<h1>${member2.age}</h1>
<h1>${member2.address}</h1>
<h1>${member2.city}</h1>
<hr>

<h1>${member1["age"]}</h1>
<h1>${member1["address"]}</h1>
<h1>${member1["city"]}</h1>
<h1>${member2["age"]}</h1>
<h1>${member2["address"]}</h1>
<h1>${member2["city"]}</h1>

</body>
</html>
