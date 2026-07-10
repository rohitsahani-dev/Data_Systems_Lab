# Types of Databases

## Learning Objectives

By the end of this lesson, you will be able to:

* Understand the major types of databases.
* Identify the strengths and weaknesses of each type.
* Choose the right database for different applications.
* Recognize real-world use cases.

---

# Introduction

Not all databases are designed for the same purpose.

A banking application, a social media platform, and a weather monitoring system all have different requirements. As a result, different database technologies have been developed to solve different problems.

---

# 1. Relational Database (RDBMS)

A **Relational Database** stores data in tables consisting of rows and columns. Relationships between tables are created using **Primary Keys** and **Foreign Keys**.

## Characteristics

* Structured data
* SQL support
* ACID compliant
* Strong consistency
* Excellent for business applications

## Example Table

### Students

| StudentID | Name  | Age |
| --------- | ----- | --- |
| 1         | Rohit | 21  |
| 2         | Alice | 20  |

### Best Use Cases

* Banking
* E-commerce
* Hospital Management
* School Systems
* Inventory Management

---

# 2. NoSQL Database

A **NoSQL Database** stores data without requiring a fixed table structure.

It is designed for applications with massive amounts of data and rapidly changing data models.

## Characteristics

* Flexible schema
* High scalability
* Fast performance
* Distributed architecture

## Types of NoSQL Databases

### Document Database

Stores data as JSON-like documents.

Example:

```json
{
  "name": "Rohit",
  "age": 21,
  "skills": ["Python", "SQL", "JavaScript"]
}
```

Used for:

* Blogs
* User profiles
* Content management systems

---

### Key-Value Database

Stores data as simple key-value pairs.

Example:

```
User123 → Rohit
```

Used for:

* Caching
* Session storage
* Shopping carts

---

### Column-Family Database

Stores data by columns instead of rows.

Best for:

* Big Data
* Analytics
* IoT systems

---

### Graph Database

Stores relationships between objects using nodes and edges.

Example:

```
Rohit ── Friend ── Alice
```

Best for:

* Social media
* Recommendation systems
* Fraud detection
* Network analysis

---

# 3. Object-Oriented Database

Stores complete objects instead of simple rows and columns.

Useful for applications written with object-oriented programming languages.

### Best Use Cases

* CAD software
* Scientific simulations
* Engineering systems

---

# 4. Distributed Database

Data is stored across multiple physical servers that work together as a single database.

## Advantages

* High availability
* Fault tolerance
* Better scalability
* Faster access for global users

Used by:

* Cloud platforms
* Global applications
* Enterprise systems

---

# 5. Data Warehouse

A **Data Warehouse** is optimized for reporting and analytics rather than day-to-day transactions.

It combines data from multiple sources into a central repository.

## Best Use Cases

* Business Intelligence (BI)
* Dashboards
* Reporting
* Data Analytics

---

# Comparison

| Database Type   | Best For              | Schema       | Scalability    |
| --------------- | --------------------- | ------------ | -------------- |
| Relational      | Business Applications | Fixed        | High           |
| Document        | Web Applications      | Flexible     | Very High      |
| Key-Value       | Caching               | Flexible     | Extremely High |
| Column-Family   | Big Data              | Flexible     | Very High      |
| Graph           | Relationships         | Flexible     | High           |
| Object-Oriented | OOP Applications      | Object-Based | Medium         |
| Data Warehouse  | Analytics             | Structured   | High           |

---

# Which Database Should You Learn First?

For beginners, follow this order:

1. Relational Databases
2. SQL
3. Database Design
4. NoSQL
5. Distributed Databases
6. Data Warehousing

Mastering relational databases and SQL provides a strong foundation before exploring specialized database systems.

---

# Summary

Different database types are built for different workloads. Relational databases excel at structured business data, NoSQL databases handle flexible and large-scale data, graph databases model relationships, distributed databases improve scalability and availability, and data warehouses power analytics and reporting.

**Next Lesson:** SQL vs NoSQL
