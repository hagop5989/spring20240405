# 43.aggregate.sql
USE w3schools;

SELECT AVG(Products.Price)
FROM Products
WHERE CategoryID = 1;

SELECT SUM(OrderDetails.Quantity)
FROM OrderDetails
WHERE ProductID = 1;

SELECT SUM(Quantity)
FROM OrderDetails od
         JOIN Orders o ON od.OrderID = o.OrderID
WHERE OrderDate LIKE '1997-__-__'
  AND od.ProductID = 2;

# SELECT SUM (p.)
# FROM Orders o
#          JOIN OrderDetails od
#              ON o.OrderID = od.OrderID
#     JOIN Products p ON p.ProductID = od.ProductID
#
# WHERE o.CustomerID = 1
#   AND o.OrderDate LIKE '1997-__-__';

SELECT SUM(p.Price * od.Quantity)
FROM Customers c
         JOIN Orders o
              ON c.CustomerID = o.CustomerID
         JOIN OrderDetails od
              ON od.OrderID = o.OrderID
         JOIN Products p
              ON p.ProductID = od.ProductID
WHERE c.Country = 'mexico'
  AND o.OrderDate LIKE '1997-__-__';
