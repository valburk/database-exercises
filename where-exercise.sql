SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT first_name
FROM employees
WHERE first_name LIKE '%E';

SELECT emp_no, first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';


SELECT * FROM employees 
WHERE birth_date LIKE '%12-25';

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%';