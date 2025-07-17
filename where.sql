SELECT *
from employee_salary
WHERE first_name = 'Leslie';

SELECT *
from employee_salary
WHERE salary <= 50000;

SELECT *
from employee_demographics
WHERE gender = 'Female';

SELECT *
from employee_demographics
WHERE birth_date > '1985-01-01';

-- AND OR NOT LOGICAL OPERATOR

SELECT *
from employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'male' AND age = 44 ;

SELECT *
from employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) OR age < 30
;
-- LIKE STATEMENT
SELECT *
from employee_demographics
WHERE birth_date LIKE '1989%'
;


