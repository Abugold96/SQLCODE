-- GROUP BY
SELECT *
from employee_demographics;


SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
From employee_demographics
GROUP BY gender ;

SELECT occupation, AVG(salary)
From employee_salary
GROUP BY occupation ;

-- ORDER BY
SELECT *
FROM employee_demographics
ORDER BY gender, age
;