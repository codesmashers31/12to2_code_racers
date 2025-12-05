use newdb;
select min(emp_salary) from emp;
select * from emp where emp_salary = (select min(emp_salary) from emp);

select emp_depart from emp;

select emp_name from emp where emp_depart in (select emp_depart from emp);
select emp_depart,max(emp_salary) from emp group by emp_depart;
select * from emp;
select * from emp e where (e.emp_depart,e.emp_salary) in (select emp_depart,max(emp_salary) from emp group by emp_depart);