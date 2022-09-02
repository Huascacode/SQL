CREATE TABLE employees(id INT(3) NOT NULL AUTO_INCREMENT, employee VARCHAR(30) NOT NULL, address VARCHAR(30) NOT NULL, num INT(6) NOT NULL, pay DECIMAL(6,2) NOT NULL, city_code INT(2) NOT NULL, PRIMARY KEY(id));
SHOW TABLES;

ALTER TABLE employees ADD COLUMN gender CHAR(1);

INSERT INTO employees (employee, address, num, pay, city_code, gender) VALUES ('Peter','Baker Street',30, 1500.00, 20,'m');
INSERT INTO employees (employee, address, num, pay, city_code, gender) VALUES ('Mary','Love Street',25, 1600.00, 22,'f');
INSERT INTO employees (employee, address, num, pay, city_code, gender) VALUES ('Joseph','Oak Street',41, 1400.00, 24,'m');
INSERT INTO employees (employee, address, num, pay, city_code, gender) VALUES ('Magda','Redwood Street',18, 3000.00, 18,'f');

SELECT * FROM employees;
SELECT employee, gender FROM employees;
SELECT * FROM employees WHERE pay > 2000;
SELECT * FROM employees WHERE gender = 'm'AND pay < 1500;
SELECT * FROM employees ORDER BY pay ASC;
SELECT * FROM employees WHERE pay >= 2000 AND pay <= 3000;
SELECT * FROM employees WHERE employee LIKE 'm%';
SELECT * FROM employees WHERE employee LIKE '%a%';
SELECT * FROM employees WHERE employee NOT LIKE  'm%';
ALTER TABLE employees ADD branch VARCHAR(10);

DESCRIBE employees;

UPDATE employees SET branch='production' WHERE id > 1;
UPDATE employees SET branch='manager' WHERE id = 1;

SELECT * FROM employees;
