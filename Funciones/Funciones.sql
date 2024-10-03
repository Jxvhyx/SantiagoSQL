
CREATE DATABASE IF NOT EXISTS funciones;
USE funciones;
DELIMITER //

CREATE FUNCTION convertir_a_mayusculas(texto VARCHAR(255))
RETURNS VARCHAR(255)
DETERMINISTIC
BEGIN
    DECLARE texto_mayuscula VARCHAR(255);
    SET texto_mayuscula = UPPER(texto);
    RETURN texto_mayuscula;
END//
DELIMITER ;

SELECT convertir_a_mayusculas("hola mundo") AS texto_convertido;

DELIMITER //

CREATE FUNCTION calcular_suma_ventanas()
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10,2);
   
    SELECT SUM(monto) INTO total FROM ventas;
    RETURN total;
END//

DELIMITER ;


CREATE DATABASE IF NOT EXISTS mi_base_de_datos;
USE mi_base_de_datos;
CREATE TABLE ventas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    monto DECIMAL(10,2) NOT NULL
);

INSERT INTO ventas (monto) VALUES (100.50);
INSERT INTO ventas (monto) VALUES (200.75);
INSERT INTO ventas (monto) VALUES (150.00);

CREATE FUNCTION determinar_signo(numero INT)
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
    DECLARE signo VARCHAR(20);

    IF numero > 0 THEN
        SET signo = 'POSITIVO';
    ELSEIF numero < 0 THEN
        SET signo = 'NEGATIVO';
    ELSE
        SET signo = 'CERO';
    END IF;

    RETURN signo;
END//