-- ============================================================
-- Lesson 03 : INSERT INTO
-- Module : SQL Basics
-- Database : E-Commerce
-- ============================================================

/*
INSERT INTO adds new rows into a table.

Syntax

INSERT INTO table_name(columns...)
VALUES(values...);

*/

---

## -- INSERT CUSTOMERS

INSERT INTO customers
VALUES
(1,'Rohit','Sahani','[rohit@email.com](mailto:rohit@email.com)','9800000001','Kathmandu','Nepal','2026-07-01'),

(2,'Alice','Johnson','[alice@email.com](mailto:alice@email.com)','9800000002','Pokhara','Nepal','2026-07-02'),

(3,'Bob','Smith','[bob@email.com](mailto:bob@email.com)','9800000003','Butwal','Nepal','2026-07-03');

---

## -- INSERT CATEGORIES

INSERT INTO categories
VALUES

(1,'Electronics'),

(2,'Fashion'),

(3,'Books');

---

## -- INSERT PRODUCTS

INSERT INTO products
VALUES

(1,1,'Laptop',850.00,20),

(2,1,'Keyboard',30.00,150),

(3,2,'Hoodie',40.00,75),

(4,3,'SQL Mastery',25.00,60);

---

## -- INSERT ORDERS

INSERT INTO orders
VALUES

(1,1,'2026-07-05','Delivered'),

(2,2,'2026-07-06','Pending');

---

## -- INSERT ORDER ITEMS

INSERT INTO order_items
VALUES

(1,1,1,1,850),

(2,1,2,1,30),

(3,2,3,2,40);

---

## -- INSERT PAYMENTS

INSERT INTO payments
VALUES

(1,1,'Credit Card','Completed',880),

(2,2,'Cash','Pending',80);

---

## -- BEST PRACTICES

/*

✔ Insert related tables first.

customers

categories

products

orders

order_items

payments

*/

---

## -- PRACTICE

/*

Add:

2 new customers

2 new products

2 new orders

*/

---

## -- SUMMARY

/*

You learned

✔ INSERT INTO

✔ Multiple row insertion

✔ Real-world database population

Next Lesson

SELECT

*/
