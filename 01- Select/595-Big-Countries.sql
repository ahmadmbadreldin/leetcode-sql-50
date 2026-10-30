/*
Problem: 595 - Big Countries
Difficulty: Easy
Topic: SELECT
Platform: LeetCode
Link: https://leetcode.com/problems/big-countries/

Description:
Find the name, population, and area of countries
that have an area of at least 3,000,000 km2
or a population of at least 25,000,000.

Table: World
*/

SELECT name, population, area
FROM World
WHERE area >= 3000000
    OR population >= 25000000;


/*
NOTES:

1. Comparison Operators:
   - >= means GREATER THAN OR EQUAL TO.
   - <= means LESS THAN OR EQUAL TO.
   - > means GREATER THAN.
   - < means LESS THAN.
   - != or <> means NOT EQUAL TO.

2. OR Operator:
   - Returns TRUE if at least one condition is TRUE.
   - A country is considered big if it satisfies
     either the area condition or the population condition.

3. Common Syntax Mistake:
   - Incorrect: area => 3000000
   - Correct:   area >= 3000000
   - The correct order is the comparison operator
     followed by the equals sign.
   - The same applies to <=, not =<.

4. ORDER BY:
   - Not required when the problem allows
     the result to be returned in any order.
*/