/* List details for employees: Employee #, Last Name, First Name, Gender, Salary
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
FROM employees
JOIN salaries
ON employees.emp_no = salaries.emp_no;
*/

/* List employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM employees WHERE hire_date BETWEEN '1986-01-01' AND '1987-01-01'
*/

/* List manager of each department with following: dept #, dept name, manager employee #, last name, first name, start and end of employment
SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name, dept_manager.from_date, dept_manager.to_date
FROM departments
JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no
JOIN employees
ON dept_manager.emp_no = employees.emp_no;
*/

/* List departments of each employee with following: employee #, last name, first name, dept name 
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no;
*/

/* List all employees whose first name is "Hercules" and last name begins with "B"
SELECT first_name, last_name FROM employees WHERE first_name = 'Hercules' AND last_name LIKE 'B%';
*/
