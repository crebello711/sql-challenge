-- Data Analysis

-- List the following details of each employee: employee number, last name, first name, sex, and salary.
-- Select * FROM employees;
-- Select * FROM salaries;
SELECT e.emp_no,e.last_name,e.first_name,e.sex,s.salary
FROM employees e
LEFT JOIN salaries s
ON e.emp_no = s.emp_no
ORDER BY emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name,last_name,hire_date
FROM employees 
WHERE DATE_PART('year',hire_date) = 1986
ORDER BY emp_no;

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
-- Select * FROM dept_manager;
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager dm
LEFT JOIN employees e
ON dm.emp_no = e.emp_no
LEFT JOIN dept_emp de
ON e.emp_no = de.emp_no
LEFT JOIN departments d
ON de.dept_no = d.dept_no;



-- List the department of each employee with the following information: employee number, last name, first name, and department name.


-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."


-- List all employees in the Sales department, including their employee number, last name, first name, and department name.


-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.


-- List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.