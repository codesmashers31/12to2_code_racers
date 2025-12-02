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



