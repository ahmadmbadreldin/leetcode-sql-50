/*
Problem: 1683 - Invalid Tweets
Difficulty: Easy
Topic: SELECT
Platform: LeetCode
Link: https://leetcode.com/problems/invalid-tweets/

Description:
Find the IDs of tweets whose content length
is strictly greater than 15 characters.

Table: Tweets
*/

SELECT tweet_id
FROM Tweets
WHERE LEN(content) > 15;


/*
NOTES:

1. String Length Functions:
   - LEN() returns the number of characters
     in a string in SQL Server (T-SQL).
   - LENGTH() is used in other SQL dialects
     such as MySQL and PostgreSQL.
   - DATALENGTH() returns the number of bytes
     used to represent an expression.

2. Comparison Operators:
   - > means GREATER THAN.
   - Strictly greater than 15 means > 15,
     not >= 15.

3. Important SQL Dialect Differences:
   - SQL Server: LEN()
   - MySQL: LENGTH() / CHAR_LENGTH()
   - PostgreSQL: LENGTH()

4. LEN() vs DATALENGTH():
   - LEN() counts characters but excludes
     trailing spaces.
   - DATALENGTH() counts bytes, not characters.
*/