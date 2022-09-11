CREATE TABLE ppl 
(id INT(3) NOT NULL AUTO_INCREMENT, 
first_name VARCHAR(40) NOT NULL, 
last_name VARCHAR(40) NOT NULL, 
email VARCHAR(20) NOT NULL, 
phone INT(10) NOT NULL, 
hire_date DATE NOT NULL, 
job_id VARCHAR(10) NOT NULL,
salary DECIMAL(7,2),
commision_pct VARCHAR(20) NOT NULL,
manager_id INT(3) NOT NULL,
department_id INT(3) NOT NULL,
PRIMARY KEY(id));

ALTER TABLE `class`.`ppl` 
CHANGE COLUMN `hire_date` `hire_date` INT(9) NOT NULL;

ALTER TABLE `class`.`ppl`
CHANGE COLUMN `salary` `salary` DECIMAL(,2);

UPDATE `class`.`ppl` SET `salary` = '24000,00' WHERE (`id` = '1');


DESCRIBE ppl;

INSERT INTO ppl (first_name, last_name, email, phone, hire_date, job_id, salary, commision_pct, manager_id, department_id)
VALUES ('Steven', 'Test', 'test@mail.com', 99999999, 20121212, 'testing', 24000.00, 'test', 2, 2);
INSERT INTO ppl (first_name, last_name, email, phone, hire_date, job_id, salary, commision_pct, manager_id, department_id)
VALUES ('Neena', 'Test', 'test@mail.com', 99999999, 20121212, 'testing', 3500.00, 'test', 2, 2);
INSERT INTO ppl (first_name, last_name, email, phone, hire_date, job_id, salary, commision_pct, manager_id, department_id)
VALUES ('Lex', 'Test', 'test@mail.com', 99999999, 20121212, 'testing', 1600.00, 'test', 2, 2);
INSERT INTO ppl (first_name, last_name, email, phone, hire_date, job_id, salary, commision_pct, manager_id, department_id)
VALUES ('Alexander', 'Test', 'test@mail.com', 99999999, 20121212, 'testing', 1000.00, 'test', 2, 2);
INSERT INTO ppl (first_name, last_name, email, phone, hire_date, job_id, salary, commision_pct, manager_id, department_id)
VALUES ('Bruce', 'Test', 'test@mail.com', 99999999, 20121212, 'testing', 1000.00, 'test', 2, 2);
INSERT INTO ppl (first_name, last_name, email, phone, hire_date, job_id, salary, commision_pct, manager_id, department_id)
VALUES ('David', 'Test', 'test@mail.com', 99999999, 20121212, 'testing', 5700.00, 'test', 2, 2);
INSERT INTO ppl (first_name, last_name, email, phone, hire_date, job_id, salary, commision_pct, manager_id, department_id)
VALUES ('Valii', 'Test', 'test@mail.com', 99999999, 20121212, 'testing', 2000.00, 'test', 2, 2);
INSERT INTO ppl (first_name, last_name, email, phone, hire_date, job_id, salary, commision_pct, manager_id, department_id)
VALUES ('Diana', 'Test', 'test@mail.com', 99999999, 20121212, 'testing', 4400.00, 'test', 2, 2);
INSERT INTO ppl (first_name, last_name, email, phone, hire_date, job_id, salary, commision_pct, manager_id, department_id)
VALUES ('Jake', 'Test', 'test@mail.com', 99999999, 20121212, 'testing', 4400.00, 'test', 2, 1);
INSERT INTO ppl (first_name, last_name, email, phone, hire_date, job_id, salary, commision_pct, manager_id, department_id)
VALUES ('Peter', 'Test', 'test@mail.com', 99999999, 20121212, 'testing', 4400.00, 'test', 2, 1);
INSERT INTO ppl (first_name, last_name, email, phone, hire_date, job_id, salary, commision_pct, manager_id, department_id)
VALUES ('Rhaenys', 'Test', 'test@mail.com', 99999999, 20121212, 'testing', 4400.00, 'test', 2, 1);

SELECT SUM(salary) FROM ppl;

SELECT * FROM ppl;
SELECT department_id, SUM(department_id) AS sum_total FROM ppl GROUP BY department_id;

SELECT department_id, SUM(salary) FROM ppl GROUP BY department_id;

SELECT first_name, salary FROM ppl;

SELECT first_name FROM ppl WHERE department_id = 1;

SELECT FIRST_NAME, SALARY FROM ppl WHERE salary > 800;

CREATE TABLE localization (id INT(2) NOT NULL AUTO_INCREMENT, PRIMARY KEY(id));
ALTER TABLE `class`.`localization` ADD COLUMN `region` INT NOT NULL AFTER `id`;

SELECT concat('The employee', ' ',first_name, ' ', last_name, ' ','got hired on', ' ', hire_date) FROM ppl;
SELECT concat('The employee', ' ',first_name, ' ', last_name, ' ','got hired on', ' ', hire_date) FROM ppl WHERE first_name='Steven';

DESCRIBE localization;

