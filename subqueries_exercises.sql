--Find all the employees with the same hire date as employee 101010 using a subquery. 69 ROWS

SELECT emp_no, hire_date FROM employees
    WHERE hire_date = (SELECT hire_date FROM employees WHERE  emp_no = '101010')

--Find all the titles held by all employees with the first name Aamod.  314 total titles, 6 unique titles

SELECT first_name, title, COUNT(title) AS total FROM employees
    JOIN titles ON employees.emp_no = titles.emp_no
    WHERE first_name = 'Aamod'
    GROUP BY title
--Subquery

SELECT title FROM titles
    WHERE emp_no IN (
        SELECT emp_no FROM employees
            WHERE first_name = 'Aamod'
              )

-- Find all the current department managers that are female.
SELECT first_name, last_name FROM employees
    WHERE emp_no IN (
        SELECT emp_no FROM dept_manager
                      WHERE gender = 'F'
                      AND to_date = '9999-01-01'
        )

--BONUS

--Find all the department names that currently have female managers.

SELECT dept_name FROM departments
    WHERE dept_no IN (
        SELECT dept_no FROM dept_manager
                       WHERE to_date = '9999-01-01'
                       AND emp_no IN (
                           SELECT emp_no FROM employees
                                WHERE gender = 'F'
                           )
        )