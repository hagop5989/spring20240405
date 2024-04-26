# TEST

CREATE DATABASE test;

USE test;

## Employee 테이블
CREATE TABLE Employees
(
    EmployeeID   INT,
    EmployeeName VARCHAR(100)
);

INSERT INTO Employees (EmployeeID, EmployeeName)
VALUES (1, 'Alice'),
       (2, 'Bob'),
       (3, 'Charlie');

## Departments 테이블
CREATE TABLE Departments
(
    DepartmentID   INT,
    DepartmentName VARCHAR(100),
    EmployeeID     INT
);

INSERT INTO Departments (DepartmentID, DepartmentName, EmployeeID)
VALUES (10, 'HR', 1),
       (20, 'Engineering', 2),
       (30, 'Marketing', 3);

## Projects 테이블
CREATE TABLE Projects
(
    ProjectID    INT,
    DepartmentID INT,
    ProjectName  VARCHAR(100) NOT NULL
);

INSERT INTO Projects (ProjectID, DepartmentID, ProjectName)
VALUES (1001, 20, 'Alpha'),
       (1002, 20, 'Beta'),
       (1003, 30, 'Gamma');

## LEFT JOIN 사용
SELECT E.EmployeeName, D.DepartmentName, P.ProjectName
FROM Employees E
         LEFT JOIN Departments D ON E.EmployeeID = D.EmployeeID
         LEFT JOIN Projects P ON D.DepartmentID = P.DepartmentID;

## INNER JOIN
SELECT E.EmployeeName, D.DepartmentName, P.ProjectName
FROM Departments D
         JOIN Projects P ON P.DepartmentID = D.DepartmentID
         JOIN Employees E ON D.EmployeeID = E.EmployeeID;

## NULL 발생
SELECT E.EmployeeName, D.DepartmentName, P.ProjectName
FROM Departments D
         LEFT JOIN Projects P ON P.DepartmentID = D.DepartmentID
         LEFT JOIN Employees E ON D.EmployeeID = E.EmployeeID;

### Projects 테이블 확인
SELECT *
FROM Projects;

DESC Projects;
