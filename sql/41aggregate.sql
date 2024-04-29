# 41aggregate.sql

# aggregate function : 집계함수
# 평균, 합계, 개수, 최대값, 최소값
# NULL 은 집계 시 제외됨

USE w3schools;
# COUNT : 개수 (NULL 이 아닌)
SELECT COUNT(EmployeeId)
FROM Employees;

SELECT COUNT(Notes)
FROM Employees;

SELECT COUNT(Country)
FROM Customers;

SELECT DISTINCT COUNT(Country)
FROM Customers;

# MIN : 최소값 , MAX : 최대 값
SELECT MAX(Price)
FROM Products;

SELECT MIN(Price)
FROM Products;

# 가장 어린 사람의 생년월일
SELECT MAX(birthDate)
FROM Employees;

# 가장 나이 많은사람 생년월일
SELECT MIN(BirthDate)
FROM Employees;

# SUM : 합계
SELECT SUM(Products.Price)
FROM Products;

# AVG : 평균
SELECT AVG(Products.Price)
FROM Products;
