CREATE TABLE coffee_table (
id INT(2) NOT NULL AUTO_INCREMENT,
name VARCHAR(30),
region VARCHAR(30),
roast VARCHAR(30),
PRIMARY KEY (id)
);

SHOW TABLES;

DESCRIBE coffee_table;


INSERT INTO coffee_table (name, region, roast) VALUES ('default route', 'ethiopia', 'light');
INSERT INTO coffee_table (name, region, roast) VALUES ('docker run', 'mexico', 'medium');
INSERT INTO coffee_table (name, region, roast) VALUES ('helpdesk', 'honduras', 'medium');
INSERT INTO coffee_table (name, region, roast) VALUES ('on-call', 'peru', 'dark');
INSERT INTO coffee_table (name, region, roast) VALUES ('ifconfig', 'tanzania', 'blonde');
INSERT INTO coffee_table (name, region, roast) VALUES ('tranceroute', 'bali', 'med-dark');

SELECT * FROM coffee_table;

SELECT name FROM coffee_table;


CREATE TABLE avengers(
id INT(3) NOT NULL AUTO_INCREMENT,
first_name VARCHAR(20),
last_name VARCHAR(20),
origin VARCHAR(20),
age int(4),
alias VARCHAR(20),
PRIMARY KEY(id)
);

DESCRIBE avengers;

INSERT INTO avengers (first_name, last_name, origin, age, alias) VALUES ('thor','odinson','asgard',1500,'strongest avenger');
INSERT INTO avengers (first_name, last_name, origin, age, alias) VALUES ('clint','barton','earth',35,'hawkeye');
INSERT INTO avengers (first_name, last_name, origin, age, alias) VALUES ('tony','stark','earth',52,'iron man');
INSERT INTO avengers (first_name, last_name, origin, age, alias) VALUES ('peter','parker','earth',17,'spiderman');
INSERT INTO avengers (first_name, last_name, origin, age, alias) VALUES ('groot','groot','planet x',18,'tree');
INSERT INTO avengers (first_name, last_name, origin, age, alias) VALUES ('jeff','smith','earth x',43,'jeff the man');

DELETE FROM avengers WHERE id=1;

UPDATE `College`.`avengers` SET `id` = '1' WHERE (`id` = '2');
UPDATE `College`.`avengers` SET `id` = '2' WHERE (`id` = '3');
UPDATE `College`.`avengers` SET `id` = '3' WHERE (`id` = '4');
UPDATE `College`.`avengers` SET `id` = '4' WHERE (`id` = '5');
UPDATE `College`.`avengers` SET `id` = '5' WHERE (`id` = '6');

SELECT * FROM avengers WHERE origin = "earth";
SELECT * FROM avengers WHERE origin = "earth" OR origin = "asgard";
SELECT alias FROM avengers WHERE age < 20;
SELECT * FROM avengers WHERE NOT origin = "earth";

DELETE FROM avengers WHERE first_name = "jeff" AND id = 7;

UPDATE avengers SET last_name = NULL WHERE first_name = "groot" AND id = 5;

SELECT * FROM avengers ORDER BY age ASC;

ALTER TABLE avengers ADD beard BOOLEAN;

UPDATE avengers SET beard = TRUE WHERE id = 1;
UPDATE avengers SET beard = FALSE WHERE id = 2;
UPDATE avengers SET beard = TRUE WHERE id = 3;
UPDATE avengers SET beard = FALSE WHERE id = 4;
UPDATE avengers SET beard = FALSE WHERE id = 5;

SELECT * FROM avengers;
