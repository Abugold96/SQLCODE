-- Limit AND ALIASING
SELECT *
FROM employee_demographics
ORDER BY AGE Desc
LIMIT 2, 1
;
-- Aliasing 
SELECT Gender, AVG(age) avg_age
FROM employee_demographics
GROUP BY Gender
Having avg_age > 40
;