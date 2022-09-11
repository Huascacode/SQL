USE sqlpractice;
DESCRIBE pokemon;

ALTER TABLE `sqlpractice`.`pokemon`
ADD COLUMN `country id` INT(3) NOT NULL AFTER `victories`;

CREATE TABLE origin_country (
country_id INT PRIMARY KEY, 
name VARCHAR(45) NOT NULL, 
location VARCHAR(45) NOT NULL,
battles INT(3)
);

CREATE TABLE owner(
owner_id INT PRIMARY KEY,
name VARCHAR(40) NOT NULL,
last_name VARCHAR(30) NOT NULL,
age INT(3) NOT NULL,
gender CHAR(1) NOT NULL,
country_id CHAR(2) NOT NULL
);

CREATE TABLE battles(
battle_id INT PRIMARY KEY,
pokemon_a INT (3) NOT NULL,
pokemon_b INT (3) NOT NULL,
stadium_id INT NOT NULL,
battle_day DATE
);

CREATE TABLE stadium (
std_id INT PRIMARY KEY,
name VARCHAR(30) NOT NULL,
country_id CHAR (2) NOT NULL,
battles INT(4) NOT NULL
);

SHOW TABLES;