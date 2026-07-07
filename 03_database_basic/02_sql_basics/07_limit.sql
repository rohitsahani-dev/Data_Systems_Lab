-- ============================================================
-- Lesson 07: LIMIT
-- Module: SQL Basics
-- Repository: Data Systems Lab
-- Database: E-Commerce
-- ============================================================

# /*

# INTRODUCTION

The LIMIT clause restricts the number of rows returned by a query.

Instead of retrieving every record, LIMIT allows you to
return only the first few rows.

This improves performance and is commonly used for:

• Pagination
• Dashboards
• Reports
• Top-selling products
• Latest orders
• Search results

*/

-- ============================================================
-- BASIC SYNTAX
-- ============================================================

SELECT column_name
FROM table_name
LIMIT number_of_rows;

---

-- EXAMPLE 1
-- Return the first 5 customers
-------------------------------

SELECT *
FROM customers
LIMIT 5;

---

-- EXAMPLE 2
-- Return the first 3 products
------------------------------

SELECT
product_name,
price
FROM products
LIMIT 3;

---

-- EXAMPLE 3
-- Most Expensive Products
--------------------------

SELECT
product_name,
price
FROM products
ORDER BY price DESC
LIMIT 5;

---

-- EXAMPLE 4
-- Cheapest Products
--------------------

SELECT
product_name,
price
FROM products
ORDER BY price ASC
LIMIT 5;

---

-- EXAMPLE 5
-- Latest Orders
----------------

SELECT
order_id,
order_date
FROM orders
ORDER BY order_date DESC
LIMIT 10;

---

## -- LIMIT WITH OFFSET

SELECT *
FROM customers
LIMIT 5 OFFSET 5;

-- Skip the first 5 rows
-- Return the next 5 rows

---

## -- Pagination Example

-- Page 1

SELECT *
FROM products
LIMIT 10 OFFSET 0;

---

-- Page 2

SELECT *
FROM products
LIMIT 10 OFFSET 10;

---

-- Page 3

SELECT *
FROM products
LIMIT 10 OFFSET 20;

---

## -- DATABASE DIFFERENCES

-- ✅ MySQL

SELECT *
FROM products
LIMIT 5;

---

-- ✅ PostgreSQL

SELECT *
FROM products
LIMIT 5;

---

-- ✅ SQLite

SELECT *
FROM products
LIMIT 5;

---

-- ✅ SQL Server (Modern Versions)

SELECT TOP (5) *
FROM products;

-- SQL Server 2012+ also supports:
-- OFFSET ... FETCH

---

## -- REAL-WORLD EXAMPLES

-- Show the 10 newest customers

SELECT *
FROM customers
ORDER BY created_at DESC
LIMIT 10;

---

-- Top 5 highest-priced products

SELECT
product_name,
price
FROM products
ORDER BY price DESC
LIMIT 5;

---

-- First 20 pending orders

SELECT *
FROM orders
WHERE order_status = 'Pending'
LIMIT 20;

---

## -- COMMON MISTAKES

-- ❌ Using LIMIT without ORDER BY
-- Results may be unpredictable.

SELECT *
FROM products
LIMIT 5;

---

-- ✔ Better

SELECT *
FROM products
ORDER BY product_id
LIMIT 5;

---

## -- PERFORMANCE TIP

/*

✔ LIMIT reduces the amount of data transferred.

✔ Combine LIMIT with ORDER BY for predictable results.

✔ Avoid very large OFFSET values on huge tables,
as they can become slow.

✔ For large datasets, keyset pagination is often
more efficient than OFFSET.

*/

---

## -- INTERVIEW QUESTIONS

/*

1. What is LIMIT used for?

2. Why is ORDER BY often used with LIMIT?

3. What is OFFSET?

4. Why can OFFSET become slow on very large tables?

5. What does SQL Server use instead of LIMIT?

*/

---

## -- PRACTICE

/*

1. Display the first 5 customers.

2. Display the first 3 products.

3. Show the 10 newest orders.

4. Show the 5 cheapest products.

5. Show the 5 most expensive products.

*/

---

## -- CHALLENGE

/*

Write SQL queries to:

1. Display the latest 3 completed orders.

2. Show the 10 most expensive products.

3. Display customers from Nepal,
   ordered by first name,
   showing only the first 5 results.

4. Show page 4 of products
   assuming each page contains 10 products.

*/

---

## -- SUMMARY

/*

Today you learned

✔ LIMIT

✔ OFFSET

✔ Pagination

✔ ORDER BY + LIMIT

✔ SQL Server TOP

✔ Performance Tips

Next Lesson:

DISTINCT

*/
