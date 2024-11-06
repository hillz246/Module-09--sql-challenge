--TEST IMPORTS - COUNTS SHOULD MATCH CSVS
SELECT COUNT(*)
FROM departments; --SHOULD BE 9

SELECT COUNT(*)
FROM titles; --SHOULD BE 7

SELECT COUNT(*)
FROM employees; --SHOULD BE 300024

SELECT COUNT(*)
FROM dept_emp; --SHOULD BE 331603

SELECT COUNT(*)
FROM dept_manager; --SHOULD BE 24

SELECT COUNT(*)
FROM salaries; --SHOULD BE 300024

--1. List the employee number, last name, first name, sex, and salary of each employee.

SELECT emp_no, last_name, first_name, sex,
	(SELECT salaries.salary
	FROM salaries
	WHERE employees.emp_no = salaries.emp_no) AS "Salary"
	FROM employees;


--2. List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
	FROM employees
	WHERE date_part('year',hire_date) = 1986


--3. List the manager of each department along with their department number,
--department name, employee number, last name, and first name.

SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
	FROM dept_manager dm
	INNER JOIN departments d
	ON dm.dept_no = d.dept_no
	INNER JOIN employees e
	ON dm.emp_no = e.emp_no;


--4. List the department number for each employee along with that employee’s employee
-- number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, de.dept_no,
	(SELECT d.dept_name
	FROM departments d
	WHERE de.dept_no = d.dept_no)
	FROM employees e
	INNER JOIN dept_emp de
	ON e.emp_no = de.emp_no;


--5. List first name, last name, and sex of each employee whose first name is Hercules
--and whose last name begins with the letter B.
SELECT first_name, last_name, sex
	FROM employees
	WHERE first_name = 'Hercules'
	AND last_name LIKE 'B%'
	ORDER BY emp_no;


--6. List each employee in the Sales department, including their employee number,
--last name, and first name.
SELECT de.emp_no, e.last_name, e.first_name
	FROM dept_emp de
	INNER JOIN employees e
	ON de.emp_no = e.emp_no
	WHERE de.dept_no = 'd007'
	ORDER BY emp_no;


--7. List each employee in the Sales and Development departments, including their
--employee number, last name, first name, and department name.
SELECT de.emp_no, e.last_name, e.first_name,
	(SELECT d.dept_name
	FROM departments d
	WHERE de.dept_no = d.dept_no)
	FROM dept_emp de
	INNER JOIN employees e
	ON de.emp_no = e.emp_no
	WHERE de.dept_no = 'd007' 
	OR de.dept_no = 'd005'; 


--8. List the frequency counts, in descending order, of all the employee last names
--(that is, how many employees share each last name).
SELECT last_name, COUNT(last_name) AS "Count of Last Name"
FROM employees
GROUP BY last_name
ORDER BY "Count of Last Name" DESC;