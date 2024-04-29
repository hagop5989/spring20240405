# 45groupBy.sql

USE w3schools;
# GROUP BY : 집계함수(avg, sum, count, min, max) 를 그룹별로 결과 내게 함

SELECT CategoryID, COUNT(ProductID)
FROM Products
GROUP BY CategoryID;

SELECT CategoryID                          번호,
       (SELECT CategoryName
        FROM Categories c
        WHERE c.CategoryID = p.CategoryID) 이름,
       COUNT(ProductID)                    상품수
FROM Products p
GROUP BY CategoryID;

SELECT c.CategoryID 번호, c.CategoryName 이름, COUNT(p.ProductID) 상품수
FROM Categories c
         JOIN Products p ON c.CategoryID = p.CategoryID
GROUP BY c.CategoryID;

SELECT SUM(p.Price * od.Quantity) 총매출액, e.FirstName, p.ProductName
FROM Products p
         JOIN OrderDetails od
              ON p.ProductID = od.ProductID
         JOIN Orders o ON o.OrderID = od.OrderID
         JOIN Employees e ON e.EmployeeID = o.EmployeeID
WHERE o.OrderDate BETWEEN '1997-01-01' AND '1997-01-31'
GROUP BY e.EmployeeID, p.ProductName
ORDER BY 총매출액 DESC;

SELECT c.CustomerID               고객번호,
       c.CustomerName             고객이름,
       SUM(p.Price * od.Quantity) 소비금액,
       c.City                     도시,
       c.Address                  고객주소
FROM Customers c
         JOIN Orders o ON c.CustomerID = o.CustomerID
         JOIN OrderDetails od ON od.OrderID = o.OrderID
         JOIN Products p ON p.ProductID = od.ProductID
WHERE o.OrderDate BETWEEN '1997-07-01' AND '1997-07-31'
GROUP BY c.CustomerName
ORDER BY 소비금액 DESC
LIMIT 5;

SELECT country, City, COUNT(CustomerID)
FROM Customers c
GROUP BY Country, City;

SELECT c.CustomerID     고객번호,
       c.CustomerName,
       p.ProductID,
       p.ProductName,
       SUM(od.Quantity) 총주문수
FROM Customers c
         JOIN Orders o ON c.CustomerID = o.CustomerID
         JOIN OrderDetails od ON o.OrderID = od.OrderID
         JOIN Products p ON p.ProductID = od.ProductID
GROUP BY o.CustomerID, p.ProductID
ORDER BY 고객번호, 총주문수 DESC
LIMIT 10;

SELECT DISTINCT p.ProductName,
                c.Country,
                SUM(od.Quantity) 수량
FROM OrderDetails od
         JOIN Orders o
              ON od.OrderID = o.OrderID
         JOIN Products p
              ON p.ProductID = od.ProductID
         JOIN Customers c
              ON c.CustomerID = o.CustomerID
GROUP BY p.ProductID, c.Country
ORDER BY p.ProductID, 수량 DESC;

SELECT DISTINCT p.ProductName,
                c.Country,
                SUM(od.Quantity) 수량
FROM Products p
         JOIN OrderDetails od
              ON p.ProductID = od.ProductID
         JOIN Orders o
              ON od.OrderID = o.OrderID
         JOIN Customers c
              ON o.CustomerID = c.CustomerID
GROUP BY p.ProductID, c.Country
ORDER BY p.ProductId, 수량 DESC;






