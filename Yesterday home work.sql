
 use exercise_hr;
-- Write a query to find the name (first_name, last name), department ID and name of all the employees.
SELECT e.first_name, e.last_name, e.department_id, d.department_name
FROM employees AS e INNER JOIN departments AS d
ON e.department_id = d.department_id;


-- Write a query to find the name (first_name, last_name), job, department ID and name of the employees who works in London.
 select first_name,last_name,e.department_id,city,job_title
from employees as e inner join departments as d inner join locations as n inner join jobs as j
 on e.department_id = d.department_id
 where  city = 'london';
 
 
 -- Write a query to find the employee id, name (last_name) along with their manager_id and name (last_name).
 select employee_id,last_name,manager_id from employees;
 	
    
    
 -- Write a query to find the name (first_name, last_name) and hire date of the employees who was hired after 'Jones'.
 SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date > (
    SELECT hire_date
    FROM employees
    WHERE last_name = 'Jones'
)
ORDER BY hire_date;


-- Write a query to get the department name and number of employees in the department. (Requires GROUP BY)
SELECT departments.department_name, COUNT(employees.employee_id) as num_employees
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id
GROUP BY departments.department_name;


-- Write a query to find the employee ID, job title, number of days between ending date and starting date for all jobs in department 90.
SELECT e.employee_id, n.job_title, DATEDIFF(j.end_date, j.start_date)  as days_worked,e.department_id
from employees as e inner join job_history as j inner join jobs as n
ON e.job_id = n.job_id
INNER JOIN departments as d
ON e.department_id = d.department_id
WHERE e.department_id = 90;


-- Find the CEO from the employee table.
select * from employees
where MANAGER_ID=0;