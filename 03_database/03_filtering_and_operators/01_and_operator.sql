-- ============================================================
-- Lesson 01: AND Operator
-- Module: Filtering & Operators
-- Repository: Data Systems Lab
-- Database: E-Commerce
-- ============================================================

# /*

# INTRODUCTI**ON**

The AND operator combines two or more conditions.

A row is returned only if EVERY condition is TRUE.

Think of AND as requiring all rules to be satisfied.

Example:

Find products that

• cost more than $100
AND
• have at least 10 items in stock

Only products meeting both conditions will be returned.

*/

-- ============================================================
-- BASIC SYNTAX
-- ============================================================

SELECT column_name
FROM table_name
WHERE condition1
AND condition2;

---

SELECT
product_name,
price,
stock_quantity
FROM products
WHERE price > 100
AND stock_quantity > 10;

---

SELECT
first_name,
last_name,
city,
country
FROM customers
WHERE country = 'Nepal'
AND city = 'Kathmandu';

---

SELECT
payment_id,
amount,
payment_status
FROM payments
WHERE payment_status = 'Completed'
AND amount > 100;

---

SELECT
order_id,
order_date,
order_status
FROM orders
WHERE order_status = 'Delivered'
AND order_date >= '2026-07-01';

---

## -- LOGICAL EXECUTION ORDER

/*

1. FROM
2. WHERE

   * Evaluate first condition
   * Evaluate second condition
   * Apply AND
3. SELECT
4. ORDER BY
5. LIMIT

*/

---

## -- TRUTH TABLE

/*

| Condition A | Condition B | Result |
| ----------- | ----------- | ------ |
| TRUE        | TRUE        | TRUE   |
| TRUE        | FALSE       | FALSE  |
| FALSE       | TRUE        | FALSE  |
| FALSE       | FALSE       | FALSE  |

*/

---

## -- DATABASE DIFFERENCES

-- MySQL
-- PostgreSQL
-- SQLite
-- SQL Server

-- All major relational databases use
-- the same AND operator syntax.

---

## -- REAL-WORLD EXAMPLES

-- Premium products in stock

SELECT
product_name,
price
FROM products
WHERE price >= 500
AND stock_quantity > 0;

---

-- Pending cash payments

SELECT *
FROM payments
WHERE payment_status = 'Pending'
AND payment_method = 'Cash';

---

-- Customers from Nepal created after July 1, 2026

SELECT *
FROM customers
WHERE country = 'Nepal'
AND created_at >= '2026-07-01';

---

## -- COMMON MISTAKES

-- ❌ Expecting one true condition to be enough.

-- AND requires ALL conditions to be true.

---

-- ❌ Forgetting that text values need quotes.

WHERE country = Nepal

---

-- ✔ Correct

WHERE country = 'Nepal'

---

## -- PERFORMANCE TIP

/*

✔ Filtering on indexed columns can improve performance.

✔ Keep conditions as simple as possible.

✔ Avoid unnecessary calculations inside WHERE
when filtering large tables.

*/

---

## -- INTERVIEW QUESTIONS

/*

1. What does the AND operator do?

2. When does an AND condition evaluate to TRUE?

3. Can AND combine more than two conditions?

4. How does AND differ from OR?

*/

---

## -- PRACTICE

/*

1. Find products costing more than $200 with stock above 20.

2. Find customers from Nepal living in Pokhara.

3. Find delivered orders after '2026-07-05'.

4. Find completed payments greater than $500.

*/

---

## -- CHALLENGE

/*

Write queries to:

1. Find products priced between $100 and $500
   with at least 10 items in stock.

2. Find customers from Kathmandu created after
   '2026-07-01'.

3. Find completed credit card payments
   above $200.

*/

---

## -- SUMMARY

/*

Today you learned

✔ AND Operator

✔ Combining Conditions

✔ Logical Evaluation

✔ Business Examples

✔ Best Practices

Next Lesson:

OR Operator

*/
