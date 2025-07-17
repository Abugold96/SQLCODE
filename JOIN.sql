-- Joins
SELECT * 
FROM employee_demographics
;

SELECT * 
FROM employee_salary
;

SELECT dem.employee_id, age, occupation
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

-- OUTER JOINS
SELECT *
FROM employee_demographics AS dem
 RIGHT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;
-- SELF JOIN
SELECT em1.employee_id AS em1_santa, 
em1.first_name AS first_name_santa, 
em1.last_name AS last_name_santa,
em2.employee_id AS em_name, 
em2.first_name AS first_name_name, 
em2.last_name AS last_name_name
FROM employee_salary AS em1
JOIN employee_salary AS em2
ON em1.employee_id +1 = em2.employee_id
;

-- JOINING MULTIPLE TABLES
SELECT *
FROM employee_demographics AS dem
 INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
    INNER JOIN parks_departments pd
    ON sal.dept_id = pd.department_id
;


SELECT *
FROM parks_departments
;