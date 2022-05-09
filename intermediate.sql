CREATE TABLE User(
	id INT NOT NULL auto_increment,
    name VARCHAR(50) NOT NULL,
    age int NOT NULL,
    email VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO User (name, age, email) VALUES ("Oscar", 25, "oscar@gmail.com");
INSERT INTO User (name, age, email) VALUES ("Layla", 15, "layla@gmail.com");
INSERT INTO User (name, age, email) VALUES ("Nicolas", 36, "nico@gmail.com");
INSERT INTO User (name, age, email) VALUES ("Mauro", 7, "mauro@gmail.com");

-- More about Select
SELECT * FROM User;
SELECT * FROM User LIMIT 1;
SELECT * FROM User WHERE age > 15;
SELECT * FROM User WHERE age >= 15;
SELECT * FROM User WHERE age > 20 AND email = "nico@gmail.com";
SELECT * FROM User WHERE age > 20 OR email = "layla@gmail.com";
SELECT * FROM User WHERE email != "layla@gmail.com";
SELECT * FROM User WHERE age BETWEEN 15 and 30;
SELECT * FROM User WHERE email LIKE "%gmail%";
SELECT * FROM User WHERE email LIKE "%gmail";
SELECT * FROM User WHERE email LIKE "oscar%";

SELECT * FROM User ORDER BY age ASC;
SELECT * FROM User ORDER BY age DESC;
	
SELECT MAX(age) AS Mayor FROM User;
SELECT MIN(age) AS Mayor FROM User;

SELECT id, name FROM User;
SELECT id, name AS Nombre FROM User;
