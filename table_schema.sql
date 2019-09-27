-- CREATE TABLE department(
-- 	department_number VARCHAR(6),
-- 	name VARCHAR(25),
-- 	PRIMARY KEY (department_number)
-- );

-- CREATE TABLE employee(
-- 	employee_number INT,
-- 	birth_date DATE,
-- 	first_name VARCHAR(25),
-- 	last_name VARCHAR(25),
-- 	gender VARCHAR(1),
-- 	hire_date DATE,
-- 	PRIMARY KEY (employee_number)
-- );

-- CREATE TABLE department_employee(
-- 	employee_number INT,
-- 	department_number VARCHAR(6),
-- 	from_date DATE,
-- 	to_date DATE,
-- 	PRIMARY KEY (employee_number, department_number, from_date),
-- 	FOREIGN KEY (employee_number) REFERENCES Employee(employee_number),
-- 	FOREIGN KEY (department_number) REFERENCES Department(department_number)
-- );

-- CREATE TABLE department_manager(
-- 	department_number VARCHAR(6),
-- 	employee_number INT,
-- 	from_date DATE,
-- 	to_date DATE,
-- 	PRIMARY KEY (department_number, employee_number, from_date),
-- 	FOREIGN KEY (department_number) REFERENCES Department(department_number),
-- 	FOREIGN KEY (employee_number) REFERENCES Employee(employee_number)
-- );

-- CREATE TABLE salary(
-- 	employee_number INT,
-- 	salary INT,
-- 	from_date DATE,
-- 	to_date DATE,
-- 	PRIMARY KEY (employee_number, salary),
-- 	FOREIGN KEY (employee_number) REFERENCES Employee(employee_number)
-- );

-- CREATE TABLE title(
-- 	employee_number INT,
-- 	title VARCHAR,
-- 	from_date DATE,
-- 	to_date DATE,
-- 	PRIMARY KEY (employee_number, title, from_date),
-- 	FOREIGN KEY (employee_number) REFERENCES Employee(employee_number)
-- );

-- SELECT * FROM title