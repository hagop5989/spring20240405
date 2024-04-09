<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>Expression Language</p>
<p>간단한 연산 사용 가능</p>
<p>산술연산, 논리연산, 비교연산, 삼항연산</p>

<h3>산술연산 , +, -, *, /, %</h3>
<p>${5 + 3}</p>
<%--8--%>
<p>${7 - 3}</p>
<%--4--%>
<p>${8 * 3}</p>
<%--24--%>
<p>${6 / 2}</p>
<%--3--%>
<p>${7 / 2}</p>
<%--3.5나옴, Java문법 아님--%>
<p>${7 div 2}</p>
<%--7/2, 키워드 연산자 div사용--%>
<p>${7 % 2}</p>
<%--1--%>
<p>${15 mod 4}</p>
<%--3, 키워드 연산자 mod사용--%>
<p>${"3" + "4"}</p>
<%--7, 문자열 사용 산술연산 가능--%>
<%--<p>${"three" + "four"}</p>--%>
<%-- 이건 오류남--%>
<p>${num1} + ${num2} = ${num1 + num2}</p>
<%--50 + 20 = 70, 수를 문자("20")로 쓰더라도 산술연산--%>

<h3>비교연산 >, <, <=, =</h3>
<p>${5 > 3}</p>
<%--true--%>
<p>${5 gt 3}</p>
<%--GreaterThan ,true--%>
<p>${5 < 3}</p>
<%--false--%>
<p>${5 lt 3}</p>
<%--LessThen,false--%>
<p>${5 >= 3}</p>
<%--Greater than Equal, true--%>
<p>${5 ge 3}</p>
<%--true--%>
<p>${5 <= 3}</p>
<%--false--%>
<p>${5 le 3}</p>
<%-- Less than Equal,false--%>
<p>${5 == 3}</p>
<%--false--%>
<p>${5 eq 3}</p>
<%--Equal, false--%>

<%--유니코드 비교--%>
<p>${"hello" < "spring"}</p>
<%--true, hello의 유니코드가 더 빠름--%>
<p>${"hello" < "Spring"}</p>
<%--false, 대문자의 유니코드가 더 빠름--%>
<p>${"11" < "2"}</p>
<%--각 문자의 첫번째 것 기준 비교하여 2가 더 큼,true--%>
<p>${11 < 2}</p>
<%--false--%>

<%--수랑 수가 아닌것을 연산하면 수로 바뀜--%>
<p>${"11" < 2}</p>
<%--false--%>
<p>${11 < 2}</p>
<%--false--%>

<h3>논리연산 && , ||</h3>
<h4>&& and</h4>
<p>${true && true}</p>
<%--true--%>
<p>${true && false}</p>
<%--false--%>
<p>${false && true}</p>
<%--false--%>
<p>${false && false}</p>
<%--false--%>

<h4>|| or</h4>
<p>${true && true}</p>
<%--true--%>
<p>${true && false}</p>
<%--false--%>
<p>${false && true}</p>
<%--false--%>
<p>${false && false}</p>
<%--false--%>

<h3>논리연산 && , ||, !</h3>
<h4>&& and</h4>
<p>${true and true}</p>
<%--true--%>
<p>${true and false}</p>
<%--false--%>
<p>${false and true}</p>
<%--false--%>
<p>${false and false}</p>
<%--false--%>

<h4>|| or</h4>
<p>${true or true}</p>
<%--true--%>
<p>${true or false}</p>
<%--true--%>
<p>${false or true}</p>
<%--true--%>
<p>${false or false}</p>
<%--false--%>

<h4>!, not</h4>
<p>${! true}</p>
<%--false--%>
<p>${! false}</p>
<%--true--%>
<p>${not true}</p>
<%--false--%>
<p>${not false}</p>
<%--true--%>

<h3>삼항연산자</h3>
<p>${true ? "hello" : "world"}</p>
<p>${false ? "hello" : "world"}</p>

<p>${age1 ge 20 ? "투표가능" : "투표불가능"}</p>
<p>${age2 ge 20 ? "투표가능" : "투표불가능"}</p>

<p>가격이 ${price}인 물건 ${quantity}개의
    총가격은 ${quantity * price}이다.
</p>


</body>
</html>
