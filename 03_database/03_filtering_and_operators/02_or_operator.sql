-- ============================================================
-- Lesson 02: OR Operator
-- Module: Filtering & Operators
-- Repository: Data Systems Lab
-- Database: E-Commerce
-- ============================================================

# /*

# INTRODUCTION

The OR operator combines two or more conditions.

A row is returned if AT LEAST ONE condition is TRUE.

Think of OR as giving SQL multiple ways to match a row.

Example:

Find customers who live in

• Kathmandu
OR
• Pokhara

Customers from either city will be returned.

*/

-- ============================================================
-- BASIC SYNTAX
-- ============================================================

SELECT column_name
FROM table_name
WHERE condition1
OR condition2;

---

SELECT
first_name,
last_name,
city
FROM customers
WHERE city = 'Kathmandu'
OR city = 'Pokhara';

---

SELECT
product_name,
price
FROM products
WHERE price < 50
OR stock_quantity < 10;

---

SELECT
payment_id,
payment_method,
payment_status
FROM payments
WHERE payment_method = 'Cash'
OR payment_status = 'Pending';

---

SELECT
order_id,
order_date,
order_status
FROM orders
WHERE order_status = 'Pending'
OR order_status = 'Delivered';

---

-- ============================================================
-- LOGICAL EXECUTION ORDER
-- ============================================================

/*

1. FROM

2. WHERE

   Evaluate first condition

   Evaluate second condition

   Apply OR

3. SELECT

4. ORDER BY

5. LIMIT

*/

---

-- ============================================================
-- TRUTH TABLE
-- ============================================================

/*

| Condition A | Condition B | Result |
| ----------- | ----------- | ------ |
| TRUE        | TRUE        | TRUE   |
| TRUE        | FALSE       | TRUE   |
| FALSE       | TRUE        | TRUE   |
| FALSE       | FALSE       | FALSE  |

*/

---

-- ============================================================
-- DATABASE DIFFERENCES
-- ============================================================

/*

MySQL ✔

PostgreSQL ✔

SQLite ✔

SQL Server ✔

The OR operator follows the SQL standard and behaves
the same across all major relational database systems.

*/

---

-- ============================================================
-- REAL-WORLD EXAMPLES
-- ============================================================

-- Customers from Kathmandu or Pokhara

SELECT *
FROM customers
WHERE city = 'Kathmandu'
OR city = 'Pokhara';

---

-- Cheap or low-stock products

SELECT *
FROM products
WHERE price < 50
OR stock_quantity < 10;

---

-- Pending or completed payments

SELECT *
FROM payments
WHERE payment_status = 'Pending'
OR payment_status = 'Completed';

---

-- ============================================================
-- COMMON MISTAKES
-- ============================================================

-- ❌ Forgetting that OR returns rows if
-- ANY condition is true.

---

-- ❌ Missing quotes around text values.

WHERE city = Kathmandu
OR city = Pokhara;

---

-- ✔ Correct

WHERE city = 'Kathmandu'
OR city = 'Pokhara';

---

-- ============================================================
-- PERFORMANCE TIP
-- ============================================================

/*

✔ OR can return many rows.

✔ Indexes may improve performance.

✔ If checking many values in the same column,
consider using IN instead.

*/

---

-- ============================================================
-- INTERVIEW QUESTIONS
-- ============================================================

/*

1. What does the OR operator do?

2. How is OR different from AND?

3. When is a row returned when using OR?

4. When should IN be preferred over OR?

*/

---

-- ============================================================
-- PRACTICE
-- ============================================================

/*

1. Find customers from Kathmandu or Butwal.

2. Find products cheaper than $100 or with stock below 20.

3. Find orders that are Pending or Delivered.

4. Find payments made by Cash or Credit Card.

*/

---

-- ============================================================
-- CHALLENGE
-- ============================================================

/*

Write SQL queries to:

1. Find customers from Nepal or India.

2. Find products costing more than $500
   or with stock below 5.

3. Find orders placed on
   '2026-07-05' or '2026-07-06'.

*/

---

-- ============================================================
-- SUMMARY
-- ============================================================

/*

Today you learned

✔ OR Operator

✔ Logical OR

✔ Truth Table

✔ Business Examples

✔ Best Practices

Next Lesson:

NOT Operator

*/
