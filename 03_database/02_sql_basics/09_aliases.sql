-- ============================================================
-- Lesson 09: Aliases (AS)
-- Module: SQL Basics
-- Repository: Data Systems Lab
-- Database: E-Commerce
-- ============================================================

# /*

# INTRODUCTION

An alias is a temporary name given to a column or table.

Aliases make SQL queries easier to read and write.

They are especially useful when:

• Displaying user-friendly column names
• Writing complex queries
• Using JOINs
• Working with aggregate functions
• Improving report readability

Aliases exist only during query execution.
They do NOT rename the actual table or column.

*/

-- ============================================================
-- HOW SQL PROCESSES THIS QUERY
-- ============================================================

/*

Logical execution order:

1. FROM
2. WHERE
3. SELECT
4. AS (Alias is applied to the output)
5. ORDER BY
6. LIMIT

*/

-- ============================================================
-- BASIC SYNTAX
-- ============================================================

SELECT column_name AS alias_name
FROM table_name;

---

## -- COLUMN ALIAS

SELECT
first_name AS FirstName,
last_name AS LastName
FROM customers;

---

## -- ALIAS WITHOUT AS

SELECT
first_name CustomerName
FROM customers;

-- Although SQL allows omitting AS,
-- using AS improves readability.

---

## -- ALIAS WITH EXPRESSIONS

SELECT
product_name,
price,
price * 1.13 AS PriceWithTax
FROM products;

---

## -- USER-FRIENDLY REPORT

SELECT
first_name AS "First Name",
last_name AS "Last Name",
email AS Email
FROM customers;

---

## -- TABLE ALIASES

SELECT
c.first_name,
c.last_name
FROM customers AS c;

---

## -- ANOTHER TABLE ALIAS

SELECT
p.product_name,
p.price
FROM products AS p;

---

## -- MULTIPLE TABLE ALIASES

SELECT
o.order_id,
c.first_name,
c.last_name
FROM orders AS o
JOIN customers AS c
ON o.customer_id = c.customer_id;

---

## -- DATABASE DIFFERENCES

-- MySQL
SELECT first_name AS Customer
FROM customers;

---

-- PostgreSQL
SELECT first_name AS Customer
FROM customers;

---

-- SQLite
SELECT first_name AS Customer
FROM customers;

---

-- SQL Server
SELECT first_name AS Customer
FROM customers;

---

## -- REAL-WORLD EXAMPLES

-- Sales Report

SELECT
product_name AS Product,
price AS Price
FROM products;

---

-- Customer Report

SELECT
first_name AS First_Name,
last_name AS Last_Name,
city AS City
FROM customers;

---

## -- COMMON MISTAKES

-- ❌ Assuming an alias changes the database.

SELECT
first_name AS CustomerName
FROM customers;

-- The actual column name remains first_name.

---

-- ❌ Using unclear aliases.

SELECT
first_name AS x
FROM customers;

---

-- ✔ Better

SELECT
first_name AS CustomerName
FROM customers;

---

## -- BEST PRACTICES

/*

✔ Use meaningful aliases.

✔ Use table aliases in JOINs.

✔ Keep alias names consistent.

✔ Prefer AS for better readability.

✔ Use descriptive report headings.

*/

---

## -- PERFORMANCE TIP

/*

Aliases improve readability.

They do NOT improve query performance.

*/

---

## -- INTERVIEW QUESTIONS

/*

1. What is an alias?

2. Does an alias permanently rename a column?

3. Can tables have aliases?

4. Why are aliases useful in JOINs?

5. Is AS mandatory?

*/

---

## -- PRACTICE

/*

1. Rename first_name as CustomerName.

2. Rename price as ProductPrice.

3. Rename city as CustomerCity.

4. Create aliases for every column
   in the customers table.

5. Use table aliases for products.

*/

---

## -- CHALLENGE

/*

Create a customer report showing:

Customer ID

Full Name

Email Address

City

using meaningful aliases.

*/

---

## -- SUMMARY

/*

Today you learned

✔ Column Aliases

✔ Table Aliases

✔ AS Keyword

✔ Report Formatting

✔ Best Practices

✔ Table Aliases for JOINs

Next Lesson:

SQL Comments

*/
