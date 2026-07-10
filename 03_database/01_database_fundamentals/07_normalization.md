# Database Normalization

## Learning Objectives

By the end of this lesson, you will be able to:

* Understand what database normalization is.
* Learn why normalization is important.
* Identify data redundancy and update anomalies.
* Understand the First, Second, and Third Normal Forms (1NF, 2NF, and 3NF).
* Design cleaner and more efficient database tables.

---

# Introduction

Imagine storing customer orders like this:

| OrderID | Customer | Phone      | Product  | Product Price |
| ------- | -------- | ---------- | -------- | ------------: |
| 1       | Rohit    | 9800000001 | Laptop   |           800 |
| 2       | Rohit    | 9800000001 | Mouse    |            25 |
| 3       | Rohit    | 9800000001 | Keyboard |            50 |

Notice how the customer's name and phone number are repeated in every row.

This repetition is called **data redundancy**.

Redundant data wastes storage, makes updates difficult, and increases the risk of inconsistent information.

Normalization solves these problems.

---

# What is Normalization?

**Normalization** is the process of organizing data into well-structured tables to:

* Reduce data duplication
* Improve data consistency
* Simplify updates
* Maintain data integrity
* Make databases easier to maintain

---

# Why is Normalization Important?

Without normalization, databases may suffer from:

* Duplicate data
* Inconsistent records
* Difficult updates
* Storage waste
* Higher maintenance costs

---

# First Normal Form (1NF)

A table is in **First Normal Form (1NF)** if:

* Each column contains only one value.
* There are no repeating groups.
* Every row is unique.

### Not in 1NF

| StudentID | Name  | Subjects    |
| --------- | ----- | ----------- |
| 1         | Rohit | SQL, Python |

The **Subjects** column contains multiple values.

### In 1NF

| StudentID | Name  | Subject |
| --------- | ----- | ------- |
| 1         | Rohit | SQL     |
| 1         | Rohit | Python  |

Now each cell contains a single value.

---

# Second Normal Form (2NF)

A table is in **Second Normal Form (2NF)** if:

* It is already in 1NF.
* Every non-key column depends on the entire primary key.

### Example

Instead of storing customer details in every order:

### Orders

| OrderID | CustomerID | ProductID |
| ------- | ---------- | --------- |

### Customers

| CustomerID | Name | Phone |
| ---------- | ---- | ----- |

Customer information is stored only once.

---

# Third Normal Form (3NF)

A table is in **Third Normal Form (3NF)** if:

* It is already in 2NF.
* Non-key columns depend only on the primary key.
* There are no transitive dependencies.

### Poor Design

| StudentID | Student | Department | Department Head |
| --------- | ------- | ---------- | --------------- |

The **Department Head** depends on the **Department**, not directly on the **StudentID**.

### Better Design

### Students

| StudentID | Student | DepartmentID |
| --------- | ------- | ------------ |

### Departments

| DepartmentID | Department | Department Head |
| ------------ | ---------- | --------------- |

The dependency is now stored correctly.

---

# Advantages of Normalization

* Reduces duplicate data
* Saves storage space
* Improves consistency
* Simplifies updates
* Prevents many data anomalies
* Makes databases easier to maintain

---

# Disadvantages of Normalization

* Requires more tables
* Some queries become more complex
* May require joins to retrieve related data

In practice, these trade-offs are usually worthwhile because they improve data quality and maintainability.

---

# Summary of Normal Forms

| Normal Form | Goal                                                 |
| ----------- | ---------------------------------------------------- |
| 1NF         | Eliminate repeating groups and ensure atomic values. |
| 2NF         | Remove partial dependencies.                         |
| 3NF         | Remove transitive dependencies.                      |

Higher normal forms (BCNF, 4NF, and 5NF) exist, but 1NF–3NF cover most real-world applications.

---

# Real-World Example

An online shopping platform stores:

* Customers
* Products
* Orders
* Payments

Each is stored in its own table and connected using primary and foreign keys.

This design minimizes redundancy and keeps the data consistent as the application grows.

---

# Summary

Normalization is a database design technique that organizes data into efficient, non-redundant tables. By following the first three normal forms, you can build databases that are easier to maintain, more consistent, and less prone to errors.

With database fundamentals complete, you are ready to start writing SQL and building databases from scratch.

**Next Section:** SQL Basics – Creating Databases and Tables
