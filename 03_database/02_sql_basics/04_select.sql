-- ============================================================
-- Lesson 04: SELECT Statement
-- Module: SQL Basics
-- Repository: Data Systems Lab
-- Database: E-Commerce
-- ============================================================

# /*

# INTRODUCTION

The SELECT statement is the most commonly used SQL command.

It retrieves data from one or more tables.

Whenever you search for products, customers, orders, or reports,
the database executes a SELECT query.

SELECT does not modify data.
It only retrieves information.
*/

-- ============================================================
-- BASIC SYNTAX
-- ============================================================

SELECT column_name
FROM table_name;

---

SELECT *
FROM customers;

---

## -- SELECT SPECIFIC COLUMNS

SELECT
first_name,
last_name,
email
FROM customers;

---

## -- SELECT PRODUCTS

SELECT
product_name,
price
FROM products;

---

## -- SELECT ORDERS

SELECT
order_id,
order_date,
order_status
FROM orders;

---

## -- SELECT PAYMENTS

SELECT
payment_method,
amount
FROM payments;

---

## -- SELECT WITH EXPRESSIONS

SELECT
product_name,
price,
price * 1.13 AS price_with_tax
FROM products;

---

## -- SELECT LITERAL VALUES

SELECT
'Welcome to SQL' AS message;

---

## -- SELECT CURRENT DATE

-- MySQL

SELECT CURRENT_DATE();

---

## -- SELECT ALL PRODUCTS

SELECT *
FROM products;

---

## -- SELECT ALL ORDERS

SELECT *
FROM orders;

---

## -- COMMON MISTAKES

-- ❌ Missing FROM

SELECT first_name;

---

-- ❌ Wrong table name

SELECT *
FROM customer;

---

-- ✔ Correct

SELECT *
FROM customers;

---

-- ❌ Wrong column name

SELECT fullname
FROM customers;

---

-- ✔ Correct

SELECT first_name
FROM customers;

---

## -- BEST PRACTICES

/*

✔ Never use SELECT * in production code unless necessary.

✔ Retrieve only the columns you need.

✔ Format queries for readability.

✔ Use meaningful aliases.

✔ Keep queries simple.

*/

---

## -- INTERVIEW QUESTIONS

/*

1. What is SELECT?

2. Difference between

SELECT *

and

SELECT column_name ?

3. Why should SELECT * be avoided?

*/

---

## -- PRACTICE

/*

1. Display every customer.

2. Display all products.

3. Show only customer names.

4. Show only product prices.

5. Display payment methods.

*/

---

## -- CHALLENGE

/*

Retrieve

Customer Name

Email

City

from the customers table.

*/

---

## -- SUMMARY

/*

Today you learned

✔ SELECT

✔ Selecting specific columns

✔ Selecting all columns

✔ Expressions

✔ Aliases

✔ Best Practices

Next Lesson

WHERE Clause

*/
