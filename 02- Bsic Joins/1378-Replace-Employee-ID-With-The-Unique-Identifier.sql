/*
Problem: 1378 - Replace Employee ID With The Unique Identifier
Difficulty: Easy
Topic: Basic Joins
Platform: LeetCode
Link: https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/

Description:
Show the unique ID of each employee.
If an employee does not have a unique ID, return NULL.

Tables:
- Employees
- EmployeeUNI
*/

SELECT eu.unique_id, e.name
FROM Employees AS e
LEFT JOIN EmployeeUNI AS eu
    ON e.id = eu.id;


/*
NOTES:

1. LEFT JOIN:
   - Returns all rows from the LEFT table.
   - Returns matching rows from the RIGHT table.
   - If there is no match, columns from the RIGHT table
     contain NULL.

2. JOIN Condition:
   - ON specifies the condition used to match rows
     between two tables.
   - Here, employee IDs are used to match records.

3. Table Aliases:
   - AS is used to assign shorter names to tables.
   - Employees AS e
   - EmployeeUNI AS eu

4. Column Selection:
   - SELECT determines which columns appear in the result.
   - The order of columns in SELECT determines
     their order in the output.
*/