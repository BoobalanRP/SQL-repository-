 -- Write a query to display job title, employee name, and the difference between salary of the employee and minimum salary for the job
 
  use exercise_hr;


SELECT job_title, first_name, last_name, salary - min_salary AS ' Difference between Salary and Min_Salary'
FROM employees e
INNER JOIN jobs ON e.job_id = jobs.job_id;




-- Write a query to find the employee ID, job title, number of days between ending  date and starting date for all jobs in department 90

SELECT employee_id, job_title, end_date - start_date AS Days 
FROM job_history 
INNER JOIN jobs 
ON job_history.job_id = jobs.job_id 
WHERE department_id = 90;



-- Write a query to get the department name and average salary in the department
SELECT d.department_name, AVG(e.salary) AS Average_Salary
FROM departments d 
INNER JOIN employees e 
ON d.department_id = e.department_id 
GROUP BY d.department_name;



-- Write a query to display the department name, manager name, and city.
SELECT d.department_name, e.first_name, l.city 
FROM departments d 
INNER JOIN employees e 
ON d.manager_id = e.employee_id 
INNER JOIN locations l 
ON l.location_id = d.location_id;


