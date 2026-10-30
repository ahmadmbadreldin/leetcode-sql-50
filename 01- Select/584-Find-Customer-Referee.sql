/*
Problem: 584 - Find Customer Referee
Difficulty: Easy
Topic: SELECT
Platform: LeetCode
Link: https://leetcode.com/problems/find-customer-referee/

Description:
Find the names of customers who were either:
- Referred by a customer whose ID is not 2.
- Not referred by any customer.

Table: Customer
*/

SELECT name
FROM Customer
WHERE referee_id != 2
    OR referee_id IS NULL;


/*
NOTES:

1. NULL:
   - NULL represents a missing or unknown value.
   - NULL cannot be compared using = or !=.
   - Use IS NULL to check for NULL values.
   - Use IS NOT NULL to check for non-NULL values.

2. Comparison Operators:
   - != means NOT EQUAL.
   - <> is another valid SQL operator for NOT EQUAL.

3. OR Operator:
   - Use OR when at least one of the specified
     conditions must be TRUE.

4. NULL and Logical Conditions:
   - Comparisons involving NULL return UNKNOWN,
     not TRUE or FALSE.
   - Therefore, WHERE referee_id != 2 does not
     include rows where referee_id is NULL.
   - IS NULL must be added explicitly to include them.
*/