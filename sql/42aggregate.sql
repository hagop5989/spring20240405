# 42aggregate.sql

USE mydb2;


CREATE TABLE table12
(
    number INT
);

INSERT INTO table12
VALUES (3),
       (4),
       (5),
       (NULL),
       (NULL);

SELECT *
FROM table12;

SELECT COUNT(table12.number)
FROM table12;

SELECT MAX(table12.number)
FROM table12;

SELECT MIN(table12.number)
FROM table12;

SELECT SUM(table12.number)
FROM table12;

SELECT AVG(table12.number)
FROM table12;
# (3+4+5 / 3) = 4

-- NULL 을 다른 값으로 바꾸기
SELECT table12.number
FROM table12;

SELECT IFNULL(number, 0)
FROM table12;

SELECT SUM(IFNULL(number, 0))
FROM table12;

SELECT COUNT(IFNULL(number, 0))
FROM table12;

SELECT AVG(IFNULL(number, 0))
FROM table12;