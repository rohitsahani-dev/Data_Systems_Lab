-- ============================================================
-- Lesson 01: CREATE DATABASE
-- Module: SQL Basics
-- Repository: Data Systems Lab
-- ============================================================

# /*

# INTRODUCTION

A database is a container that stores tables, views,
indexes, procedures, and other database objects.

Before creating tables, you must first create a database.

*/

-- ============================================================
-- BASIC SYNTAX
-- ============================================================

CREATE DATABASE database_name;

-- Example

CREATE DATABASE student_management;

-- ============================================================
-- USING THE DATABASE
-- ============================================================

/*
After creating a database, select it before creating tables.

Different database systems use different commands.
*/

-- MySQL

USE student_management;

-- PostgreSQL

-- Connect using:
-- \c student_management

-- SQL Server

-- USE student_management;
-- GO

-- ============================================================
-- VERIFY DATABASE
-- ============================================================

-- MySQL

SHOW DATABASES;

-- PostgreSQL

-- \l

-- SQL Server

-- SELECT name FROM sys.databases;

-- ============================================================
-- CREATE MULTIPLE DATABASES
-- ============================================================

CREATE DATABASE ecommerce;

CREATE DATABASE hospital_management;

CREATE DATABASE inventory_system;

-- ============================================================
-- COMMON ERRORS
-- ============================================================

-- ❌ Space inside database names

-- CREATE DATABASE Student Database;

-- ✔ Correct

CREATE DATABASE student_database;

---

-- ❌ Using reserved keywords

-- CREATE DATABASE SELECT;

---

-- ✔ Use meaningful names

CREATE DATABASE employee_management;

---

-- ✔ Use snake_case

CREATE DATABASE online_shopping;

---

-- ✔ Keep names descriptive

CREATE DATABASE library_management;

-- ============================================================
-- BEST PRACTICES
-- ============================================================

/*

✔ Use lowercase names.

✔ Separate words using underscores.

✔ Avoid spaces.

✔ Avoid special characters.

✔ Choose meaningful names.

✔ Keep naming consistent across projects.

*/

-- ============================================================
-- PRACTICE
-- ============================================================

/*

Create the following databases:

1. university

2. banking_system

3. movie_booking

4. food_delivery

5. gym_management

*/

-- ============================================================
-- SUMMARY
-- ============================================================

/*

In this lesson you learned:

✔ CREATE DATABASE
✔ Database naming conventions
✔ Selecting a database
✔ Listing existing databases
✔ Common mistakes
✔ Best practices

Next Lesson:
CREATE TABLE

*/
