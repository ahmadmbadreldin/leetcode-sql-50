
/*
Problem: 1581. Customer Who Visited but Did Not Make Any Transactions
Difficulty: Easy
Topic: Basic Aggregate Functions
Platform: LeetCode
Link: https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/

Description:
Find the customers who visited without making any transactions,
and count the number of such visits for each customer.

Tables:
- Visits(visit_id, customer_id)
- Transactions(transaction_id, visit_id, amount)
*/

SELECT
    V.customer_id,
    COUNT(V.visit_id) AS count_no_trans
FROM Visits AS V
LEFT JOIN Transactions AS T
    ON V.visit_id = T.visit_id
WHERE T.transaction_id IS NULL
GROUP BY V.customer_id;


/*
NOTES:

1. LEFT JOIN:
   Returns all rows from the left table, including rows
   without matching records in the right table.

2. IS NULL:
   Checks whether a value is NULL.
   Used here to identify visits without transactions.

3. Aggregate Functions:
   COUNT() counts values or rows.
   COUNT(column) ignores NULL values.
   COUNT(*) counts all rows.

4. GROUP BY:
   Groups rows that share the same customer_id.
   Allows COUNT() to calculate the number of visits
   separately for each customer.

5. GROUP BY and SELECT:
   In SQL Server, every selected column that is not
   inside an aggregate function must appear in GROUP BY.

6. Aggregate Functions without GROUP BY:
   An aggregate function can work without GROUP BY.
   In that case, it calculates one result for the entire
   input set rather than one result per group.

7. Subqueries:
   A subquery that returns multiple rows cannot be passed
   directly to COUNT().
   To count its rows, use it as a derived table in FROM.

8. JOIN Filtering:
   Filtering the right table's unmatched rows using
   WHERE T.transaction_id IS NULL is a common pattern
   for finding records with no matching relationship.
*/
