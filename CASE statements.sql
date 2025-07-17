-- CASE STATEMENT
SELECT first_name, 
last_name, age,
CASE
WHEN age <= 40 THEN 'Young'
WHEN age BETWEEN 31 AND 50 THEN 'Old'
WHEN age >= 50 THEN 'Senior Citizen'
END AS Age_Bracket
FROM employee_demographics
;

-- PAY Increase And Bonus
-- < 50000 = 5%
-- > 50000 = 7%
-- Finance = 10% Bonus

SELECT first_name, last_name, salary,
CASE
WHEN salary < 50000 THEN salary + (5/100*salary)
WHEN salary > 50000 THEN salary + (7/100*salary)
WHEN salary = 50000 THEN salary +(6/100*salary)
END AS New_Salary,
CASE
WHEN dept_id = 6 THEN 10/100*salary
END AS Bonus
FROM employee_salary
;









