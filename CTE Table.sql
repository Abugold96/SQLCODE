-- CTEs
WITH CTE_Example AS
(
SELECT gender, AVG(salary) avg_sal, MAX(salary) max_sal, MIN(salary) min_sal, COUNT(salary) count_sal
FROM employee_demographics dem
JOIN employee_salary sal
 ON dem.employee_id = sal.employee_id
 GROUP BY gender
)
SELECT (avg_sal)
FROM CTE_example

;
SELECT AVG(avg_sal)
FROM (
SELECT gender, AVG(salary) avg_sal, MAX(salary) max_sal, MIN(salary) min_sal, COUNT (salary) count_sal
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
    GROUP BY gender
    ) example_subquery
    ;
SELECT AVG (avg_sal)
FROM CTE_example
JOIN CTE_example
	ON CTE_example.employee_id = CTE_example2.employee_id

