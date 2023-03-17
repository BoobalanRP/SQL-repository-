USE exercise_hr;
--  1. Write a query to get the total salaries payable to employees.
SELECT SUM(salary) as total_salary_payable 
FROM employees;

-- 2.Write a query to get the maximum and minimum salary from employees table.
SELECT MAX(salary) AS max_salary, MIN(salary) AS min_salary
FROM employees;

-- 3.Write a query to get the average salary and number of employees in the employees table.
SELECT AVG(salary) AS average_salary,  COUNT(*) AS 'number of employees'
FROM employees;

-- 4.Write a query to get the number of employees working with the company.
SELECT COUNT(*) AS 'number of employees'
FROM employees;

-- 5.Write a query to get the number of distinct jobs available in the employees table.
SELECT COUNT(DISTINCT department_name) AS number_of_jobs 
FROM departments;

-- 6.Write a query get all first name from employees table in upper case.
SELECT UPPER(first_name) AS 'First Name'
FROM employees;

-- 7.Write a query to get the first 3 characters of first name from employees table.
SELECT SUBSTRING(first_name,1,3) 
FROM employees;

-- 8.Write a query to get the names ('<first name> <last name>') (for example Ellen Abel, Sundar Ande etc.) as a single column of all the employees from employees table
SELECT CONCAT(first_name, last_name) AS 'Employee_name'
FROM employees;

-- 9.Write a query to get the length of the employee names ('<first name> <last name>') from employees table. --
SELECT CHAR_LENGTH ("first_name, last_name") AS LengthOfNames
FROM employees;

-- 10.Write a query to get monthly salary (round 2 decimal places) of each and every employee
SELECT employee_id, first_name, last_name, ROUND(salary/12, 2) as monthly_salary
FROM employees;