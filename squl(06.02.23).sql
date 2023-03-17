-- SQL is case-insensitive
/*

We will follow
UPPERCASE: keywords
lowercase: Non-keywords
*/
-- USE exercise_hr;

-- SHOW TABLES;

-- USE store;

-- SELECT *
-- FROM customers
-- ORDER BY first_name ASC;

-- ORDER BY <column_name> DESC for descending order

-- SELECT *
-- FROM customers
-- ORDER BY last_name DESC;

-- use exercise_hr;
-- show tables;
-- SELECT* FROM employees order by first_name DESC;
-- select employee_id,first_name,last_name,salary from employees order by salary asc;
-- -- ORDER BY <column_name1> ASC/DESC <column_name2> ASC/DESC <column_name3> ASC/DESC for descending order

-- SELECT*
-- FROM customers
-- ORDER BY lasr_name DESC, birth_date DESC;

-- SELECT 1,2;
-- SELECT 1 + 2;
-- SELECT  100 - 50 / 2  as VALUE;


--  SELECT first_name,last_name, points
--  FROM customers;
/* 
SELECT <column_1>, <column_2>...<column_n>
FROM <table_name>;

Select*  --For all columns.
From <table_name>;
*/

--  SELECT first_name,last_name, points, points * 1.1 AS 'discount_factor'
--  FROM customers;
--  
--  SELECT birth_date
--  FROM customers;
 /*
 DATA types:
 Strings, numbers, dates
 */

-- SELECT DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(),birth_date)), '%Y') + 0 AS age
-- FROM customers;


-- --  DISTINCT  its shows unique value
--  SELECT  DISTINCT state
--  FROM customers;
--  
--  SELECT 171*214+625 as VALUE;
 
--  USE exercise_hr;
--  SELECT first_name "FIRST_NAME", last_name "LAST_NAME" 
--  FROM employees;
--  
--  SELECT first_name, last_name, salary, salary * 0.15 AS PF
-- FROM employees;

-- SELECT DISTINCT department_id FROM employees;

-- SELECT  
-- name, unit_price, unit_price * 1.1 AS new_price
-- FROM products;

USE store;

-- SELECT *
-- FROM customers
-- WHERE state = 'FL';

-- SELECT *
-- FROM customers
-- WHERE points > '3000';

-- SELECT *
-- FROM customers
-- WHERE birth_date >= '1990-01-01';

-- SELECT *
-- FROM customers
-- WHERE points <= '1000';


-- SELECT *
-- FROM customers
-- WHERE state != 'FL';

-- SELECT *
-- FROM customers
-- WHERE birth_date >= '1990-01-01 ' AND state = 'FL';


-- SELECT *
-- FROM customers
-- WHERE points > '3000' AND birth_date >= '1990-01-01 ';

-- SELECT *
-- FROM customers
-- WHERE points > '3000' OR birth_date >= '1990-01-01 ';

-- SELECT *
-- FROM customers
-- WHERE birth_date >= '1990-01-01 ' OR points< 4000 AND  state= 'VA';


SELECT *
FROM customers
WHERE  (points< 4000 AND birth_date >= '1990-01-01 ') OR  state= 'VA';


SELECT *
 FROM customers
WHERE NOT ( state = 'FL');

 use exercise_hr;
-- SELECT first_name, last_name, hire_date
-- FROM employees
-- WHERE YEAR(hire_date) = 1987;

-- SELECT first_name, last_name, salary
-- FROM employees
-- WHERE salary NOT BETWEEN 10000 AND 15000;

SELECT first_name, last_name,  department_id
 FROM employees
--  WHERE department_id IN (30, 100)
 WHERE department_id  = 30 OR department_id = 100
ORDER BY department_id ASC;

--  SELECT first_name, last_name, salary,  department_id
--  FROM employees
--  WHERE (salary NOT BETWEEN 10000 AND 15000) and (department_id IN (30, 100));
--   
--  SELECT *
--  FROM employees
-- WHERE last_name IN ('BLAKE', 'SCOTT', 'KING', 'FORD');

-- customer ives in FL or VA or GA
USE store;

SELECT *
FROM customers
WHERE state = 'FL' OR state= 'VA' OR state = 'GA';

SELECT *
FROM customers
WHERE state IN ('FL' ,'VA', 'GA');
 
 

