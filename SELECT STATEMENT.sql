SELECT *
FROM employee_demographics;





#PEMDAS
SELECT first_name,
last_name,
birth_date,
Age,
(age + 10) * 10 + 10
FROM employee_demographics;

SELECT DISTINCT first_name, gender
FROM employee_demographics;
