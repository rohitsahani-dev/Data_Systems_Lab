# ACID Properties

## Learning Objectives

By the end of this lesson, you will be able to:

* Understand what ACID properties are.
* Explain why transactions are important.
* Learn the four ACID properties.
* Understand how databases maintain data consistency and reliability.

---

# Introduction

Imagine transferring **$500** from one bank account to another.

The transaction involves two operations:

1. Deduct $500 from Account A.
2. Add $500 to Account B.

If the first operation succeeds but the second fails, money would disappear.

Databases prevent situations like this using **transactions** and the **ACID properties**.

ACID ensures that database operations are **reliable**, **consistent**, and **safe**, even when unexpected failures occur.

---

# What is a Transaction?

A **transaction** is a sequence of one or more database operations treated as a single unit of work.

A transaction has only two possible outcomes:

* **Commit** – Save all changes permanently.
* **Rollback** – Undo all changes if an error occurs.

---

# What Does ACID Stand For?

ACID stands for:

* **A** – Atomicity
* **C** – Consistency
* **I** – Isolation
* **D** – Durability

These four properties ensure that transactions execute correctly.

---

# 1. Atomicity

**Atomicity** means that a transaction is treated as a single, indivisible unit.

Either **all operations succeed**, or **none of them do**.

## Example

Bank Transfer:

```text
Account A → -500
Account B → +500
```

If adding money to Account B fails, the database automatically restores Account A's balance.

Nothing is partially completed.

### Key Idea

**All or Nothing**

---

# 2. Consistency

**Consistency** ensures that a transaction moves the database from one valid state to another.

All database rules and constraints must remain satisfied.

## Example

A bank account should never have a negative balance if the system prohibits overdrafts.

If a transaction would violate this rule, it is rejected.

### Key Idea

**Valid State → Valid State**

---

# 3. Isolation

**Isolation** ensures that multiple transactions running at the same time do not interfere with one another.

Each transaction behaves as though it is running alone.

## Example

Suppose two users try to buy the last product in stock simultaneously.

The database coordinates the transactions so inventory remains accurate.

### Key Idea

**Concurrent Transactions Stay Independent**

---

# 4. Durability

**Durability** guarantees that once a transaction is committed, the changes are permanent.

Even if the server crashes or power is lost immediately afterward, the committed data remains safe.

Databases achieve this using mechanisms such as transaction logs and backups.

### Key Idea

**Committed Means Permanent**

---

# Summary of ACID

| Property    | Purpose                                       |
| ----------- | --------------------------------------------- |
| Atomicity   | All operations succeed or all fail.           |
| Consistency | Data remains valid after every transaction.   |
| Isolation   | Simultaneous transactions do not interfere.   |
| Durability  | Committed data survives crashes and failures. |

---

# Real-World Applications

ACID properties are essential in systems where accuracy matters.

Examples include:

* Banking systems
* Payment gateways
* Online shopping
* Airline reservation systems
* Hospital management systems
* Payroll software

---

# Why ACID Matters

Without ACID:

* Money could disappear during transfers.
* Duplicate orders could be created.
* Inventory counts could become incorrect.
* Data could become corrupted after a crash.
* Users could overwrite each other's changes.

ACID prevents these issues by ensuring every transaction is processed safely.

---

# Summary

ACID properties form the foundation of reliable relational databases. They ensure that transactions are processed completely, maintain data integrity, remain isolated from concurrent operations, and persist even after system failures.

Understanding ACID is essential before learning advanced topics such as transactions, locking, concurrency control, and query optimization.

**Next Lesson:** Database Normalization
