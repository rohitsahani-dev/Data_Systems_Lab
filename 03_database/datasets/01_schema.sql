-- ============================================================
-- Data Systems Lab
-- E-Commerce Database Schema
-- Database: SQLite
-- ============================================================

PRAGMA foreign_keys = ON;

-- ============================================================
-- Categories
-- ============================================================

CREATE TABLE categories (
    category_id INTEGER PRIMARY KEY AUTOINCREMENT,
    category_name TEXT NOT NULL UNIQUE,
    description TEXT
);

-- ============================================================
-- Customers
-- ============================================================

CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    phone TEXT UNIQUE,
    gender TEXT CHECK(gender IN ('Male','Female','Other')),
    date_of_birth DATE,
    city TEXT,
    country TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- ============================================================
-- Suppliers
-- ============================================================

CREATE TABLE suppliers (
    supplier_id INTEGER PRIMARY KEY AUTOINCREMENT,
    supplier_name TEXT NOT NULL,
    contact_name TEXT,
    email TEXT,
    phone TEXT,
    city TEXT,
    country TEXT
);

-- ============================================================
-- Products
-- ============================================================

CREATE TABLE products (
    product_id INTEGER PRIMARY KEY AUTOINCREMENT,
    category_id INTEGER NOT NULL,
    supplier_id INTEGER,
    product_name TEXT NOT NULL,
    description TEXT,
    brand TEXT,
    price REAL NOT NULL CHECK(price >= 0),
    stock_quantity INTEGER DEFAULT 0,
    is_active INTEGER DEFAULT 1,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES categories(category_id),
    FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id)
);

-- ============================================================
-- Inventory
-- ============================================================

CREATE TABLE inventory (
    inventory_id INTEGER PRIMARY KEY AUTOINCREMENT,
    product_id INTEGER NOT NULL UNIQUE,
    quantity_available INTEGER DEFAULT 0,
    reorder_level INTEGER DEFAULT 10,
    last_updated DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- ============================================================
-- Orders
-- ============================================================

CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER NOT NULL,
    order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    order_status TEXT NOT NULL,
    shipping_address TEXT,
    total_amount REAL DEFAULT 0,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- ============================================================
-- Order Items
-- ============================================================

CREATE TABLE order_items (
    order_item_id INTEGER PRIMARY KEY AUTOINCREMENT,
    order_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    unit_price REAL NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- ============================================================
-- Payments
-- ============================================================

CREATE TABLE payments (
    payment_id INTEGER PRIMARY KEY AUTOINCREMENT,
    order_id INTEGER NOT NULL,
    payment_method TEXT,
    payment_status TEXT,
    transaction_id TEXT UNIQUE,
    payment_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    amount REAL NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

-- ============================================================
-- Shipping
-- ============================================================

CREATE TABLE shipping (
    shipping_id INTEGER PRIMARY KEY AUTOINCREMENT,
    order_id INTEGER NOT NULL UNIQUE,
    courier_name TEXT,
    tracking_number TEXT UNIQUE,
    shipping_status TEXT,
    shipped_date DATETIME,
    delivered_date DATETIME,
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

-- ============================================================
-- Reviews
-- ============================================================

CREATE TABLE reviews (
    review_id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    rating INTEGER CHECK(rating BETWEEN 1 AND 5),
    review TEXT,
    review_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);