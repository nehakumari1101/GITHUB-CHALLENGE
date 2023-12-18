select * from amazon_order;
--change data type of table
alter table amazon_order alter column order_date datetime;
--if no time then 00:00:00 will be saved
-- DDL COMMAND BECAUSE CHANGE DEFINATION OF THE TABLE
insert into amazon_order values(5,'2022-12-11 12:09:08','milkcake',320.5,'upi');
--add new column(added in last always)in existing table
ALTER TABLE AMAZON_ORDER ADD  user_name varchar(20);
ALTER TABLE AMAZON_ORDER ADD  category varchar(20);
--all nulll values will be added in user name(null means unknown)
--null is anything you dont know
insert into amazon_order values(5,'2022-12-11 12:09:08','null',320.5,'upi','neha');
--"null is a astring'
insert into amazon_order values(6,'12-11-2020 12:19:08',null,370.5,'upi','neha');

--if want to drop a column from existing table
alter table amazon_order drop column category; 
alter table amazon_order alter column order_date datetime;--not run
-- incomaptible datatype must be used
--if table is empty then chnage can be done to any data type
-- everything can be varchar bt we cant kee everything as varchar as it occupies more space as well dtaa manipullation can't be done


--CONSTRAINTS
--can have multiple contraints leaving primary key
--unique can be null but should be unique no duplicate
--check with condition
--DEFAULT if no values is given then it will set the given default value
drop table orders;
select * from orders;
CREATE TABLE ORDERS
(
order_id integer NOT NULL unique,--or can say order_id integer primary kry
order_date date,
product_name varchar(100),
total_price decimal(8,2) ,
payment_method varchar(20) check  (payment_method in ('UPI','CREDIT CARD'))default 'UPI',
discount integer check(discount<=20),
category varchar(20) default'MENS WEAR'--deefault constraint
--good practice to give at end
--primary key(order_id,product_name)
--can make combination easily therefore good practice to give at end
);
--primary key is not null and unique
insert into  orders values(1,'2022-09-24','shirt',200.00,'upi',19,'kids wear');
insert into  orders values(11,'2022-09-24','shirt',200.00,'upi',19);--6 values even is default is there wont run
insert into  orders values(11,'2022-09-24','shirt',200.00,'upi',19,''); --empty string will be entered
insert into  orders values(2,'2022-09-24','shirt',200.00,'upi',19,null); --null will be there
-- for entering default value 
insert into ORDERS(order_id,order_date,product_name,total_price,payment_method,discount)
values(3,'2022-07-24','tshirt',1200.00,'upi',15);--here it will take default value
insert into ORDERS(order_id,order_date,product_name,total_price,payment_method)
values(4,'2022-07-24','tshirt',1200.00,'upi');--here it will take default value
insert into ORDERS(order_id,order_date,product_name,total_price,payment_method)
values(5,'2022-03-14','t-shirt',1400.00,DEFAULT);--here it will take default value

ALTER table orders ADD  ORDER_DATE integer(20);
-- error cant convert date to integer non compatible 
ALTER TABLE AMAZON_ORDER ADD  category varchar(20);
select * from orders;

--delete some specific data with filter condition
--DML
delete from orders where order_id=3;
delete from orders where product_name='tshirt';

----update statement------ DML
UPDATE ORDERS SET DISCOUNT=10;-- WIL SET ALL THE DATA TO 10 BECAUSE NO CONDITION IS GIVEN
UPDATE ORDERS SET DISCOUNT=10  WHERE ORDER_ID=2;-- ORDER HERE 1ST IT FINDS TABLE THENE WHERE CLAUSE THEN SET IS PERFORMED
--CAN UPDATE PRIMARY KEY ALSO BUT CANT VIOLET ITS RULE IV VIOLET THEN GIVES ERROR
--UPDAAAATE 2 COLUMS
UPDATE ORDERS SET product_name='JEANS2',payment_method='CREDIT CARD' WHERE product_name='SHIRT';







