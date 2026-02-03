-- ===================================================================
-- SHADOWFOX DATABASE MANAGEMENT INTERNSHIP
-- Beginner Level - Remaining Tasks (Task 3, 4, 5, 6)
-- Database: SwhadoFox
-- ===================================================================

USE SwhadoFox;
GO

-- ===================================================================
-- TASK 3: Create "High_Paid_Employees" table using CTAS
-- (Employees with Salary > 60000)
-- ===================================================================

-- Create table using SELECT statement (CTAS method)
SELECT FirstName, LastName, Salary
INTO High_Paid_Employees
FROM Employees
WHERE Salary > 60000;
GO

-- Verify the High_Paid_Employees table
SELECT * FROM High_Paid_Employees;
GO

-- ===================================================================
-- Expected Output for Task 3:
-- FirstName | LastName | Salary
-- ----------|----------|----------
-- Alice     | Smith    | 75000.00
-- David     | Brown    | 80000.00
-- ===================================================================


-- ===================================================================
-- TASK 4: Delete employee with EmpID = 103 (Carol Williams)
-- ===================================================================

DELETE FROM Employees
WHERE EmpID = 103;
GO

-- Verify deletion
SELECT * FROM Employees;
GO

-- ===================================================================
-- Expected Output for Task 4:
-- Carol Williams (EmpID 103) should be removed
-- Only 4 employees should remain
-- ===================================================================


-- ===================================================================
-- TASK 5: Update/Rename EmpID = 101 
-- Change: Alice Smith → Andrea Jackson
-- ===================================================================

UPDATE Employees
SET FirstName = 'Andrea',
    LastName = 'Jackson'
WHERE EmpID = 101;
GO

-- Verify update
SELECT * FROM Employees WHERE EmpID = 101;
GO

-- ===================================================================
-- Expected Output for Task 5:
-- EmpID | FirstName | LastName | Gender | DepartmentID | Salary   | JoinDate   | Age
-- ------|-----------|----------|--------|--------------|----------|------------|----
-- 101   | Andrea    | Jackson  | F      | 2            | 75000.00 | 2020-01-15 | 30
-- ===================================================================


-- ===================================================================
-- TASK 6: Delete JoinDate column from Employees table
-- ===================================================================

ALTER TABLE Employees
DROP COLUMN JoinDate;
GO

-- Verify column deletion
SELECT * FROM Employees;
GO

-- ===================================================================
-- Expected Output for Task 6:
-- JoinDate column should not be visible in the table
-- All other columns should remain intact
-- ===================================================================


-- ===================================================================
-- FINAL VERIFICATION: Check all tables
-- ===================================================================

-- Check Employees table (should have 4 records, no JoinDate column)
SELECT * FROM Employees;
GO

-- Check High_Paid_Employees table (should have 2 records)
SELECT * FROM High_Paid_Employees;
GO

-- Check Department table (should remain unchanged)
SELECT * FROM Department;
GO

-- ===================================================================
-- SUMMARY OF CHANGES:
-- 1. Created High_Paid_Employees table with 2 employees (Alice/Andrea and David)
-- 2. Deleted Carol Williams (EmpID 103)
-- 3. Renamed Alice Smith to Andrea Jackson
-- 4. Removed JoinDate column from Employees table
-- 5. Final Employees table has 4 records without JoinDate
-- ===================================================================
