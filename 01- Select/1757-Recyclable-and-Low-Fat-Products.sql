/*
Problem: 1757 - Recyclable and Low Fat Products
Difficulty: Easy
Topic: SELECT
Platform: LeetCode
Link: https://leetcode.com/problems/recyclable-and-low-fat-products/

Description:
Find the product IDs of products that are both low fat and recyclable.

Table: Products
*/

SELECT product_id
FROM Products
WHERE low_fats = 'Y'
    AND recyclable = 'Y';


/*
NOTES:

1. ENUM:
   - ENUM is a data type that allows a column to store
     only one value from a predefined list of values.
   - Example: ENUM('Y', 'N')
   - It is useful for columns with a limited set of
     predefined options.
   - Unlike VARCHAR, ENUM restricts the allowed values.

2. AND Operator:
   - Use AND when all specified conditions must be TRUE.

3. ORDER BY:
   - ORDER BY is unnecessary when the problem allows
     the result to be returned in any order.
*/