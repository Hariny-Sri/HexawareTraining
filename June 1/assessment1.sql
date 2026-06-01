CREATE DATABASE retail_capstone_db;
USE retail_capstone_db;

CREATE TABLE customers
(
customer_id INT PRIMARY KEY,
customer_name VARCHAR(100),
city VARCHAR(50),
state VARCHAR(50),
gender VARCHAR(10),
membership_type VARCHAR(30)
);
CREATE TABLE products
(
 product_id INT PRIMARY KEY,
product_name VARCHAR(100),
category VARCHAR(50),
price DECIMAL(10,2)
);

CREATE TABLE orders
(
order_id INT PRIMARY KEY,
customer_id INT,
order_date DATE,
order_status VARCHAR(30),
FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
CREATE TABLE order_items
(
    item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,

FOREIGN KEY (order_id) REFERENCES orders(order_id),
FOREIGN KEY (product_id) REFERENCES products(product_id)
);

CREATE TABLE payments
(payment_id INT PRIMARY KEY,
order_id INT,
payment_mode VARCHAR(30),
payment_status VARCHAR(30),
amount DECIMAL(10,2),
FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

CREATE TABLE deliveries
(
delivery_id INT PRIMARY KEY,
order_id INT,
delivery_partner VARCHAR(50),
delivery_status VARCHAR(30),
delivery_city VARCHAR(50),
FOREIGN KEY (order_id) REFERENCES orders(order_id)
);


INSERT INTO customers VALUES
(1,'Arun Kumar','Chennai','Tamil Nadu','Male','Gold'),
(2,'Priya Sharma','Chennai','Tamil Nadu','Female','Silver'),
(3,'Rahul Verma','Bangalore','Karnataka','Male','Gold'),
(4,'Sneha Reddy','Hyderabad','Telangana','Female','Platinum'),
(5,'Karthik Raj','Chennai','Tamil Nadu','Male','Silver'),
(6,'Anjali Singh','Mumbai','Maharashtra','Female','Gold'),
(7,'Vikram Patel','Ahmedabad','Gujarat','Male','Silver'),
(8,'Meera Nair','Kochi','Kerala','Female','Gold'),
(9,'Rohan Das','Kolkata','West Bengal','Male','Silver'),
(10,'Divya Iyer','Bangalore','Karnataka','Female','Platinum');

INSERT INTO products VALUES
(101,'Laptop','Electronics',55000),
(102,'Smartphone','Electronics',25000),
(103,'Headphones','Electronics',3000),
(104,'Smart Watch','Electronics',5000),
(105,'Office Chair','Furniture',7000),
(106,'Study Table','Furniture',10000),
(107,'Water Bottle','Accessories',500),
(108,'Backpack','Accessories',1500),
(109,'Keyboard','Electronics',1200),
(110,'Mouse','Electronics',800);

INSERT INTO orders VALUES
(1001,1,'2025-01-05','Delivered'),
(1002,2,'2025-01-08','Delivered'),
(1003,3,'2025-01-10','Cancelled'),
(1004,1,'2025-01-15','Delivered'),
(1005,4,'2025-01-18','Pending'),
(1006,5,'2025-01-20','Delivered'),
(1007,6,'2025-01-22','Delivered'),
(1008,7,'2025-01-25','Pending'),
(1009,8,'2025-01-27','Delivered'),
(1010,9,'2025-02-01','Cancelled'),
(1011,10,'2025-02-03','Delivered'),
(1012,2,'2025-02-05','Delivered'),
(1013,3,'2025-02-08','Pending'),
(1014,5,'2025-02-10','Delivered'),
(1015,1,'2025-02-15','Pending');

INSERT INTO order_items VALUES
(1,1001,101,1),
(2,1001,103,2),
(3,1002,102,1),
(4,1002,110,1),
(5,1003,104,1),
(6,1004,105,1),
(7,1004,107,2),
(8,1005,106,1),
(9,1005,108,1),
(10,1006,109,1),
(11,1007,101,1),
(12,1007,110,2),
(13,1008,102,1),
(14,1009,103,3),
(15,1010,105,1),
(16,1011,104,1),
(17,1012,107,5),
(18,1013,108,2),
(19,1014,109,2),
(20,1015,102,1);

INSERT INTO payments VALUES
(1,1001,'UPI','Success',61000),
(2,1002,'Credit Card','Success',25800),
(3,1003,'UPI','Failed',5000),
(4,1004,'Net Banking','Success',8000),
(5,1005,'UPI','Pending',11500),
(6,1006,'Debit Card','Success',1200),
(7,1007,'Credit Card','Success',56600),
(8,1008,'UPI','Pending',25000),
(9,1009,'Cash On Delivery','Success',9000),
(10,1010,'UPI','Failed',7000),
(11,1011,'Credit Card','Success',5000),
(12,1012,'UPI','Success',2500),
(13,1013,'Debit Card','Pending',3000),
(14,1014,'Net Banking','Success',2400),
(15,1015,'UPI','Pending',25000);

INSERT INTO deliveries VALUES
(1,1001,'Delhivery','Delivered','Chennai'),
(2,1002,'Blue Dart','Delivered','Chennai'),
(3,1003,'Delhivery','Cancelled','Bangalore'),
(4,1004,'Ecom Express','Delivered','Chennai'),
(5,1005,'Blue Dart','Pending','Hyderabad'),
(6,1006,'Delhivery','Delivered','Chennai'),
(7,1007,'XpressBees','Delivered','Mumbai'),
(8,1008,'Blue Dart','Pending','Ahmedabad'),
(9,1009,'Delhivery','Delivered','Kochi'),
(10,1010,'Ecom Express','Cancelled','Kolkata'),
(11,1011,'XpressBees','Delivered','Bangalore'),
(12,1012,'Delhivery','Delivered','Chennai'),
(13,1013,'Blue Dart','Pending','Bangalore'),
(14,1014,'Ecom Express','Delivered','Chennai'),
(15,1015,'XpressBees','Pending','Chennai');

select * from customers;
select customer_name,city,membership_type from customers;

select * from products
order by price desc ;

select * from customers where city="Hyderabad";
select * from customers where membership_type="Gold";

select * from products where price between 500 and 5000;
select * from products where category in("Electronics","Fashion");

select * from orders where order_date > '2026-01-01';
select * from payments where payment_mode ="UPI";
select * from deliveries where delivery_status="Pending";

select count(*) from customers;
select count(*) from orders;
select count(*) from products;
select sum(amount) from payments where payment_status ="Success";
select avg(amount) from payments;
select * from payments order by amount desc limit 1;
select * from payments order by amount limit 1;
select city,count(*) from customers group by city;
select category,count(*) from products group by category;
select order_status,count(*) from orders group by order_status;


select c.customer_name,o.order_id,o.order_date from customers c 
join orders o on c.customer_id = o.customer_id;

select oi.order_id, p.product_name, oi.quantity, p.price
from order_items oi
join products p on oi.product_id = p.product_id;

select c.customer_name, p.product_name, oi.quantity, o.order_date
from customers c join orders o on c.customer_id = o.customer_id
join order_items oi on o.order_id = oi.order_id 
join products p on oi.product_id = p.product_id;

select order_id, payment_mode, payment_status, amount from payments;
select order_id, delivery_partner, delivery_status from deliveries;

select c.customer_name, c.city, o.order_id, o.order_date, p.product_name, p.category, oi.quantity, p.price, pay.payment_status, d.delivery_status from customers c 
join orders o on c.customer_id = o.customer_id 
join order_items oi on o.order_id = oi.order_id 
join products p on oi.product_id = p.product_id 
join payments pay on o.order_id = pay.order_id
join deliveries d on o.order_id = d.order_id 
order by o.order_id;

select city, sum(p.price) from customers c 
join orders o on c.customer_id = o.customer_id 
join order_items oi on o.order_id = oi.order_id 
join products p on oi.product_id = p.product_id 
group by c.city;

select c.customer_id, sum(p.price) from customers c 
join orders o on c.customer_id = o.customer_id 
join order_items oi on o.order_id = oi.order_id 
join products p on oi.product_id = p.product_id 
group by c.customer_id;

select p.product_name, sum(oi.quantity) from products p
join order_items oi on p.product_id = oi.product_id
group by p.product_name;

select p.category, sum(oi.quantity * p.price) 
from products p
join order_items oi on p.product_id = oi.product_id
group by p.category;

select c.customer_name, count(o.order_id) as total_orders
from customers c
join orders o on c.customer_id = o.customer_id
group by c.customer_name;

select c.customer_name, count(o.order_id) as total_orders
from customers c
join orders o on c.customer_id = o.customer_id
group by c.customer_name
having count(o.order_id) > 1;

select p.category, sum(oi.quantity * p.price) as revenue
from products p
join order_items oi on p.product_id = oi.product_id
group by p.category
having sum(oi.quantity * p.price) > 10000;

select city, count(*) as customer_count
from customers
group by city
having count(*) > 2;

select p.product_name, sum(oi.quantity) as total_quantity
from products p
join order_items oi on p.product_id = oi.product_id
group by p.product_name
having sum(oi.quantity) > 3;

select * from customers
where customer_id in (select customer_id from orders);

select * from customers
where customer_id not in (select customer_id from orders);

select * from products
where product_id not in (select product_id from order_items);

select * from payments
where amount > (select avg(amount) from payments);

select *from customers
where customer_id = (
select o.customer_id
from orders o
join payments p on o.order_id = p.order_id
where p.amount = (select max(amount) from payments)
);

select *
from products
where price > (select avg(price) from products);

select distinct c.*
from customers c
join orders o on c.customer_id = o.customer_id
join order_items oi on o.order_id = oi.order_id
join products p on oi.product_id = p.product_id
where p.category = 'Electronics';

select *
from orders
where order_id in (
select order_id
from payments
where payment_status = 'Success'
);

select *
from orders
where order_id in (
select order_id
from deliveries
where delivery_status <> 'Delivered'
);

select c.customer_id,c.customer_name,sum(p.amount) as total_spending
from customers c
join orders o on c.customer_id = o.customer_id
join payments p on o.order_id = p.order_id
group by c.customer_id, c.customer_name
having sum(p.amount) >
( select avg(total_amount)
from (select sum(p.amount) as total_amount
from customers c
join orders o on c.customer_id = o.customer_id
join payments p on o.order_id = p.order_id
group by c.customer_id
) avg_spending
);

select o.* from orders o
left join payments p on o.order_id = p.order_id
where p.order_id is null;

select o.* from orders o
left join deliveries d on o.order_id = d.order_id
where d.order_id is null;

select * from payments
where amount is null
or amount = 0;

select o.order_id, o.order_status, p.payment_status
from orders o
join payments p on o.order_id = p.order_id
where o.order_status = 'Cancelled'
and p.payment_status = 'Success';

select o.order_id, o.order_status, p.payment_status
from orders o
join payments p on o.order_id = p.order_id
where o.order_status = 'Delivered'
and p.payment_status = 'Failed';

select * from order_items
where product_id not in(
select product_id
from products
);

select * from orders
where customer_id not in(
select customer_id
from customers
);
