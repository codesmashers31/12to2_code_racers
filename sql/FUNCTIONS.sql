-- DML
-- INSERT
INSERT INTO slaemp (name,department,salary,city,join_date)  values ("react","MERN",1000.23,"Chennai","2025-08-11");
INSERT INTO slaemp (name,department,salary,city,join_date)  values (UPPER("react"),lower("MERN"),round(1000.90),"Chennai",curdate()); 
-- update
update slaemp set name = UPPER("NODE") where id = 2;

 -- DQL
 -- Fetch the datas
 
select count(*) as total_emp from slaemp;
select sum(salary) as Total_salary from slaemp;

select round(AVG(salary)) as AVG_salary from slaemp;

select CONCAT(name,'-',department) as emp_info from slaemp;

select SUBSTRING(name,1,4) as firstword from slaemp;

select name,length(name) as name_length from slaemp;

select replace(name,'e', '@') as replacethe_cha from slaemp;

select curdate() from slaemp;

select name, YEAR(join_date) from slaemp;

Select  department as dept, avg(salary) as dept_avg_salary from slaemp group by department;

select * from slaemp where join_date >= current_date - interval 30 DAY;

SELECT id,name,UPPER (name) Emp_Names
FROM slaemp where id = 1;
SELECT city ,count(city) as total_employee from slaemp group by city;

SELECT city, AVG(salary) AS avg_salary
FROM slaemp
GROUP BY city
HAVING AVG(salary) > 10000;


select name , datediff(CURRENT_DATE,join_date) as emp_working_days from slaemp;



