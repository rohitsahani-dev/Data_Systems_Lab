-- ============================================================
-- Lesson 06: ORDER BY
-- Module: SQL Basics
-- Repository: Data Systems Lab
-- Database: E-Commerce
-- ============================================================

# /*

# INTRODUCTION

The ORDER BY clause sorts query results.

Without ORDER BY, SQL does not guarantee the order of rows.

Sorting data is essential for reports, dashboards, search
results, and e-commerce websites.

Examples:

• Cheapest products first
• Most expensive products first
• Latest orders
• Customers sorted alphabetically

*/

-- ============================================================
-- BASIC SYNTAX
-- ============================================================

SELECT column_name
FROM table_name
ORDER BY column_name;

---

## -- ASCENDING ORDER (Default)

SELECT
product_name,
price
FROM products
ORDER BY price ASC;

---

## -- DESCENDING ORDER

SELECT
product_name,
price
FROM products
ORDER BY price DESC;

---

## -- SORT CUSTOMERS BY FIRST NAME

SELECT
first_name,
last_name
FROM customers
ORDER BY first_name ASC;

---

## -- SORT ORDERS BY DATE

SELECT
order_id,
order_date
FROM orders
ORDER BY order_date DESC;

---

## -- SORT PRODUCTS BY STOCK

SELECT
product_name,
stock_quantity
FROM products
ORDER BY stock_quantity DESC;

---

## -- SORT BY MULTIPLE COLUMNS

SELECT
first_name,
last_name,
city
FROM customers
ORDER BY
city ASC,
first_name ASC;

---

## -- ORDER BY COLUMN POSITION

SELECT
product_name,
price
FROM products
ORDER BY 2 DESC;

-- 2 refers to the second selected column (price).

---

## -- ORDER BY EXPRESSION

SELECT
product_name,
price,
price * 1.13 AS price_with_tax
FROM products
ORDER BY price_with_tax DESC;

---

## -- COMBINING WHERE + ORDER BY

SELECT
product_name,
price
FROM products
WHERE price > 100
ORDER BY price DESC;

---

## -- REAL-WORLD EXAMPLES

-- Most expensive products

SELECT *
FROM products
ORDER BY price DESC;

---

-- Cheapest products

SELECT *
FROM products
ORDER BY price ASC;

---

-- Latest orders

SELECT *
FROM orders
ORDER BY order_date DESC;

---

-- Alphabetical customer list

SELECT *
FROM customers
ORDER BY first_name ASC;

---

## -- COMMON MISTAKES

-- ❌ Misspelled column name

SELECT *
FROM customers
ORDER BY firstname;

---

-- ✔ Correct

SELECT *
FROM customers
ORDER BY first_name;

---

-- ❌ Assuming rows are always stored in order

SELECT *
FROM products;

-- Never rely on the default order.

---

## -- BEST PRACTICES

/*

✔ Always use ORDER BY when row order matters.

✔ Be explicit with ASC or DESC.

✔ Sort only when necessary, as sorting large datasets
can impact performance.

✔ Use indexes on frequently sorted columns when appropriate.

*/

---

## -- INTERVIEW QUESTIONS

/*

1. What does ORDER BY do?

2. What is the default sort order?

3. Can ORDER BY sort multiple columns?

4. Why should you not rely on the default row order?

*/

---

## -- PRACTICE

/*

1. Display products from cheapest to most expensive.

2. Display products from most expensive to cheapest.

3. Sort customers by last name.

4. Show the newest orders first.

5. Sort products by stock quantity.

*/

---

## -- CHALLENGE

/*

Write queries to:

1. Display customers sorted by country, then city.

2. Show products costing more than $50,
   sorted from highest to lowest price.

3. Show completed payments,
   sorted by amount (highest first).

*/

---

## -- SUMMARY

/*

Today you learned

✔ ORDER BY

✔ ASC

✔ DESC

✔ Sorting Multiple Columns

✔ Sorting Expressions

✔ Combining WHERE + ORDER BY

Next Lesson:

LIMIT

*/
