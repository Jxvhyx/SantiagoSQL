DROP DATABASE IF EXISTS supermarket;
CREATE DATABASE supermarket;
USE supermarket;

CREATE TABLE Categorias (
    CategoriaID INT AUTO_INCREMENT PRIMARY KEY,
    NombreCategoria VARCHAR(50)
);

CREATE TABLE Productos (
    ProductoID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100),
    Precio DECIMAL(10, 2),
    Cantidad INT,
    CategoriaID INT,
    CONSTRAINT fk_categoria FOREIGN KEY (CategoriaID) REFERENCES Categorias(CategoriaID)
);

INSERT INTO Categorias (NombreCategoria)
VALUES ('Frutas');

INSERT INTO Categorias (NombreCategoria)
VALUES ('Lácteos');

INSERT INTO Categorias (NombreCategoria)
VALUES ('Golosinas');

INSERT INTO Categorias (NombreCategoria)
VALUES ('Huevos');

INSERT INTO Categorias (NombreCategoria)
VALUES ('Canasta Familiar');

INSERT INTO Categorias (NombreCategoria)
VALUES ('Bebidas');

INSERT INTO Productos (Nombre, Precio, Cantidad, CategoriaID)
VALUES ('Manzanas', 3000, 100, 1);   

INSERT INTO Productos (Nombre, Precio, Cantidad, CategoriaID)
VALUES ('Plátanos', 3500, 150, 1);   

INSERT INTO Productos (Nombre, Precio, Cantidad, CategoriaID)
VALUES ('Leche Entera', 5500, 200, 2);   

INSERT INTO Productos (Nombre, Precio, Cantidad, CategoriaID)
VALUES ('Papas', 3800, 50, 3);   

INSERT INTO Productos (Nombre, Precio, Cantidad, CategoriaID)
VALUES ('Huevos', 14000, 300, 4);   

INSERT INTO Productos (Nombre, Precio, Cantidad, CategoriaID)
VALUES ('Arroz', 50000, 250, 5);   

INSERT INTO Productos (Nombre, Precio, Cantidad, CategoriaID)
VALUES ('Azúcar', 7000, 180, 5);   

INSERT INTO Productos (Nombre, Precio, Cantidad, CategoriaID)
VALUES ('Queso', 12000, 100, 2);   

INSERT INTO Productos (Nombre, Precio, Cantidad, CategoriaID)
VALUES ('Agua', 2000, 500, 6);   

INSERT INTO Productos (Nombre, Precio, Cantidad, CategoriaID)
VALUES ('Aceite', 30000, 120, 5);   

SELECT emp_no, title FROM employees.titles
WHERE title LIKE "%staff%" AND emp_no = 10666;

-- Aquí busca todos los números de departamento que tienen la palabra "staff" en su nombre y tiene el número de empleado 10666


SELECT * FROM employees.dept_manager
WHERE dept_no = "d001";

-- Aquí busca solo los que tienen número de departamento "d001"alter


SELECT * FROM employees.employees
WHERE first_name LIKE "%h" AND gender = "F";

-- Aquí busca todo de los que su nombre termina en "h" y su género es "f"alter


SELECT COUNT(*) AS total_empleados
FROM employees.employees
WHERE gender = "M" OR gender = "F";

-- Aquí cuenta los hombres y mujeres


 SELECT * FROM employees.salaries 
WHERE salary < 70000 
ORDER BY salary DESC;

-- Aquí busca todos los datos que tienen salario menor a 7000 y lo ordena de menor a mayor


SELECT * FROM employees.salaries 
WHERE salary > 70000 
ORDER BY salary ASC;

-- Aquí busca todos los datos que tienen salario mayor a 7000 y lo ordena de mayor a menor


SELECT * FROM employees.salaries 
WHERE salary <= 70000;

-- Aquí muestra todos los salarios que son menores o iguales a 70000


SELECT COUNT(*) AS Total_hombres FROM employees.employees
WHERE gender = "M";


-- Aquí cuenta el número de hombres


SELECT * FROM employees.employees
WHERE gender NOT LIKE "F";

-- Aquí selecciona todo los que no tienen género "f"

SELECT dept_no FROM employees.departments
where dept_name LIKE "Research";

-- Aquí selecciona todos los departamentos que tienen "Research" en el nombre 








