create database tea;
use tea;
create table userdatas (
id int PRIMARY KEY auto_increment,
username varchar(20),
mobile varchar(11),
city varchar(12),
joindate datetime
);


create table orders (
id int PRIMARY KEY auto_increment,
user_id int,
order_id varchar(30),
product_id varchar(30),
order_date datetime,
Foreign Key (user_id) references userdatas(id)
);


create table products (
id int PRIMARY KEY auto_increment,
product_id varchar(30),
product_name varchar(20),
product_price varchar(200),
product_catogery varchar(200),
product_add_date datetime
);

-- INNER JOIN


select * from orders as O INNER JOIN userdatas as U ON O.user_id = U.id;
select * from orders as O INNER JOIN userdatas as U ON O.user_id = U.id inner join products as P on O.product_id = P.product_id;

select *  from orders as O left join products as P on O.product_id = P.product_id;
 
select *,IFNULL(P.product_id, "There is no Produce")  from orders as O left join products as P on O.product_id = P.product_id;


