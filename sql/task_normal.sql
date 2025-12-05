create database amazon;
use amazon;
create table customers (
customer_id varchar(20) primary key,
customer_name varchar(20),
customer_phone varchar(20)
);

CREATE TABLE product(
product_id int PRIMARY KEY AUTO_INCREMENT,
product_name varchar(25),
product_price int
);


-- order_id (PK)
-- customer_id (FK)
-- product_id (FK)
-- order_date

CREATE TABLE orders(
order_id int PRIMARY KEY AUTO_INCREMENT,
order_date datetime,
customer_id varchar(20),
product_id int,
Foreign Key (customer_id) references customers(customer_id),
Foreign Key (product_id) references product(product_id)
);