<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<style>
    a {
        border: 1px solid black;
        text-decoration: none;
    }

    .menu-item {
        border: 1px solid black;
    }

    .active {
        background-color: lightblue;
    }
</style>
<div>
    <a class="${param.cur eq 'sub12' ? 'active' : ''}" href="/main15/sub12">sub12</a>
    <a class="${param.cur eq 'sub13' ? 'active' : ''}" href="/main15/sub13">sub13</a>
</div>
