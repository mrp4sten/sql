-- Create Database
CREATE DATABASE HelloWorld;

-- Show Databases
SHOW DATABASES;

-- Use database
USE HelloWorld;

-- Create Tables
CREATE TABLE Animals(
	id INT,
    specie VARCHAR(255),
    state VARCHAR(255),
    -- Creating Primary Key
    PRIMARY KEY (id)
);

-- Modify Table Created
ALTER TABLE Animals MODIFY COLUMN id INT auto_increment;

-- Inserting data into table
INSERT INTO Animals(specie, state) VALUES ("Cat", "Sleeping");
INSERT INTO Animals(specie, state) VALUES ("Dog", "Eating");
INSERT INTO Animals(specie, state) VALUES ("Duck", "Playing");

-- Select elements into table
SELECT * FROM Animals;
SELECT * FROM Animals WHERE id = 3;
SELECT * FROM Animals WHERE state = "Eating";
SELECT * FROM Animals WHERE state = "Eating" AND specie = "Dog";

-- Update an element into table
UPDATE Animals SET state = "Taking a shower" WHERE id = 1;

-- Delete an element into table 
DELETE FROM Animals WHERE id = 3;
