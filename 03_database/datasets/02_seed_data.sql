-- ============================================================
-- Data Systems Lab
-- Seed Data
-- Database: SQLite
-- ============================================================

PRAGMA foreign_keys = ON;

-- ============================================================
-- Categories
-- ============================================================

INSERT INTO categories (category_name, description) VALUES
('Electronics','Electronic devices'),
('Books','Books and learning materials'),
('Clothing','Fashion products'),
('Home & Kitchen','Home appliances'),
('Sports','Sports equipment'),
('Beauty','Beauty products'),
('Toys','Kids toys'),
('Groceries','Daily essentials');

-- ============================================================
-- Suppliers
-- ============================================================

INSERT INTO suppliers
(supplier_name,contact_name,email,phone,city,country)
VALUES
('Tech World','John Smith','tech@example.com','9800000001','Kathmandu','Nepal'),
('Book House','Emma Wilson','books@example.com','9800000002','Pokhara','Nepal'),
('Fashion Hub','Sophia Taylor','fashion@example.com','9800000003','Delhi','India'),
('Home Store','David Brown','home@example.com','9800000004','Mumbai','India'),
('Sports Nepal','Noah Miller','sports@example.com','9800000005','Biratnagar','Nepal');

-- ============================================================
-- Customers
-- ============================================================

INSERT INTO customers
(first_name,last_name,email,phone,gender,date_of_birth,city,country)
VALUES
('Rohit','Sahani','rohit@example.com','9800000010','Male','2005-01-10','Biratnagar','Nepal'),
('Alice','Johnson','alice@example.com','9800000011','Female','1999-05-20','Kathmandu','Nepal'),
('Bob','Smith','bob@example.com','9800000012','Male','1997-09-18','Pokhara','Nepal'),
('Emma','Wilson','emma2@example.com','9800000013','Female','1998-04-12','Delhi','India'),
('David','Brown','david2@example.com','9800000014','Male','1996-08-15','Mumbai','India'),
('Sophia','Taylor','sophia@example.com','9800000015','Female','2000-02-14','London','United Kingdom'),
('Liam','Miller','liam@example.com','9800000016','Male','1995-03-09','Sydney','Australia'),
('Olivia','Moore','olivia@example.com','9800000017','Female','1994-12-25','Toronto','Canada'),
('Noah','Anderson','noah@example.com','9800000018','Male','1998-11-11','Berlin','Germany'),
('James','Clark','james@example.com','9800000019','Male','1993-07-07','New York','United States');

-- ============================================================
-- Products
-- ============================================================

INSERT INTO products
(category_id,supplier_id,product_name,description,brand,price,stock_quantity)
VALUES
(1,1,'Laptop','Gaming Laptop','ASUS',1200,15),
(1,1,'Wireless Mouse','Bluetooth Mouse','Logitech',25,100),
(1,1,'Mechanical Keyboard','RGB Keyboard','Redragon',80,40),
(1,1,'Monitor','24 Inch Monitor','Samsung',250,25),
(2,2,'SQL for Beginners','Learn SQL','OReilly',35,50),
(2,2,'Python Crash Course','Python Guide','NoStarch',40,45),
(3,3,'Black T-Shirt','Cotton Shirt','Nike',20,120),
(3,3,'Blue Jeans','Slim Fit','Levis',45,60),
(4,4,'Coffee Maker','Kitchen Appliance','Philips',90,15),
(4,4,'Office Chair','Ergonomic Chair','IKEA',180,12),
(5,5,'Football','Size 5','Adidas',30,40),
(5,5,'Badminton Racket','Professional','Yonex',75,18),
(6,3,'Face Wash','Vitamin C','Garnier',15,90),
(6,3,'Body Lotion','Moisturizer','Nivea',18,80),
(7,2,'Lego Classic','Creative Set','LEGO',55,20),
(8,4,'Rice 10kg','Premium Rice','Local Farm',22,35);

-- ============================================================
-- Inventory
-- ============================================================

INSERT INTO inventory
(product_id,quantity_available,reorder_level)
VALUES
(1,15,5),
(2,100,20),
(3,40,10),
(4,25,10),
(5,50,10),
(6,45,10),
(7,120,25),
(8,60,15),
(9,15,5),
(10,12,5),
(11,40,10),
(12,18,5),
(13,90,15),
(14,80,15),
(15,20,5),
(16,35,10);

SELECT * FROM categories;

SELECT * FROM customers;

SELECT * FROM products;

SELECT COUNT(*) FROM categories;

SELECT COUNT(*) FROM suppliers;

SELECT COUNT(*) FROM customers;

SELECT COUNT(*) FROM products;

SELECT COUNT(*) FROM inventory;
