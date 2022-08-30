--List the first 10 distinct last name sorted in descending order. Your result should look like this:
SELECT DISTINCT last_name FROM employees
    ORDER BY last_name DESC
        LIMIT 10;

--Create a query to get the top 5 salaries and display just the employees number from the salaries table. The employee number results should be:
SELECT DISTINCT emp_no, salary FROM salaries
    ORDER BY salary DESC
    LIMIT 5 OFFSET 45;
