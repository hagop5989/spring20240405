<%@ page import="com.study.controller.JavaTest" %>
<%@ page import="java.util.Random" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="static java.lang.Math.random" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

    Random random = new Random();
    int age = random.nextInt(100);
    ArrayList<String> list = new ArrayList<>();
    list.add("ABC");
    list.add("손흥민");
    list.add("박지성");
    list.add("김민재");
    String target = list.get(random.nextInt(4));
    String name = JavaTest.setName(target);
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>sub8 파일입니다.</h1>
Hello, my name is <%= name %>. I am <%= age %> years old.
</body>
</html>
