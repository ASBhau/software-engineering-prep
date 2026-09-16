create database banker;
use banker;

CREATE TABLE customers (
    customer_id INT,
    name VARCHAR(100),
    age INT,
    city VARCHAR(50),
    balance DECIMAL(12,2)
);
TRUNCATE TABLE customers;
INSERT INTO customers VALUES
(1, 'Rahul', 22, 'Delhi', 50000),
(2, 'Aman', 35, 'Mumbai', 120000),
(3, 'Priya', 28, 'Delhi', 75000),
(4, 'Neha', 41, 'Pune', 200000),
(5, 'Arjun', 19, 'Mumbai', 30000);

select * from customers;
SELECT name, age FROM customers WHERE age>25;
SELECT name, balance FROM customers WHERE balance>50000;
SELECT name, city FROM customers WHERE city="Mumbai";
SELECT name, city, balance FROM customers WHERE city="Delhi" and balance>50000;
select city, count(*) from customers group by city;
select city, avg(balance) from customers group by city;
select city, avg(balance) from customers where balance>70000 group by city;
select name, balance from customers order by balance desc limit 3 offset 2;
