-- ============================================================
-- PROJECT: E-Commerce Database
-- Repository: Data Systems Lab
-- Purpose: Sample database used throughout the SQL course.
-- ============================================================

-- ============================================================
-- CREATE DATABASE
-- ============================================================

CREATE DATABASE ecommerce;

USE ecommerce;

-- ============================================================
-- CUSTOMERS
-- ============================================================

CREATE TABLE customers (

```
customer_id INT PRIMARY KEY,

first_name VARCHAR(50) NOT NULL,

last_name VARCHAR(50) NOT NULL,

email VARCHAR(100) UNIQUE NOT NULL,

phone VARCHAR(20),

city VARCHAR(50),

country VARCHAR(50),

created_at DATE
```

);

-- ============================================================
-- CATEGORIES
-- ============================================================

CREATE TABLE categories (

```
category_id INT PRIMARY KEY,

category_name VARCHAR(100) NOT NULL
```

);

-- ============================================================
-- PRODUCTS
-- ============================================================

CREATE TABLE products (

```
product_id INT PRIMARY KEY,

category_id INT,

product_name VARCHAR(150) NOT NULL,

price DECIMAL(10,2),

stock_quantity INT,

FOREIGN KEY (category_id)
    REFERENCES categories(category_id)
```

);

-- ============================================================
-- ORDERS
-- ============================================================

CREATE TABLE orders (

```
order_id INT PRIMARY KEY,

customer_id INT,

order_date DATE,

order_status VARCHAR(30),

FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id)
```

);

-- ============================================================
-- ORDER ITEMS
-- ============================================================

CREATE TABLE order_items (

```
order_item_id INT PRIMARY KEY,

order_id INT,

product_id INT,

quantity INT,

unit_price DECIMAL(10,2),

FOREIGN KEY (order_id)
    REFERENCES orders(order_id),

FOREIGN KEY (product_id)
    REFERENCES products(product_id)
```

);

-- ============================================================
-- PAYMENTS
-- ============================================================

CREATE TABLE payments (

```
payment_id INT PRIMARY KEY,

order_id INT,

payment_method VARCHAR(50),

payment_status VARCHAR(30),

amount DECIMAL(10,2),

FOREIGN KEY (order_id)
    REFERENCES orders(order_id)
```

);

-- ============================================================
-- END OF SCHEMA
-- ============================================================
