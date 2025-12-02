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

INSERT INTO sladevelopers (
  user_id, developer_name, developer_email, developer_age, developer_mobile,
  createdby, createdat, updatedby, updateddat
) VALUES
('USR1001', 'Arun Kumar', 'arun.kumar@example.com', 25, "9876543210",
 'admin', NOW(), 'admin', NOW()),

('USR1002', 'Priya Sharma', 'priya.sharma@example.com', 28, "9876543210",
 'admin', NOW(), 'system', NOW()),

('USR1003', 'Dhanush Arumugam', 'dhanush@example.com', 26, "9876543210",
 'admin', NOW(), 'admin', NOW()),

('USR1004', 'Karthik M', 'karthik.m@example.com', 30, "9876543210",
 'system', NOW(), 'system', NOW()),

('USR1005', 'Sanjana R', 'sanjana.r@example.com', 24, "9876543210",
 'admin', NOW(), 'admin', NOW());


ALTER table developers MODIFY join_date datetime;

INSERT INTO developers (name,age,city,email,mobile) VALUES ("React",20,"Chennai","react@gamil.com","8056475876"),("React new",23,"Chennai","react23@gamil.com","8078475876");

UPDATE developers SET name = "React NODE" WHERE id = 1;

SET SQL_SAFE_UPDATES = 1;


UPDATE developers SET name = "React NODE", email="React45@gami.com" WHERE name = "React";

DELETE FROM developers;


TRUNCATE table developers;

alter table sladevelopers modify  developer_mobile VARCHAR(100)

