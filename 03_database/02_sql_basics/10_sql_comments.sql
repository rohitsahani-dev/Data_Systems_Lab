-- ============================================================
-- Lesson 10: SQL Comments
-- Module: SQL Basics
-- Repository: Data Systems Lab
-- Database: E-Commerce
-- ============================================================

# /*

# INTRODUCTION

Comments are notes written inside SQL code that are ignored by
the database engine.

They help developers explain code, document scripts,
disable queries during testing, and improve maintainability.

Good comments make SQL easier to understand for both yourself
and your teammates.

*/

-- ============================================================
-- WHY USE COMMENTS?
-- ============================================================

/*

Comments help you:

✔ Explain complex queries
✔ Document business logic
✔ Organize SQL scripts
✔ Temporarily disable code
✔ Make projects easier to maintain

*/

-- ============================================================
-- SINGLE-LINE COMMENTS
-- ============================================================

-- Display every customer

SELECT *
FROM customers;

---

## -- MULTI-LINE COMMENTS

/*

Retrieve all products
that cost more than $100.

*/

SELECT
product_name,
price
FROM products
WHERE price > 100;

---

## -- COMMENTING OUT CODE

SELECT
product_name,
price
FROM products;

-- WHERE price > 500;

---

## -- DOCUMENTING A QUERY

/*

Business Requirement:
Display all completed orders
sorted by newest first.

*/

SELECT
order_id,
order_date,
order_status
FROM orders
WHERE order_status = 'Delivered'
ORDER BY order_date DESC;

---

## -- ORGANIZING LARGE SCRIPTS

-- ============================================================
-- Customers
-- ============================================================

SELECT *
FROM customers;

-- ============================================================
-- Products
-- ============================================================

SELECT *
FROM products;

-- ============================================================
-- Orders
-- ============================================================

SELECT *
FROM orders;

---

## -- DATABASE DIFFERENCES

/*

MySQL
Supports:
---------

/* ... */

PostgreSQL
Supports:
---------

/* ... */

SQLite
Supports:
---------

/* ... */

SQL Server
Supports:
---------

/* ... */

*/

---

## -- BEST PRACTICES

/*

✔ Explain WHY, not WHAT.

✔ Keep comments updated.

✔ Use comments to separate sections.

✔ Remove old or misleading comments.

✔ Write comments that add value.

*/

---

## -- COMMON MISTAKES

/*

❌ Commenting every simple query.

❌ Leaving outdated comments.

❌ Writing comments that repeat
exactly what the SQL already says.

Bad Example:

-- Select customers

SELECT *
FROM customers;

Better Example:

-- Monthly customer export
-- used by the finance team.

*/

---

## -- INTERVIEW QUESTIONS

/*

1. What is a SQL comment?

2. What are the two main types of comments?

3. Why are comments important?

4. Do comments affect performance?

5. Should every SQL statement have a comment?

*/

---

## -- PRACTICE

/*

1. Add comments to your previous lessons.

2. Document every query.

3. Separate sections with headers.

4. Comment out a WHERE clause.

5. Explain a business report.

*/

---

## -- CHALLENGE

/*

Create a well-documented SQL script
that displays:

• Customers
• Products
• Orders

Include professional section headers
and meaningful comments.

*/

---

## -- SUMMARY

/*

Today you learned

✔ Single-line comments

✔ Multi-line comments

✔ Documentation

✔ Script organization

✔ Best practices

✔ Professional SQL formatting

Congratulations!

You have completed
SQL Basics.

Next Module:

Filtering & Operators

*/
