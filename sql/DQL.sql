use sladb;

insert into aptitude_new (aptitude_user_id,full_mark,join_data) VALUES ("USR1001","100",curdate());

select * from sladevelopers;
select * from aptitude_new;

select full_mark as totalmark from aptitude_new;

select * from sladevelopers where developer_age >= 25;


select * from sladevelopers where developer_age > 25;

select * from sladevelopers where developer_age >= 25 OR createdby = "users";

select * from sladevelopers where NOT createdby = "system";

select * from sladevelopers where developer_age BETWEEN 28 AND 30;


select * from sladevelopers where user_id LIKE "%1%";
select * from sladevelopers where developer_name LIKE "%r";

select * from sladevelopers where developer_name LIKE "%ar%";  


select * from sladevelopers ORDER BY developer_name DESC;

select * from sladevelopers LIMIT 1;
select DISTINCT createdby from sladevelopers;


select COUNT(*) from sladevelopers;
select sum(developer_age) as Total_age from sladevelopers;
select AVG(developer_age) from sladevelopers;
select max(developer_age) from sladevelopers;

select createdby, COUNT(*) AS ADMINUSERS from sladevelopers group by createdby;

select createdby, COUNT(*) AS ADMINUSERS from sladevelopers where developer_age > 25  group by createdby;

select createdby, COUNT(*) AS ADMINUSERS from sladevelopers  group by createdby HAVING avg(developer_age) > 26;

create table slaemp (
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(30),
department VARCHAR(30),
salary int,
city  VARCHAR(30)

);

insert into slaemp (name,department,salary,city) VALUES ("React","IT",20000,"chennai"),("React","CS",30000,"madurai");

SELECT * FROM sladb.slaemp;

select department, COUNT(*) AS Department from slaemp GROUP BY department;

select department, AVG(salary) AS SALARYAVG from slaemp GROUP BY department;

select city, count(*) AS TOTALCITY from slaemp GROUP BY city;

select department, min(salary) AS SALARYMIN,max(salary) AS SALARYMIN from slaemp GROUP BY department;

select department, count(*) AS TOTAl_EMP from slaemp GROUP BY department having avg(salary) > 20000;


