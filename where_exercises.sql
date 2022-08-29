--Selecting all employees with specified first names
SELECT * FROM employees
    WHERE first_name = 'Irina'
        OR first_name = 'Vidya'
            OR first_name = 'Maya';

--Selecting employees whose last names start with E.
SELECT * FROM employees
    WHERE last_name LIKE 'E%';

--Selecting employees with 'q' in their last name
SELECT * FROM employees
    WHERE last_name LIKE '%q%';

--Select all employees with specific name that are also male

SELECT * FROM employees
    WHERE first_name = 'Irina'
            AND gender = 'M'
        OR first_name = 'Vidya'
            AND gender = 'M'
        OR first_name = 'Maya'
            AND gender = 'M';

--Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT * FROM employees

--Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows

--Find all employees with a 'q' in their last name but not 'qu' — 547 rows.