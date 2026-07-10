-- ============================================================
-- Lesson 08: DISTINCT
-- Module: SQL Basics
-- Repository: Data Systems Lab
-- Database: E-Commerce
-- ============================================================

# /*

# INTRODUCTION

The DISTINCT keyword removes duplicate rows from a query result.

By default, SQL returns every matching row, including duplicates.

DISTINCT helps return only unique values.

Common real-world uses:

• List all available product categories
• Show all cities where customers live
• Find unique payment methods
• Generate reports without duplicate values

*/

-- ============================================================
-- HOW SQL PROCESSES THIS QUERY
-- ============================================================

/*

Logical execution order:

1. FROM
2. WHERE
3. SELECT
4. DISTINCT
5. ORDER BY
6. LIMIT

Remember:
DISTINCT removes duplicates AFTER the rows are selected.

*/

-- ============================================================
-- BASIC SYNTAX
-- ============================================================

SELECT DISTINCT column_name
FROM table_name;

---

-- EXAMPLE 1
-- Unique Cities
----------------

SELECT DISTINCT city
FROM customers;

---

-- EXAMPLE 2
-- Unique Countries
-------------------

SELECT DISTINCT country
FROM customers;

---

-- EXAMPLE 3
-- Unique Payment Methods
-------------------------

SELECT DISTINCT payment_method
FROM payments;

---

-- EXAMPLE 4
-- Unique Order Statuses
------------------------

SELECT DISTINCT order_status
FROM orders;

---

## -- DISTINCT WITH MULTIPLE COLUMNS

SELECT DISTINCT
city,
country
FROM customers;

-- DISTINCT considers the combination of both columns.

---

## -- DISTINCT + WHERE

SELECT DISTINCT city
FROM customers
WHERE country = 'Nepal';

---

## -- DISTINCT + ORDER BY

SELECT DISTINCT city
FROM customers
ORDER BY city ASC;

---

## -- DISTINCT + LIMIT

SELECT DISTINCT payment_method
FROM payments
LIMIT 3;

---

## -- DATABASE DIFFERENCES

-- MySQL
SELECT DISTINCT city
FROM customers;

---

-- PostgreSQL
SELECT DISTINCT city
FROM customers;

-- PostgreSQL also supports:
-- DISTINCT ON (column)

---

-- SQLite
SELECT DISTINCT city
FROM customers;

---

-- SQL Server
SELECT DISTINCT city
FROM customers;

---

## -- REAL-WORLD EXAMPLES

-- Countries where customers live

SELECT DISTINCT country
FROM customers;

---

-- Product categories that exist

SELECT DISTINCT category_id
FROM products;

---

-- Payment methods accepted

SELECT DISTINCT payment_method
FROM payments;

---

## -- COMMON MISTAKES

-- ❌ Expecting DISTINCT to remove duplicate rows
-- based on only one selected column.

SELECT DISTINCT
city,
first_name
FROM customers;

-- DISTINCT checks BOTH columns together.

---

-- ❌ Using DISTINCT to hide bad database design.

-- If duplicates exist because of poor table design,
-- fix the schema instead of relying on DISTINCT.

---

## -- PERFORMANCE TIP

/*

✔ DISTINCT requires SQL to compare rows.

✔ On very large tables it can be expensive.

✔ Use DISTINCT only when duplicates are possible
and unique results are actually required.

✔ Proper normalization often reduces the need
for DISTINCT.

*/

---

## -- INTERVIEW QUESTIONS

/*

1. What does DISTINCT do?

2. Does DISTINCT sort the data?

3. Can DISTINCT be used with multiple columns?

4. When should DISTINCT be avoided?

5. Difference between DISTINCT and GROUP BY?

*/

---

## -- PRACTICE

/*

1. Display all unique cities.

2. Display all unique countries.

3. Display all payment methods.

4. Display unique order statuses.

5. Display unique combinations of city and country.

*/

---

## -- CHALLENGE

/*

Write SQL queries to:

1. Find all cities where customers live.

2. Find all payment methods used.

3. Find all countries represented by customers,
   ordered alphabetically.

4. Display the first 3 unique cities.

*/

---

## -- SUMMARY

/*

Today you learned

✔ DISTINCT

✔ Removing duplicate values

✔ DISTINCT with multiple columns

✔ DISTINCT with WHERE

✔ DISTINCT with ORDER BY

✔ Performance considerations

Next Lesson:

Aliases (AS)

*/
