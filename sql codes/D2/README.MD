# 🧩 SQL Query Practice — `salesdb`

A collection of SQL practice problems and solutions written by **Michael John Tadeo**, focused on mastering fundamental querying logic using **PostgreSQL** syntax.

---

## 📘 Overview

This project contains a set of query challenges designed to build practical understanding of:
- Retrieving and filtering data using `SELECT`, `FROM`, and `WHERE`
- Applying logical operators (`AND`, `OR`, `BETWEEN`, `LIKE`)
- Sorting results using `ORDER BY`
- Creating computed or labeled columns using `CASE`
- Practicing schema and table discovery using `information_schema`

All problems are solved based on the `sales.customers` table from the `salesdb` database schema.

---

## 🧱 Table Schema Used

**Table:** `sales.customers`

| Column       | Type      | Description              |
|---------------|-----------|--------------------------|
| `customerid`  | integer   | Unique customer ID       |
| `firstname`   | text      | Customer’s first name    |
| `lastname`    | text      | Customer’s last name     |
| `country`     | text      | Customer’s country       |
| `score`       | integer   | Customer’s score value   |

---

## 🧠 Problem Set

### 🧩 Problem 1
**List all customers from Germany who have a score higher than 400.**

Focus: `WHERE` and comparison operators.

---

### 🧩 Problem 2
**Display only the first name and score of customers whose score is between 300 and 800, ordered by score descending.**

Focus: `SELECT` specific columns, `BETWEEN`, `ORDER BY`.

---

### 🧩 Problem 3
**Show all customers whose first name starts with ‘M’ or who live in the USA.**

Focus: `LIKE` and logical operator `OR`.

---

### 🧩 Problem 4
**List all customers and add a new column called "Level" that labels them as:**
- `'Elite'` if score ≥ 800  
- `'Good'` if score between 400–799  
- `'Low'` if below 400  

Focus: `CASE WHEN` for conditional column creation.

---

### 🧩 Problem 5
**Query only customers with odd IDs, sorted by country alphabetically.**

Focus: arithmetic operators (`%`), `ORDER BY`.

---

## 🧰 Tools & Environment

- **Database:** PostgreSQL  
- **GUI:** pgAdmin  
- **Editor:** Visual Studio Code (for writing and organizing SQL scripts)

---

## 🚀 How to Use

1. Clone or download this repository.
2. Open `salesdb_queries.sql` (or your filename) in **pgAdmin** or **VS Code**.
3. Run queries step-by-step to observe the results.
4. Experiment by changing the conditions and logic.

---

## 💡 Notes

Each query includes commented lines to help identify:
- The schema and table being used
- Optional discovery commands (`information_schema` queries)
- Step-by-step query logic

This repository serves as both a **learning log** and a **reference material** for SQL practice.

---

## ✍️ Author

**Michael John Tadeo**  
💻 Passionate about automation, embedded systems, and data-driven engineering.  
📚 Currently learning:
- Object Oriented Programming (Python)
- Data Structures & Algorithms (Python)
- PostgreSQL and Database Management
- IoT Automation (ESP32 & Raspberry Pi)

---
