CREATE TABLE IF NOT EXISTS titles (
title_id VARCHAR(10) PRIMARY KEY,
title VARCHAR(50) NOT NULL,
Primary Key (title_id),
Unique (title)

);

SELECT * FROM titles;

CREATE TABLE IF NOT EXISTS employees(
emp_no INT NOT NULL,
emp_title_id VARCHAR NOT NULL,
birth_date DATE NOT NULL,
first_name VARCHAR NOT NULL,
last_name VARCHAR NOT NULL,
sex VARCHAR NOT NULL,
hire_date DATE NOT NULL, 
PRIMARY KEY (emp_no),
FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);

SELECT * FROM employees;

CREATE TABLE IF NOT EXISTS departments(
dept_no VARCHAR(4) NOT NUll, 
dept_name VARCHAR(30) NOT NULL,
Primary Key (dept_no),
Unique (dept_name)
);

SELECT * FROM departments;

CREATE TABLE IF NOT EXISTS dept_manager(
dept_no VARCHAR (4) NOT NULL,
emp_no INT NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
PRIMARY KEY (emp_no, dept_no) 
);

SELECT * FROM dept_manager;

CREATE TABLE IF NOT EXISTS dept_emp (
emp_no INT   NOT NULL,
dept_no VARCHAR   NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
PRIMARY KEY (emp_no, dept_no)
);

SELECT * FROM dept_emp;

CREATE TABLE IF NOT EXISTS salaries (
emp_no INTEGER,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
salary INTEGER NOT NULL,
PRIMARY KEY (emp_no)
);

SELECT * FROM salaries



