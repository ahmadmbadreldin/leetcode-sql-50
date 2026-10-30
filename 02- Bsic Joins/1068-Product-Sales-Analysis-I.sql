/*
Problem: 1068 - Product Sales Analysis I
Difficulty: Easy
Topic: Basic Joins
Platform: LeetCode
Link: https://leetcode.com/problems/product-sales-analysis-i/

Description:
Report the product name, year, and price for each sale.

Tables:
- Sales
- Product
*/

SELECT p.product_name, s.year, s.price
FROM Sales AS s
INNER JOIN Product AS p
    ON s.product_id = p.product_id;


/*
NOTES:

1. INNER JOIN:
   - Returns only rows that have matching records
     in both tables.
   - Rows without a match are excluded.

2. JOIN Condition:
   - ON specifies how records from two tables
     are matched.
   - Here, product_id is the common column.

3. Table Aliases:
   - AS assigns a shorter name to a table.
   - Sales AS s
   - Product AS p

4. Column Selection:
   - Columns can be selected from different tables.
   - Use the table alias to specify the source.
   - Example: p.product_name, s.year, s.price

5. INNER JOIN vs LEFT JOIN:
   - INNER JOIN: Returns matching records only.
   - LEFT JOIN: Preserves all records from the left table.

6. ORDER BY:
   - The problem allows results in any order.
   - Therefore, ORDER BY is unnecessary.
*/