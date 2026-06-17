# Pizza Sales Analysis Using SQL

## Project Overview

This project analyzes pizza sales data using SQL to identify customer ordering behavior, revenue trends, top-selling products, and category performance. The analysis helps transform raw sales data into meaningful business insights that support data-driven decision-making.

---

## Business Problem

The company generates a large amount of sales data every day. However, understanding customer preferences, revenue drivers, and sales trends from raw data is challenging. This project aims to solve these challenges through SQL-based analysis.

---

## Dataset Information

The project uses four datasets:

### Orders

Contains order date and order time information.

### Order Details

Contains pizza orders and quantities.

### Pizzas

Contains pizza sizes and prices.

### Pizza Types

Contains pizza names, categories, and ingredients.

---

## Database Schema

The database consists of four related tables:

* Orders
* Order Details
* Pizzas
* Pizza Types

### Relationships

* Pizza Types (1) → Pizzas (Many)
* Pizzas (1) → Order Details (Many)
* Orders (1) → Order Details (Many)

---

## SQL Concepts Used

* SELECT Statement
* WHERE Clause
* GROUP BY
* ORDER BY
* Aggregate Functions
* INNER JOIN
* Common Table Expressions (CTE)
* Window Functions

---

## Business Questions Solved

1. Total Number of Orders
2. Total Revenue Generated
3. Highest Priced Pizza
4. Most Common Pizza Size
5. Top 5 Most Ordered Pizza Types
6. Total Quantity Sold by Category
7. Distribution of Orders by Hour
8. Category-wise Pizza Distribution
9. Average Daily Pizza Orders
10. Top Revenue-Generating Pizza Types

---

## Key Findings

* Total Orders: 21,350
* Total Revenue: $817,860.05
* Highest Priced Pizza: The Greek Pizza
* Most Popular Category: Classic
* Average Daily Orders: 61 Pizzas

---

## Business Recommendations

* Improve inventory management for high-demand products.
* Promote top-selling pizzas through marketing campaigns.
* Optimize menu offerings based on sales performance.
* Improve staffing during peak ordering hours.

---

## Skills Demonstrated

### Technical Skills

* SQL
* Data Analysis
* Database Design
* Query Writing
* Data Aggregation
* Business Intelligence

### Analytical Skills

* Problem Solving
* Revenue Analysis
* Trend Analysis
* Business Insight Generation

---

## Tools Used

* MySQL
* SQL
* GitHub

---

## Author

Naveen Saini
Aspiring Data Analyst


