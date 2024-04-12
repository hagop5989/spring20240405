<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        .menu-item {
            border: 1px solid black;
        }

        .active {
            font-style: italic;
        }
    </style>
</head>
<body>
<div>
    <a class="${current eq 'sub5' ? 'active' : ''}" href="/main15/sub5">
        <span class="menu-item">sub5</span>
    </a>
    <a class="${current eq 'sub6' ? 'active' : ''}" href="/main15/sub6">
        <span class="menu-item">sub6</span>
    </a>
</div>
</body>
</html>
