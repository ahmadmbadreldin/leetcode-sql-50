
/*
Problem: 197. Rising Temperature
Difficulty: Easy
Topic: Basic Joins
Platform: LeetCode
Link: https://leetcode.com/problems/rising-temperature/

Description:
Find the IDs of dates where the temperature is higher
than the temperature on the previous calendar day.

Table:
- Weather(id, recordDate, temperature)
*/


-- Solution 1: Using DATEDIFF()

SELECT W1.id
FROM Weather AS W1
JOIN Weather AS W2
    ON DATEDIFF(DAY, W2.recordDate, W1.recordDate) = 1
WHERE W1.temperature > W2.temperature;


-- Solution 2: Using DATEADD()

SELECT W1.id
FROM Weather AS W1
JOIN Weather AS W2
    ON W1.recordDate = DATEADD(DAY, 1, W2.recordDate)
WHERE W1.temperature > W2.temperature;


/*
NOTES:

1. SELF JOIN:
   A table can be joined with itself using different aliases.
   Here, W1 represents the current day and W2 represents
   the previous day.

2. TABLE ALIASES:
   Aliases allow us to distinguish between two instances
   of the same table.

3. DATEDIFF():
   Calculates the difference between two dates using
   a specified date part.

   Syntax:
   DATEDIFF(datepart, start_date, end_date)

   Example:
   DATEDIFF(DAY, '2015-01-01', '2015-01-02') = 1

4. DATEADD():
   Adds or subtracts a specified interval from a date.

   Syntax:
   DATEADD(datepart, number, date)

   Example:
   DATEADD(DAY, 1, '2015-01-01') = '2015-01-02'

5. CALENDAR DATE COMPARISON:
   Comparing dates with a one-day difference ensures
   that we compare consecutive calendar days.
   It does not depend on consecutive IDs.

6. IMPORTANT DISTINCTION:
   DATEDIFF(DAY, start_date, end_date) calculates
   the number of day boundaries crossed.
   DATEADD(DAY, 1, date) directly calculates the
   next calendar date.

7. SQL SERVER:
   DATE() is not a built-in date conversion function
   in T-SQL. If recordDate is already of type DATE,
   no conversion is needed.
*/
