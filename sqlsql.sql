SHOW DATABASES;
USE class;

CREATE TABLE employee (id INT(3) NOT NULL AUTO_INCREMENT, nome VARCHAR(45) NOT NULL, gender CHAR(1) NOT NULL, salary DECIMAL(6,2), PRIMARY KEY(id));

INSERT INTO employee VALUES (NULL, 'pedro', 'm', 7820.00);
INSERT INTO employee VALUES (NULL, 'katie', 'f', 7820.00);
INSERT INTO employee VALUES (NULL, 'louise', 'f', 8840.00);
INSERT INTO employee VALUES (NULL, 'fabian', 'm', 5000.00);
INSERT INTO employee VALUES (NULL, 'lovelace', 'f', 1000.00);

UPDATE employee SET salary = 9000.00 WHERE id = 8;

SELECT * FROM employee;

delimiter $$
CREATE PROCEDURE minimum (salary_one DECIMAL)
SELECT COUNT(*) FROM employee WHERE salary < salary_one;
$$

CALL minimum(10000);

delimiter $$
CREATE PROCEDURE employee_pay (code SMALLINT)
SELECT * FROM employee WHERE id = code;
$$

CALL employee_pay(8);

delimiter $$
CREATE PROCEDURE raise()
UPDATE employee SET salary = (salary * 1.1) WHERE id > 0;
$$

CALL raise();

delimiter $$
CREATE FUNCTION summing(a INT, b INT)
RETURNS INT
RETURN a + b;
$$

SELECT summing(5,5);
SELECT summing(8,2) AS sum;

delimiter $$
CREATE FUNCTION employee_payment(code SMALLINT)
RETURNS DECIMAL(6.2)
RETURN (SELECT name, salary FROM employee WHERE id = code);
$$

SELECT payment(8) as salary;
SELECT employee_payment(8);

ALTER TABLE `class`.`employee` 
CHANGE COLUMN `nome` `name` VARCHAR(45) NOT NULL ;

DESCRIBE employee;

delimiter $$
CREATE FUNCTION gender_function (gen_id CHAR(1))
RETURNS INT
RETURN (SELECT COUNT(*) FROM employee WHERE gender = gen_id);
$$

DROP FUNCTION gender_function;

SELECT gender_function('m');
SELECT gender_function('f') AS gender;

CREATE TABLE backup(id INT(3) NOT NULL AUTO_INCREMENT, name VARCHAR(30) NOT NULL, salary DECIMAL(7,2) NOT NULL, PRIMARY KEY(id));

delimiter $$
CREATE TRIGGER mk_backup BEFORE DELETE
ON employee
FOR EACH ROW
BEGIN
INSERT INTO backup (name, salary) VALUE (OLD.name, OLD.salary);
END
$$

SELECT * FROM backup;
DELETE FROM employee WHERE id = 1;

delimiter $$
CREATE FUNCTION count_backup ()
RETURNS INT
RETURN (SELECT COUNT(*) FROM backup);
$$

SELECT count_backup();

DELIMITER $$
CREATE PROCEDURE gender_count (person_gender CHAR(1))
BEGIN
IF (person_gender = 'm') THEN
SELECT COUNT(*) FROM employee WHERE gender = person_gender;
ELSEIF (person_gender = 'f') THEN
SELECT COUNT(*) FROM employee WHERE gender = person_gender;
END IF;
END
$$

CALL gender_count('f');