# DBMS vs RDBMS

## Learning Objectives

By the end of this lesson, you will be able to:

* Understand what a Database Management System (DBMS) is.
* Explain what a Relational Database Management System (RDBMS) is.
* Identify the differences between DBMS and RDBMS.
* Know when each type of database is appropriate.

---

# What is a DBMS?

A **Database Management System (DBMS)** is software that allows users to create, store, retrieve, update, and manage data efficiently.

Instead of interacting directly with files, users communicate with the DBMS, which handles data storage, organization, security, and retrieval.

### Responsibilities of a DBMS

* Store data
* Retrieve data
* Update records
* Delete records
* Manage users
* Control permissions
* Create backups
* Improve data security

---

## Real-World Example

Imagine a library.

Instead of searching thousands of books manually, the librarian uses software to find, update, and organize books.

The librarian's software acts like a **DBMS**.

---

## Popular DBMS Examples

* Microsoft Access
* dBase
* FoxPro

These systems work well for small applications but have limited support for large-scale, multi-user environments.

---

# What is an RDBMS?

An **RDBMS (Relational Database Management System)** is a type of DBMS that stores data in related tables using rows and columns.

Relationships between tables are created using **Primary Keys** and **Foreign Keys**, helping maintain data consistency and reducing duplication.

---

## Example

### Customers

| CustomerID | Name  |
| ---------- | ----- |
| 1          | Rohit |
| 2          | Alice |

### Orders

| OrderID | CustomerID | Product  |
| ------- | ---------- | -------- |
| 101     | 1          | Laptop   |
| 102     | 2          | Keyboard |

The **CustomerID** links the two tables, allowing the database to determine which customer placed each order.

---

# Features of an RDBMS

* Stores data in tables
* Supports SQL
* Enforces relationships
* Maintains data integrity
* Supports multiple users
* Reduces duplicate data
* Supports transactions
* Follows ACID principles

---

# DBMS vs RDBMS

| Feature            | DBMS                  | RDBMS                      |
| ------------------ | --------------------- | -------------------------- |
| Data Storage       | Files or tables       | Related tables             |
| Relationships      | Usually not supported | Fully supported            |
| Primary Keys       | Optional              | Commonly used              |
| Foreign Keys       | Not required          | Required for relationships |
| SQL Support        | Limited or optional   | Standard SQL               |
| Data Redundancy    | Higher                | Lower                      |
| Multi-user Support | Limited               | Excellent                  |
| Security           | Basic                 | Advanced                   |
| Scalability        | Small to medium       | Medium to enterprise       |
| Transactions       | Limited               | Fully supported            |

---

# Advantages of RDBMS

* Better organization
* Reduced redundancy
* Improved security
* Easier maintenance
* Faster querying
* Reliable transactions
* Strong data integrity

---

# When Should You Use an RDBMS?

Choose an RDBMS when building:

* Banking systems
* E-commerce websites
* Hospital management systems
* School management systems
* Social media applications
* Inventory management systems

---

# Summary

A DBMS helps manage data, while an RDBMS extends those capabilities by organizing data into related tables with strong consistency, integrity, and support for SQL. Most modern applications use an RDBMS because it scales well and supports complex relationships between data.

**Next Lesson:** Types of Databases
