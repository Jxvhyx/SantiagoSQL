-- Actualizar el nombre del departamento
UPDATE employees.departments
set dept_name = "security"
WHERE dept_no = "d007";

-- Actualizar el número de empleado en dept_emp
UPDATE employees.dept_emp
SET emp_no = 10
WHERE dept_no LIKE "%003";

-- Actualiza el salario multiplicandolo por 1.10 del emp_no 10101
UPDATE employees.salaries
SET salary = salary * 1.10
WHERE emp_no = 10101;

-- Actualiza el salario sumandole 500 si el salario esta entre 65000 a 70000
UPDATE employees.salaries 
SET salary = salary + 500
WHERE salary BETWEEN 65000 AND 70000;

-- Actualiza el genero si el dato hire_date es mayor a 1996-01-02
UPDATE employees.employees
SET gender = "F"
WHERE hire_date > '1996-01-02';

-- Actualizar nombres y apellidos de empleados con emp_no menores a 10005
UPDATE employees.employees
SET first_name = "Luis", last_name = "Gonzalez"
WHERE emp_no < 10005;

-- Actualizar el salario de un empleado específico
UPDATE employees.salaries
SET salary = 95000
WHERE emp_no = 10010;

-- Cambiar el título de un empleado
UPDATE employees.titles
SET title = "Analista de Datos"
WHERE emp_no = 10012;

-- Modificar el nombre de un departamento específico
UPDATE employees.departments
SET dept_name = "Marketing Creativo"
WHERE dept_no = "d010";

-- Cambiar la fecha de inicio en dept_manager con una fecha correcta
UPDATE employees.dept_manager
SET from_date = '2000-03-15'
WHERE to_date = '1995-12-31';


-- DELETE

-- Eliminar un empleado específico
DELETE FROM employees.employees
WHERE emp_no = 10004;

-- Eliminar salarios de un rango específico de empleados
DELETE FROM employees.salaries
WHERE emp_no BETWEEN 10005 AND 10008;

-- Eliminar un departamento específico
DELETE FROM employees.departments
WHERE dept_no = "d003";

-- Eliminar la relación de un empleado con un departamento
DELETE FROM employees.dept_emp
WHERE emp_no = 10007;

-- Eliminar la gestión de un departamento por un empleado específico
DELETE FROM employees.dept_manager
WHERE emp_no = 10008;

-- Eliminar todos los empleados con un nombre específico
DELETE FROM employees.employees
WHERE first_name = "Luis";

-- Eliminar un salario específico
DELETE FROM employees.salaries
WHERE salary = 95000;

-- Eliminar un título específico
DELETE FROM employees.titles
WHERE title = "Analista de Datos";

-- Eliminar un departamento específico por su número
DELETE FROM employees.departments
WHERE dept_no = "d010";

-- Eliminar una gestión de departamento por una fecha específica
DELETE FROM employees.dept_manager
WHERE to_date = '1995-12-31';
