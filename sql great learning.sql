create table employes (
emp_id int(20) not null,
first_name varchar(20),
last_name varchar(20),
salary int(10),
primary key(emp_id));

select * from employes;

insert into employes (emp_id,first_name,last_name,salary) 
values (3,'steven','john',30000);

update employes
set last_name='naik' where emp_id=5;

delete from employes where emp_id in(3);

select * from employes where emp_id=1;

select * from employes where first_name='harry' and salary=20000;

select * from employes where first_name='harry' or salary=20000;

select * from employes where first_name='harry' and salary!=10000;

select * from employes where first_name='erik' and salary <=10000;

select * from employes where first_name='erik' and salary <= 10000;

select * from employes where first_name!='harry';

select * from employes where salary between 20000 and 80000;

select * from employes where first_name like 'perik';

select * from employes where salary is null;

select * from employes where salary in (10000,20000,50000);

select distinct(first_name) from employes;

select distinct(first_name='terik') from employes; 

select * from employes where last_name like 't%';

select * from employes where last_name like '% h %' ;

select avg(salary) from employes;

select count(*) from employes;

select min(salary) from employes;

select max(salary) from employes;

select sum(salary) from employes;

select * from employes;

alter table employes add column dept_id varchar(20);

update employes set dept_id='tech' where emp_id=8;

select max(salary),dept_id from employes group by dept_id;

select min(salary) ,dept_id from employes group by dept_id;

select min(salary) ,last_name from employes group by last_name;

select 'thomas',dept_id from employes group by dept_id;

select avg(salary), dept_id from employes group by dept_id having count(dept_id)>=2;

alter table employes rename column dept to dept_id;

select max(salary),dept_id from employes group by dept_id having count(dept_id)>=2;

select * from employes order by salary desc;

select * from employes order by salary asc;

create table product1(
category_id int,
product_name varchar(20));

show tables;

describe table product1;

select * from product1;

insert into product1 values( 4,'nikon');

create table product2(category_id int, product_name varchar(20));

insert into product2 values(6,'playstation');

select * from product2;

select product_name from product1 union select product_name from product2;

select product_name from product1 union all select product_name from product2;

create table department(
dept_id int,
dept varchar(20),
dept_loc varchar(20));

insert department values(5,'operations','new york');

select * from department;

select * from employes;

select e.first_name,e.salary,d.dept,d.dept_loc
from employes e 
inner join department d 
on e.dept_id=d.dept;