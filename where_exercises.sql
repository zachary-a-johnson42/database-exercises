--Selecting all employees with specified first names 709 rows
SELECT * FROM employees
    WHERE first_name = 'Irena'
        OR first_name = 'Vidya'
            OR first_name = 'Maya';

--Selecting employees whose last names start with E. 7,330 rows.
SELECT * FROM employees
    WHERE last_name LIKE 'E%';

--Selecting employees with 'q' in their last name 1,873 rows.
SELECT * FROM employees
    WHERE last_name LIKE '%q%';

--Select all employees with specific name that are also male 441 rows.
SELECT * FROM employees
    WHERE first_name = 'Irena'
            AND gender = 'M'
        OR first_name = 'Vidya'
            AND gender = 'M'
        OR first_name = 'Maya'
            AND gender = 'M';

--Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT * FROM employees
    WHERE last_name LIKE "E%"
        OR RIGHT(last_name, 1) = 'e';

--Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows
SELECT * FROM employees
WHERE last_name LIKE "E%"
   AND RIGHT(last_name, 1) = 'e';

--Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT * FROM employees
    WHERE last_name LIKE '%q%'
        AND last_name NOT LIKE '%qu%';
