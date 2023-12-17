--DDL DATA DEFINATION LANGUAGE
create table amazon_order
(
order_id integer,
order_date date,
product_name varchar(100),
total_price decimal(8,2) ,
payment_method varchar(20)

);

--DML DATA MANIPULATIN LANGUAGE
insert into amazon_order values(1,'2022-12-01','milk',30.5,'upi');
insert into amazon_order values(2,'2022-12-02','milk',310.5,'credit card');
insert into amazon_order values(3,'2022-12-03','baby milk',130.5,'cash');
insert into amazon_order values(4,'2022-12-11','milk powder',230.5,'upi');
--DQL DATA QUERING LANGUAGE
select * from amazon_order;
select order_id, total_price from amazon_order;
select top 1 * from amazon_order;--select top 1 column from table
select * from amazon_order order by order_date;--by default ascending order
select * from amazon_order order by order_date desc;--by default descending order
select * from amazon_order order by order_date asc;--by default ascending order
select * from amazon_order order by order_date asc,total_price desc;--two colums used, left to right prefernece is given

drop table amazon_order;

-- TO DELETE DATA
delete from amazon_order;--DML 
/*
data types--
integer= 1,2,3,-2,-5
date='2020-11-01'
varchar(100)='baby_milk'
decimal(6,2)-can store upto 4 integer and 2 decimal point
deimal(4,2)- can store upto 2 integer andd 2 decimal point
rive-- 
multiple forder
*/