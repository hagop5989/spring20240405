# 46having.sql

USE w3schools;

# HAVING : 집계함수의 조건절
SELECT CategoryID, COUNT(ProductID)
FROM Products
GROUP BY CategoryID;

# 상품수가 10개 이상인 카테고리

SELECT *
FROM (SELECT CategoryID, COUNT(ProductID) 상품수
      FROM Products
      GROUP BY CategoryID) c
WHERE 상품수 >= 10;

SELECT CategoryID, COUNT(ProductID) 상품수
FROM Products
GROUP BY CategoryID
HAVING 상품수 >= 10;

SELECT c.Country, COUNT(o.CustomerID) 주문고객수
FROM Orders o
         JOIN Customers c ON c.CustomerID = o.CustomerID
GROUP BY o.CustomerID
HAVING 주문고객수 >= 5;

SELECT e.EmployeeID, e.LastName, SUM(od.Quantity * p.Price) 매출액
FROM Orders o
         JOIN OrderDetails od ON o.OrderID = od.OrderID
         JOIN Employees e ON e.EmployeeID = o.EmployeeID
         JOIN Products p ON p.ProductID = od.ProductID
WHERE o.OrderDate LIKE '1997-07-__'
GROUP BY e.EmployeeID
HAVING 매출액 >= 10000;
