CREATE DATABASE classreact;
use classreact;
CREATE table developers (
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(200),
age INT,
city CHAR(10),
email VARCHAR(100),
mobile VARCHAR(100),
join_date DATE 

);

ALTER table developers MODIFY join_date datetime;

INSERT INTO developers (name,age,city,email,mobile) VALUES ("React",20,"Chennai","react@gamil.com","8056475876"),("React new",23,"Chennai","react23@gamil.com","8078475876");

UPDATE developers SET name = "React NODE" WHERE id = 1;

SET SQL_SAFE_UPDATES = 1;


UPDATE developers SET name = "React NODE", email="React45@gami.com" WHERE name = "React";

DELETE FROM developers;


TRUNCATE table developers;



