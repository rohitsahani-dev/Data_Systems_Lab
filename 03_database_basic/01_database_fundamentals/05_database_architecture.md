# Database Architecture

## Learning Objectives

By the end of this lesson, you will be able to:

* Understand what database architecture is.
* Learn the different levels of database architecture.
* Understand one-tier, two-tier, and three-tier architectures.
* Recognize where databases fit into modern applications.

---

# Introduction

A database does not work alone.

It is usually part of a larger system that includes users, applications, and servers. **Database architecture** describes how these components communicate with each other.

A well-designed architecture improves performance, security, scalability, and maintainability.

---

# What is Database Architecture?

Database architecture refers to the overall design of a database system, including how data is stored, accessed, and managed.

It defines the interaction between:

* Users
* Applications
* Database servers
* Storage systems

---

# Why is Database Architecture Important?

A good architecture provides:

* Better security
* Faster performance
* Easy maintenance
* High availability
* Scalability
* Efficient data management

---

# One-Tier Architecture

In a **One-Tier Architecture**, the user, application, and database all exist on the same machine.

```
User
 │
Application
 │
Database
```

### Advantages

* Simple
* Fast
* Easy to develop

### Disadvantages

* Poor security
* Difficult to scale
* Not suitable for production systems

### Example

A student learning SQL using SQLite on a personal computer.

---

# Two-Tier Architecture

In a **Two-Tier Architecture**, the application communicates directly with the database server.

```
Client Application
        │
        │
 Database Server
```

### Advantages

* Better performance
* Supports multiple users
* Easier maintenance

### Disadvantages

* Limited scalability
* Business logic is often stored in the client

### Example

A desktop inventory management system connected to a MySQL database.

---

# Three-Tier Architecture

A **Three-Tier Architecture** separates the application into three layers.

```
Presentation Layer
       │
Application Layer
       │
Database Layer
```

## 1. Presentation Layer

The user interface where users interact with the application.

Examples:

* Website
* Mobile App
* Desktop Application

---

## 2. Application Layer

Contains the business logic.

Responsibilities include:

* Authentication
* Validation
* Processing requests
* Communicating with the database

---

## 3. Database Layer

Stores and manages all application data.

Responsibilities include:

* Data storage
* Query execution
* Backups
* Transactions
* Security

---

# Example: Online Shopping Website

A customer opens an online shopping website.

1. The browser displays the website (Presentation Layer).
2. The server processes the request (Application Layer).
3. The database retrieves product information (Database Layer).
4. The server sends the results back to the browser.

---

# Comparison

| Feature     | One-Tier  | Two-Tier            | Three-Tier              |
| ----------- | --------- | ------------------- | ----------------------- |
| Complexity  | Low       | Medium              | High                    |
| Security    | Low       | Medium              | High                    |
| Scalability | Low       | Medium              | Excellent               |
| Performance | Good      | Better              | Best                    |
| Maintenance | Difficult | Moderate            | Easy                    |
| Used In     | Learning  | Small Business Apps | Enterprise Applications |

---

# Modern Database Architecture

Today, most applications use cloud-based architectures.

A common flow is:

```
User
   │
Browser / Mobile App
   │
Backend API
   │
Database Server
```

Large systems may also include:

* Load Balancers
* Cache Servers
* Message Queues
* Multiple Database Servers
* Backup Servers

These components improve reliability and performance.

---

# Summary

Database architecture defines how users, applications, and databases interact. While one-tier and two-tier architectures are useful for learning and small applications, three-tier architecture is the industry standard because it provides better security, scalability, and maintainability.

**Next Lesson:** ACID Properties

