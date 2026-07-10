-- ============================================================
-- Seed Data
-- Repository: Data Systems Lab
-- Database: SQLite
-- ============================================================

PRAGMA foreign_keys = ON;

-- ============================================================
-- Categories
-- ============================================================

INSERT INTO categories (category_name) VALUES
('Electronics'),
('Books'),
('Clothing'),
('Home & Kitchen'),
('Sports'),
('Beauty'),
('Toys'),
('Groceries');

-- ============================================================
-- Customers
-- ============================================================

INSERT INTO customers
(first_name, last_name, email, phone, city, country)
VALUES
('Rohit','Sahani','rohit@example.com','9800000001','Biratnagar','Nepal'),
('Alice','Johnson','alice@example.com','9800000002','Kathmandu','Nepal'),
('Bob','Smith','bob@example.com','9800000003','Pokhara','Nepal'),
('John','Doe','john@example.com','9800000004','Delhi','India'),
('Emma','Wilson','emma@example.com','9800000005','Mumbai','India'),
('David','Brown','david@example.com','9800000006','London','United Kingdom'),
('Sophia','Taylor','sophia@example.com','9800000007','New York','United States'),
('Liam','Miller','liam@example.com','9800000008','Sydney','Australia'),
('Olivia','Moore','olivia@example.com','9800000009','Toronto','Canada'),
('Noah','Anderson','noah@example.com','9800000010','Berlin','Germany');

-- ============================================================
-- Products
-- ============================================================

INSERT INTO products
(category_id, product_name, price, stock_quantity)
VALUES
(1,'Laptop',1200,15),
(1,'Wireless Mouse',25,100),
(1,'Mechanical Keyboard',80,45),
(1,'Monitor',250,30),
(2,'SQL for Beginners',35,60),
(2,'Python Crash Course',40,50),
(3,'Black T-Shirt',20,120),
(3,'Blue Jeans',45,70),
(4,'Coffee Maker',90,25),
(4,'Office Chair',180,12),
(5,'Football',30,40),
(5,'Badminton Racket',75,18),
(6,'Face Wash',15,85),
(6,'Body Lotion',18,65),
(7,'Lego Classic',55,20),
(8,'Rice 10kg',22,35);


SELECT * FROM categories;

SELECT * FROM customers;

SELECT * FROM products;

SELECT COUNT(*) FROM customers;

SELECT COUNT(*) FROM products;

SELECT COUNT(*) FROM categories;
