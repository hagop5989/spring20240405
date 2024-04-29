# 44subQuery.sql

USE w3schools;

# 1행 1열 결과 (scalar) - 단일값
SELECT AVG(Price)
FROM Products;

SELECT *
FROM Products
WHERE Price >= 28.866364;

SELECT *
FROM Products
WHERE Price >= (SELECT AVG(Price)
                FROM Products);

SELECT AVG(p.Price)
FROM Products p
WHERE CategoryID = 1;

SELECT AVG(p.Price)
FROM Products p
WHERE CategoryID = 2;

SELECT Products.ProductName
FROM Products
WHERE (SELECT AVG(p.Price)
       FROM Products p
       WHERE p.Price > (SELECT AVG(p.Price)
                        FROM Products p
                        WHERE CategoryID) = 1
         AND CategoryID = 2);

# 여러행 1열 결과
SELECT CustomerID
FROM Customers
WHERE Country = 'mexico';

SELECT *
FROM Orders;

SELECT *
FROM Customers c
WHERE c.CustomerID IN (SELECT CustomerID
                       FROM Customers
                       WHERE Country = 'mexico');
SELECT *
FROM Customers c
WHERE c.Country = 'mexico';

SELECT DISTINCT *
FROM Customers c
         JOIN Orders o ON o.CustomerID = c.CustomerID
WHERE c.Country = 'mexico';

## JOIN ##
SELECT o.OrderDate, COUNT(*)
FROM Categories ca
         JOIN Products p
              ON ca.CategoryID = p.CategoryID
         JOIN OrderDetails od
              ON od.ProductID = p.ProductID
         JOIN Orders o ON o.OrderID = od.OrderID
WHERE ca.CategoryID = 1
;

## subQuery ##
SELECT o.OrderDate
FROM Orders o
WHERE OrderID IN (SELECT od.OrderID
                  FROM OrderDetails od
                  WHERE od.ProductID IN (SELECT p.ProductID
                                         FROM Products p
                                         WHERE p.CategoryID = 1));

SELECT *
FROM Categories c
WHERE c.CategoryID = 1;

SELECT od.OrderID
FROM OrderDetails od
WHERE od.ProductID IN (SELECT p.ProductID
                       FROM Products p
                       WHERE p.CategoryID = 1);



SELECT p.ProductID
FROM Products p
WHERE p.CategoryID = 1;


# 여러행 여러열 결과
SELECT c.CustomerName
FROM Customers c
WHERE (City, Country) IN (('Berlin', 'Germany'), ('Mexico D.F', 'Mexico'));

SELECT Customers.CustomerName
FROM Customers
WHERE (City, Country)
          IN (('Berlin', 'Germany'), ('Mexico D.F', 'Mexico'));

SELECT CustomerID, CustomerName, City, Country
FROM Customers;

SELECT CustomerName, City
FROM (SELECT CustomerID, CustomerName, City, Country
      FROM Customers) AS miniCustomers;

# 상관서브쿼리(속도가 좀 느린 편, 조인으로 해결할 수 있는지 고민)
# 외부쿼리의 값이 내부 쿼리에 사용될 때

# 각 고객의 주문 횟수
SELECT CustomerName
     , Country
     , (SELECT COUNT(o.OrderID)
        FROM Orders o
        WHERE c.CustomerID = o.CustomerID)
FROM Customers c;

SELECT COUNT(Orders.OrderID)
FROM Orders
WHERE Orders.CustomerID = 5;

SELECT c.CustomerName, c.Country, COUNT(OrderID)
FROM Customers c
         LEFT JOIN Orders o
                   ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID;

SELECT p.ProductName, SUM(p.Price * od.Quantity)
FROM Products p
         JOIN OrderDetails od
              ON p.ProductID = od.ProductID
         JOIN Orders o
              ON o.OrderID = od.OrderID
GROUP BY p.ProductID;

SELECT p.Price
FROM Products p
WHERE p.ProductID;

SELECT ProductID,
       ProductName,
       (SELECT SUM(od.Quantity)
        FROM OrderDetails od
        WHERE od.ProductID = p.ProductID) * p.Price AS 매출액
FROM Products p;



SELECT od.ProductID
FROM OrderDetails od
WHERE od.ProductID IN (SELECT p.Price
                       FROM Products p
                       WHERE p.ProductID = od.ProductID);

