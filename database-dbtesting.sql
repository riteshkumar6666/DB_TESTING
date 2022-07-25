
-- MySQL Clauses 
-- ..................
-- ///WHERE Clause ////
use dbtesting;
desc companies;
SELECT *  FROM companies
WHERE city = 'goa';  
-- /////////////////////
--  WHERE Clause with AND condition
SELECT *  FROM companies
WHERE city = 'goa' AND age>19;

-- //// Distinct Clause////
create table india(
id int not null primary key,
name varchar(50) not null,
city varchar(50) not null
);
desc india;
insert into india(id,name,city)
values(4,"raj","delhi");
select * from india;

SELECT DISTINCT city 
FROM india;  
SELECT DISTINCT name,city
FROM india;

-- ///FROM Clause ///
SELECT *  FROM india
WHERE id <= 2;   
-- ORDER BY Clause 
SELECT *  FROM india
WHERE city = 'patna'  
ORDER BY name desc;  

-- /// GROUP BY Clause ///
desc india;
select * from india;
SELECT city, COUNT(*)  
FROM   india 
GROUP BY city;   

SELECT id, COUNT(*)  
FROM   india 
GROUP BY id;   

SELECT name, COUNT(*)  

FROM   india 
GROUP BY name;

-- ///HAVING Clause///
SELECT name, SUM(id) AS "Total id"  
FROM india
GROUP BY id  
HAVING SUM( id) > 1;  
-- ..........................
-- MySQL Conditions 
-- ///MySQL AND & OR condition///

SELECT *  FROM india
WHERE (name = 'raj' AND city = 'delhi')  
OR (id > 3);  

SELECT *  FROM india
where id>1;

SELECT *  FROM india
where id>1 AND id< 3;

-- /// Boolean///

 CREATE TABLE customer (  
    id INT PRIMARY KEY AUTO_INCREMENT,  
    name VARCHAR(40) NOT NULL,  
    age VARCHAR(3),  
    pass BOOLEAN  
);  
desc customer;

INSERT INTO customer(name, pass)
 VALUES('kumar',true),
       ('ritesh',false);  
select * from customer;

 -- LIKE condition
  SELECT name  
FROM india
WHERE city LIKE 'pat%';  

-- /// IN Condition///

SELECT *  
FROM india
WHERE name IN ('ritesh', 'rahul', 'mukesh');  

-- ///ANY///
CREATE TABLE mango (  
    num_value INT  
);   
INSERT INTO mango (num_value)   
VALUES(10), (20), (25);  
desc mango;

CREATE TABLE apple (  
    num_val int  
);   
INSERT INTO apple (num_val)  
VALUES(20), (7), (10);  
desc apple;

SELECT num_value FROM mango  
WHERE num_value > ANY (SELECT num_val FROM apple);  

-- MySQL Exists
CREATE TABLE buyer(  
  cust_id int NOT NULL,  
  name varchar(35),  
  occupation varchar(25),  
  age int  
);  
CREATE TABLE orders (  
    order_id int NOT NULL,   
    cust_id int,   
    prod_name varchar(45),  
    order_date date  
);  

INSERT INTO buyer(cust_id, name, occupation, age)   
VALUES (101, 'Peter', 'Engineer', 32),  
(102, 'Joseph', 'Developer', 30),  
(103, 'John', 'Leader', 28),  
(104, 'Stephen', 'Scientist', 45),  
(105, 'Suzi', 'Carpenter', 26),  
(106, 'Bob', 'Actor', 25),  
(107, NULL, NULL, NULL);  

INSERT INTO orders (order_id, cust_id, prod_name, order_date)   
VALUES (1, '101', 'Laptop', '2020-01-10'),  
(2, '103', 'Desktop', '2020-02-12'),  
(3, '106', 'Iphone', '2020-02-15'),  
(4, '104', 'Mobile', '2020-03-05'),  
(5, '102', 'TV', '2020-03-20');  

SELECT * FROM buyer;
OR;
SELECT * FROM orders;  
  
  -- ///NOT condition///
  SELECT *  FROM india
WHERE name NOT IN ('rahul','mukesh','raj');  

-- Not equal
SELECT * FROM india
WHERE city <> "patna";  

-- ///Null condition///
SELECT *  FROM india
WHERE name IS NULL;  

-- ///NOT NULL CONDITION///

SELECT *  FROM india
WHERE name IS NOT NULL;  

-- /// Between condition///

SELECT *  FROM india  
WHERE id BETWEEN 1 AND 3 OR city='lucknow';

-- Count() Function

SELECT COUNT(name) FROM india;   

 SELECT COUNT(*) FROM india WHERE id>1;    
 
 -- sum() function
 select * from buyer;
 
 
 SELECT SUM(age) AS "Total age" FROM vote;  
 
 -- MIN() Function
 SELECT MIN(age) AS Minimum_age FROM vote;  
 desc vote;
 -- MAX() Function
 SELECT MAX(age) AS Maximum_age FROM vote;
 
 -- ////joins ////
create table vehicle1(
eNo int not null ,
eName varchar(50) not null,
Address varchar(50) not null
);
insert into vehicle1(eNo,eName,Address)
values(4,"rahul","delhi");

create table Department1(
DepNo  varchar(55) not null,
Name varchar(55) not null,
eNo int not null
);
insert into Department1(DepNo,Name,eNo)
values("D4","EC",4);
select * from vehicle1 inner join Department1
ON vehicle1.eNo=department1.eNo;

select * from vehicle1 left join Department1
ON vehicle1.eNo=department1.eNo;

 select * from vehicle1 right join Department1
ON vehicle1.eNo=department1.eNo;

select * from vehicle1 cross join Department1
ON vehicle1.eNo=department1.eNo;
 
 -- //TCL Commands//
 create table cricket(
 iccrank int not null primary key,
 NAME varchar(50) not null,
 BEST varchar(58) not null
 );
 insert into  cricket(iccrank,NAME,BEST)
 values(4,"pant","123");
 desc cricket;
 select * from cricket;
 commit;
 rollback;
 select * from cricket;
 update cricket set NAME='kohli' where iccrank=2;
 select * from cricket;
 rollback;
 select * from cricket;
 delete from cricket where iccrank=1;
 select * from cricket;
 rollback;
 select * from cricket;

 








  

 
 