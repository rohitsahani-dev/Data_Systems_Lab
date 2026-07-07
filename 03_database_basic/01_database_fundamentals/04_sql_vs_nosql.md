# SQL vs NoSQL

## Learning Objectives

By the end of this lesson, you will be able to:

* Understand the difference between SQL and NoSQL databases.
* Identify the advantages and disadvantages of each.
* Choose the right database based on project requirements.
* Recognize real-world applications of both technologies.

---

# Introduction

Modern applications store different kinds of data.

A banking application requires strict accuracy and consistency, while a social media platform must handle billions of posts, comments, and likes efficiently.

Because of these different requirements, databases are generally divided into two major categories:

* **SQL Databases**
* **NoSQL Databases**

Neither is universally better—the best choice depends on your application's needs.

---

# What is SQL?

**SQL (Structured Query Language)** databases are **relational databases** that store data in tables made up of rows and columns.

They use SQL to create, read, update, and delete data.

## Example

### Employees

| EmployeeID | Name  | Department |
| ---------- | ----- | ---------- |
| 1          | Rohit | IT         |
| 2          | Alice | HR         |

Each row represents one employee, and each column stores a specific attribute.

---

## Characteristics of SQL Databases

* Structured tables
* Fixed schema
* Strong consistency
* ACID transactions
* Relationships using Primary Keys and Foreign Keys
* Excellent support for complex queries

---

## Advantages

* High data integrity
* Reliable transactions
* Powerful querying
* Easy reporting
* Mature ecosystem

---

## Disadvantages

* Less flexible schema
* Horizontal scaling is more complex
* Schema changes may require migrations

---

# **What is NoSQL?**

**NoSQL (Not Only SQL)** databases are designed for flexible, high-volume, and distributed data storage.

Unlike relational databases, they do not require a fixed table structure.

Data may be stored as:

* Documents
* Key-value pairs
* Graphs
* Column families

---

## Example (Document)

```json
{
  "name": "Rohit",
  "age": 21,
  "skills": [
    "Python",
    "SQL",
    "JavaScript"
  ]
}
```

Each document can have a different structure.

---

## Characteristics of NoSQL Databases

* Flexible schema
* Horizontal scalability
* High performance
* Distributed architecture
* Designed for very large datasets

---

## Advantages

* Handles massive amounts of data
* Easy to scale across multiple servers
* Flexible data structure
* Fast development for changing requirements

---

## Disadvantages

* Relationships can be more difficult to manage
* Some systems provide weaker consistency guarantees
* Complex joins are often unavailable or handled differently

---

# SQL vs NoSQL Comparison

| **Feature**    | **SQL**                      | **NoSQL**                                 |
| -------------- | ---------------------------- | ----------------------------------------- |
| Data Model     | Tables                       | Documents, Key-Value, Graph, Column       |
| Schema         | Fixed                        | Flexible                                  |
| Query Language | SQL                          | Database-specific APIs or query languages |
| Relationships  | Strong                       | Limited or application-managed            |
| Transactions   | Strong ACID support          | Varies by database                        |
| Scalability    | Vertical and some horizontal | Horizontal                                |
| Best For       | Structured business data     | Large-scale, flexible data                |

---

# When Should You Use SQL?

Choose SQL when building:

* Banking systems
* Hospital management
* Payroll systems
* School management
* Accounting software
* E-commerce order processing

---

# When Should You Use NoSQL?

Choose NoSQL when building:

* Social media platforms
* Chat applications
* Content management systems
* IoT platforms
* Real-time analytics
* Recommendation engines

---

# Can SQL and NoSQL Work Together?

Yes.

Many modern applications use both.

Example:

* SQL stores customer accounts and orders.
* NoSQL stores user activity, logs, notifications, or cached data.

This approach is known as **polyglot persistence**, where different databases are used for different types of data.

---

# Summary

SQL databases provide strong consistency, structured storage, and powerful querying, making them ideal for transactional systems. NoSQL databases offer flexibility, scalability, and high performance for applications with rapidly changing or large-scale data.

Choosing between SQL and NoSQL depends on the problem you are trying to solve, not on which technology is more popular.

**Next Lesson:** Database Architecture

