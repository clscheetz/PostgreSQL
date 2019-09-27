-- 1. List the following details of each employee: employee number, first & last name, gender & salary
-- SELECT emp.employee_number, emp.last_name, emp.first_name, emp.gender, salary.salary
-- FROM employee emp
-- INNER JOIN salary ON emp.employee_number = salary.employee_number
-- ORDER BY emp.employee_number ASC

-- 2. List employees who were hired in 1986.
-- SELECT emp.first_name, emp.last_name
-- FROM employee emp
-- WHERE hire_date BETWEEN '1986-01-01'
-- AND '1986-12-31'

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
-- SELECT dep.department_number, dep.name, dep_mgr.employee_number, emp.last_name, emp.first_name, dep_mgr.from_date, dep_mgr.to_date 
-- FROM department dep
-- INNER JOIN department_manager dep_mgr ON dep.department_number = dep_mgr.department_number
-- INNER JOIN employee emp ON dep_mgr.employee_number = emp.employee_number
-- ORDER BY department_number ASC

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
-- SELECT emp.employee_number, emp.last_name, emp.first_name, dep.name
-- FROM department dep
-- INNER JOIN department_employee dep_emp ON dep.department_number = dep_emp.department_number
-- INNER JOIN employee emp ON dep_emp.employee_number = emp.employee_number
-- ORDER BY employee_number ASC

-- 5. List all employees whose first name is "Hercules" and last names begin with "B."
-- SELECT * FROM employee 
-- WHERE first_name = 'Hercules'
-- AND last_name LIKE 'B%'

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
-- SELECT emp.employee_number, emp.last_name, emp.first_name, dep.name
-- FROM department dep
-- INNER JOIN department_employee dep_emp ON dep.department_number = dep_emp.department_number
-- INNER JOIN employee emp ON dep_emp.employee_number = emp.employee_number
-- WHERE dep.name = 'Sales'
-- ORDER BY employee_number ASC

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
-- SELECT emp.employee_number, emp.last_name, emp.first_name, dep.name
-- FROM department dep
-- INNER JOIN department_employee dep_emp ON dep.department_number = dep_emp.department_number
-- INNER JOIN employee emp ON dep_emp.employee_number = emp.employee_number
-- WHERE dep.name = 'Sales' OR dep.name = 'Development'
-- ORDER BY employee_number ASC

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
-- SELECT last_name, COUNT(last_name)
-- FROM employee
-- GROUP BY last_name
-- ORDER BY last_name DESC