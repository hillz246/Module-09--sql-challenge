# Module-09--sql-challenge
Assignment 09 Module 09 sql-challenge
# A research project about people whom the company employed during the 1980s and 1990s. 

Files (Data Engineering)

departments.csv: Contains department information (department number and name).
dept_emp.csv: Maps employees to their respective departments.
dept_manager.csv: Lists department managers by employee number.
employees.csv: Contains employee details, including their employee number, title, birth date, name, sex, and hire date.
salaries.csv: Provides salary information for employees.
titles.csv: Lists employee titles by title ID and name.

Other Files
ERD.png: An Entity Relationship Diagram showing the relationships between the six tables based on the CSV files.
schema.sql: The SQL script used to create the database schema.
queries.sql: A set of SQL queries used for analysis, answering specific data-related questions.

Entity Relationship Diagram (ERD) (Data Modeling)
The ERD highlights the relationships between:

Employees and their departments.
Employees and their titles.
Employees and their salaries.
Department managers and the employees they manage.
This diagram is essential for understanding the structure of the database and the connections between tables.

![09 - employee ERD](https://github.com/user-attachments/assets/c4a86080-0fa8-4fa7-819a-0b1741454d35)


SQL Queries (Data Analysis)
1. List the employee number, last name, first name, sex, and salary of each employee.
2. List the first name, last name, and hire date for employees hired in 1986.
3. List department managers along with their department number, department name, employee number, last name, and first name.
4. List the department number for each employee, along with employee details.
5. Find employees with the first name "Hercules" and a last name beginning with 'B'.
6. List employees in the Sales department.
7. List employees in the Sales and Development departments.
8. Frequency count of employee last names, in descending order.
