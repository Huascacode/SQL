-- Creating a user
CREATE USER spacemonkey@localhost IDENTIFIED BY 'spacepass';
-- Dropping user due to troubleshooting issues with previous spacemonkey name holder
DROP USER spacemonkey@localhost;
-- Creating a db for case study
CREATE DATABASE sqlpractice;
-- Selecting db
USE sqlpractice;
-- Creating table on the database
CREATE TABLE pokemon(id INT(3) NOT NULL AUTO_INCREMENT, name VARCHAR(45), type VARCHAR(12), PRIMARY KEY (id));
-- Inserting values on the database
INSERT INTO pokemon (name, type) VALUES ('Bulbasaur', 'Grass&Poison');
INSERT INTO pokemon (name, type) VALUES ('Ivysaur', 'Grass&Poison');
INSERT INTO pokemon (name, type) VALUES ('Charmander', 'Fire');
INSERT INTO pokemon (name, type) VALUES ('Charizard', 'Fire&Flying');
INSERT INTO pokemon (name, type) VALUES ('Squirtle', 'Water');
INSERT INTO pokemon (name, type) VALUES ('Wartortle', 'Water');
INSERT INTO pokemon (name, type) VALUES ('Blastoise', 'Water');
INSERT INTO pokemon (name, type) VALUES ('Caterpie', 'Bug');
INSERT INTO pokemon (name, type) VALUES ('Metapod', 'Bug');
INSERT INTO pokemon (name, type) VALUES ('Butterfree ', 'Bug/Flying');
INSERT INTO pokemon (name, type) VALUES ('Weedle', 'Bug/Posion');
-- Adding a new column on the table for victories by pokemon
ALTER TABLE pokemon ADD victories INT(2);
-- Describing pokemon table
DESCRIBE pokemon;
SELECT * FROM pokemon;
GRANT ALL PRIVILEGES ON sqlpractice.pokemon TO spacemonkey@localhost;

UPDATE `sqlpractice`.`pokemon` SET `victories` = '10' WHERE (`id` = '1');


CREATE FUNCTION addVictory (amount INT(3), id(2))
RETURNS UPDATE `sqlpractice`.`pokemon` SET `victories` = '10' WHERE (`id` = id);
RETURN SELECT * FROM pokemon WHERE id = id;

