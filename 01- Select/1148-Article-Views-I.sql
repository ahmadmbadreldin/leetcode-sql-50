/*
Problem: 1148 - Article Views I
Difficulty: Easy
Topic: SELECT
Platform: LeetCode
Link: https://leetcode.com/problems/article-views-i/

Description:
Find all authors who viewed at least one of their own articles.
Return their IDs in ascending order.

Table: Views
*/

SELECT DISTINCT viewer_id AS id
FROM Views
WHERE viewer_id = author_id
ORDER BY viewer_id;


/*
NOTES:

1. DISTINCT:
   - Removes duplicate rows from the result.
   - Important because the Views table may contain
     duplicate records.
   - DISTINCT applies to the selected columns.

2. Column Comparison:
   - SQL allows comparing two columns directly
     in the WHERE clause.
   - Example: viewer_id = author_id
   - This checks whether the viewer and author
     are the same person.

3. Column Aliases:
   - AS is used to assign an alias to a column.
   - Example: viewer_id AS id
   - The output column will be named id.

4. ORDER BY:
   - Sorts the result based on the specified column.
   - ASC means ascending order (default).
   - DESC means descending order.
   - Example: ORDER BY viewer_id ASC.

5. Duplicate Rows:
   - A table does not necessarily contain unique rows.
   - DISTINCT ensures that each author ID appears
     only once in the result.
*/