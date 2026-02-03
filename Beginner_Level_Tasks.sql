-- ===================================================================
-- SHADOWFOX DATABASE MANAGEMENT INTERNSHIP
-- Beginner Level Tasks (Task 1 & Task 2)
-- Database: SwhadoFox
-- ===================================================================

-- Step 1: Create Database
CREATE DATABASE SwhadoFox;
GO

-- Step 2: Use the Database
USE SwhadoFox;
GO

-- ===================================================================
-- TASK 1: Create "Employees" and "Department" Tables with Data
-- ===================================================================

-- Create Department Table First (because Employees will reference it)
CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName NVARCHAR(100) NOT NULL
);
GO

-- Insert Department Data
INSERT INTO Department (DepartmentID, DepartmentName)
VALUES 
    (1, 'IT'),
    (2, 'HR'),
    (3, 'Finance'),
    (4, 'Marketing');
GO

-- Create Employees Table
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Gender CHAR(1),
    DepartmentID INT,
    Salary DECIMAL(10, 2),
    JoinDate DATE,
    Age INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);
GO

-- Insert Employees Data
INSERT INTO Employees (EmpID, FirstName, LastName, Gender, DepartmentID, Salary, JoinDate, Age)
VALUES 
    (101, 'Alice', 'Smith', 'F', 2, 75000.00, '2020-01-15', 30),
    (102, 'Bob', 'Johnson', 'M', 2, 60000.00, '2019-03-10', 34),
    (103, 'Carol', 'Williams', 'F', 1, 50000.00, '2021-06-23', 28),
    (104, 'David', 'Brown', 'M', 3, 80000.00, '2018-11-01', 40),
    (105, 'Eve', 'Davis', 'F', 4, 55000.00, '2022-05-12', 26);
GO

-- Verify Data
SELECT * FROM Employees;
GO

SELECT * FROM Department;
GO

-- ===================================================================
-- TASK 2: Arrange Employees by Age in Descending Order
-- ===================================================================

SELECT * 
FROM Employees 
ORDER BY Age DESC;
GO

-- ===================================================================
-- Expected Output for Task 2:
-- EmpID | FirstName | LastName  | Gender | DepartmentID | Salary   | JoinDate   | Age
-- ------|-----------|-----------|--------|--------------|----------|------------|----
-- 104   | David     | Brown     | M      | 3            | 80000.00 | 2018-11-01 | 40
-- 102   | Bob       | Johnson   | M      | 2            | 60000.00 | 2019-03-10 | 34
-- 101   | Alice     | Smith     | F      | 2            | 75000.00 | 2020-01-15 | 30
-- 103   | Carol     | Williams  | F      | 1            | 50000.00 | 2021-06-23 | 28
-- 105   | Eve       | Davis     | F      | 4            | 55000.00 | 2022-05-12 | 26
-- ===================================================================
