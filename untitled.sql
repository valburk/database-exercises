

SELECT concat(first_name, " ", last_name) AS NAME, departments.dept_name AS "department name", salaries.salary
FROM employees
JOIN salaries ON salaries.emp_no = employees.emp_no
JOIN dept_manager ON dept_manager.emp_no = employees.emp_no
JOIN departments ON departments.dept_no = dept_manager.dept_no
WHERE salaries.to_date > now()
AND dept_manager.to_date > now();


SELECT * 
FROM titles
WHERE emp_no IN  (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
);


SELECT * 
FROM dept_manager
WHERE emp_no IN  (
    SELECT emp_no
    FROM employees
    WHERE gender = 'F'
);


SELECT dept_name
FROM departments
WHERE dept_no IN (
	SELECT dept_no 
	FROM dept_manager
	WHERE emp_no IN  (
   		SELECT emp_no
    	FROM employees
   		WHERE gender = 'F'
	)
);