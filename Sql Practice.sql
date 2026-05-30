insert into customers values
(1,"Hariny","Bangalore"),
(2,"Ram","Chennai"),
(3,"Sita","Delhi");

select * from customers;

set SQL_SAFE_UPDATES=0;
update customers set city="Chennai" where customer_name="Hariny";
set SQL_SAFE_UPDATES=1;

select * from customers;

set SQL_SAFE_UPDATES=0;
delete from customers where city="Chennai" ;
set SQL_SAFE_UPDATES=1;

create table products(
products_id int primary key,
product_name varchar(100),
category varchar(50),
price decimal(10,2),
stock_quantity int,
supplier_city varchar(50));

insert into products values 
(1,"Laptop","Electronics",55000,10,"hyderabad"),
(2, 'Wireless Mouse', 'Electronics', 25.50, 150, 'Seattle'),
(3, 'Office Chair', 'Furniture', 189.00, 30, 'Chicago');


drop table products;

CREATE TABLE products
(
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(30),
    price DECIMAL(10,2),
    stock_quantity INT,
    supplier_city VARCHAR(30)
);


INSERT INTO products VALUES
(1,'Laptop','Electronics',55000,10,'Hyderabad'),
(2,'Mobile','Electronics',25000,25,'Bangalore'),
(3,'Printer','Electronics',18000,8,'Pune'),
(4,'Office Chair','Furniture',7500,15,'Mumbai'),
(5,'Desk','Furniture',12000,5,'Chennai'),
(6,'Notebook','Stationery',80,200,'Hyderabad'),
(7,'Pen','Stationery',20,500,'Delhi'),
(8,'Water Bottle','Accessories',500,50,'Bangalore');


select * from products; 

select * from products 
where stock_quantity < 20;

select * from products
where price > 1500;
 
select * from products 
where category = 'electronics' and price > 20000 ; 

select * from products 
where supplier_city = 'Hyderabad' or supplier_city = 'Banglore' ;

select * from products where not category = 'electronics' ; 

select * from products where supplier_city in ('hyderabad', 'delhi');
select * from products where price between 500 and 20000 ; 

select * from products where product_name like 'p%' ; 
select * from products where product_name like '%k' ; 
select * from products where product_name like '%top%' ; 

select product_name as Product , price as Productprice from products;

select * from products  order by price desc; 
select * from products  order by price asc; 


select count(*) from products; 
select count(*) from products where category = 'electronics' ;  

select sum(price) from products ; 
select sum(stock_quantity) from products; 

SELECT AVG(price) AS average_price FROM products; 
select max(price) from products ; 
select min(price) from products; 
SELECT MIN(price) AS lowest_price FROM products; 

select category , count(*) as productcount  
from products group by category ; 

select count(*) as productcount, category 
from products group by category ; 

SELECT category, AVG(price) AS average_price
FROM products
GROUP BY category
HAVING AVG(price) > 10000;

select sum(price) as totalprice, category  
from products group by category ; 

