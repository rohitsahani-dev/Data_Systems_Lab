-- ============================================================
-- Lesson 02: CREATE TABLE
-- Module: SQL Basics
-- Repository: Data Systems Lab
-- ============================================================

# /*

# INTRODUCTION

A table is where data is stored inside a database.

Think of a table like an Excel spreadsheet:

Rows    → Records
Columns → Fields (Attributes)

Before inserting any data, a table must be created.
*/

-- ============================================================
-- BASIC SYNTAX
-- ============================================================

CREATE TABLE table_name (
column_name data_type constraints
);

-- ============================================================
-- EXAMPLE 1
-- ============================================================

CREATE TABLE students (
student_id INT,
first_name VARCHAR(50),
last_name VARCHAR(50),
age INT
);

-- ============================================================
-- DATA TYPES
-- ============================================================

-- INT
-- Stores whole numbers

student_id INT;

---

-- VARCHAR(n)
-- Stores variable-length text

first_name VARCHAR(50);

---

-- CHAR(n)
-- Stores fixed-length text

grade CHAR(1);

---

-- DECIMAL(p, s)
-- Stores exact decimal numbers

salary DECIMAL(10,2);

---

-- DATE
-- Stores dates

birth_date DATE;

---

-- BOOLEAN

is_active BOOLEAN;

---

-- TEXT

description TEXT;

-- ============================================================
-- COLUMN CONSTRAINTS
-- ============================================================

CREATE TABLE employees (

```
employee_id INT PRIMARY KEY,

first_name VARCHAR(50) NOT NULL,

last_name VARCHAR(50) NOT NULL,

email VARCHAR(100) UNIQUE,

salary DECIMAL(10,2),

hire_date DATE
```

);

-- ============================================================
-- COMMON SQL DATA TYPES
-- ============================================================

| Data Type | Description           |
| --------- | --------------------- |
| INT       | Integer               |
| BIGINT    | Large Integer         |
| FLOAT     | Floating Point Number |
| DECIMAL   | Exact Decimal         |
| CHAR      | Fixed-Length Text     |
| VARCHAR   | Variable-Length Text  |
| TEXT      | Large Text            |
| DATE      | Date                  |
| TIME      | Time                  |
| DATETIME  | Date & Time           |
| BOOLEAN   | True / False          |

-- ============================================================
-- NAMING CONVENTIONS
-- ============================================================

✔ Table names should be plural.

Examples

students

employees

customers

products

orders

---

✔ Use snake_case

student_grades

employee_salary

customer_orders

---

✔ Avoid spaces

❌ Student Table

✔ student_table

---

✔ Avoid reserved keywords

❌ CREATE TABLE SELECT;

✔ CREATE TABLE student_data;

-- ============================================================
-- EXAMPLE 2
-- ============================================================

CREATE TABLE products (

```
product_id INT PRIMARY KEY,

product_name VARCHAR(100),

price DECIMAL(8,2),

stock INT,

created_at DATE
```

);

-- ============================================================
-- COMMON MISTAKES
-- ============================================================

❌ Missing commas

CREATE TABLE students (

student_id INT

first_name VARCHAR(50)

);

---

❌ Missing parentheses

CREATE TABLE students

student_id INT;

---

❌ Duplicate column names

CREATE TABLE students (

id INT,

id VARCHAR(50)

);

---

❌ Wrong data type

age VARCHAR(20)

✔ Better

age INT

-- ============================================================
-- BEST PRACTICES
-- ============================================================

✔ Use PRIMARY KEY.

✔ Choose appropriate data types.

✔ Keep column names meaningful.

✔ Use NOT NULL when necessary.

✔ Use snake_case.

✔ Keep naming consistent.

-- ============================================================
-- PRACTICE
-- ============================================================

Create the following tables.

1. students

Columns

student_id

first_name

last_name

email

age

---

2. products

Columns

product_id

product_name

price

stock

---

3. employees

Columns

employee_id

name

department

salary

---

4. books

Columns

book_id

title

author

price

---

5. movies

Columns

movie_id

title

genre

release_date

-- ============================================================
-- SUMMARY
-- ============================================================

In this lesson you learned:

✔ CREATE TABLE

✔ Data Types

✔ Column Constraints

✔ Naming Conventions

✔ Best Practices

✔ Common Mistakes

Next Lesson:

INSERT INTO
