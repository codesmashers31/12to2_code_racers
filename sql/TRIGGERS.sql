CREATE DATABASE TRIGGERS_db;
USE TRIGGERS_db;
CREATE TABLE products(
id INT PRIMARY KEY AUTO_INCREMENT,
product_name VARCHAR(40),
product_price INT,	
product_add_date datetime
);

CREATE TABLE products_log(
log_id INT PRIMARY KEY AUTO_INCREMENT,
action_type VARCHAR(40),
product_new_name VARCHAR(40),
product_old_name VARCHAR(40),
product_old_price VARCHAR(40),
product_new_price VARCHAR(40),
log_time TIMESTAMP default current_timestamp
);


DELIMITER $$

CREATE TRIGGER VALIDATE_DATA BEFORE INSERT ON products 
FOR EACH ROW
SET NEW.product_price = IF(NEW.product_price < 0, 0, NEW.product_price);

$$ DELIMITER ;


DELIMITER $$

CREATE TRIGGER audittrigr AFTER INSERT ON products
FOR EACH ROW
BEGIN 
	INSERT INTO products_log (action_type,product_new_name,product_new_price) VALUES ("INSERT",NEW.product_name,NEW.product_price);
END$$

$$ DELIMITER ;

DELIMITER $$

CREATE TRIGGER updateaudit AFTER UPDATE ON products
for each row
insert into products_log (action_type,product_new_name,product_old_name,product_new_price,product_old_price)
 values ("UPDATE",NEW.product_name,OLD.product_name,NEW.product_price,OLD.product_price);
 $$ DELIMITER ;
 
 
 
 DELIMITER $$

CREATE TRIGGER insertdelete AFTER INSERT ON products
for each row 
delete from products_log where log_id = 2;

$$ DELIMITER ;


