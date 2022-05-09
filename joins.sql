CREATE TABLE Products(
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    created_by INT NOT NULL,
    brand VARCHAR(50) NOT NULL,
    PRIMARY KEY (id), 
    -- Creating foreign key
    FOREIGN KEY (created_by) REFERENCES User(id)
);

-- Renaming table
RENAME TABLE Products to Product;

INSERT INTO Product (name, created_by, brand)
VALUES
	('iPad', 1, 'Apple'),
    ('iPhone', 1, 'Apple'),
    ('iWatch', 2, 'Apple'),
    ('MacBook', 1, 'Apple'),
    ('iMac', 3, 'Apple'),
    ('iPad mini', 2, 'Apple');

-- Left Join
SELECT u.id, u.email, p.name FROM User u LEFT JOIN Product p ON u.id = p.created_by;

-- Right Join
SELECT u.id, u.email, p.name FROM User u RIGHT JOIN Product p ON u.id = p.created_by;

-- Inner Join
SELECT u.id, u.email, p.name FROM User u INNER JOIN Product p ON u.id = p.created_by;

-- Cross Join
SELECT u.id, u.name, p.id, p.name FROM User u CROSS JOIN Product p;

-- Group by 
SELECT COUNT(id), brand FROM Product GROUP BY brand;
SELECT COUNT(p.id), u.name FROM Product p LEFT JOIN User u 
ON u.id = p.created_by GROUP BY p.created_by;

-- Having
SELECT COUNT(p.id), u.name FROM Product p LEFT JOIN User u 
ON u.id = p.created_by GROUP BY p.created_by
HAVING COUNT(p.id) >= 2;

-- Drop 
DROP TABLE Product;
DROP TABLE Animals;
DROP TABLE User;
