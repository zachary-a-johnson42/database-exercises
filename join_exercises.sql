--Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.

--
SELECT d.dept_name AS department, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE dm.to_date = '9999-01-01'

--Find the name of all departments currently managed by women.

SELECT d.dept_name AS department, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE dm.to_date = '9999-01-01' AND gender = 'F'

--Find the current titles of employees currently working in the Customer Service department.

SELECT title, COUNT(title) AS total FROM dept_emp AS dept_emp
    JOIN titles ON dept_emp.emp_no = titles.emp_no
    JOIN departments ON dept_emp.dept_no = departments.dept_no
    WHERE dept_emp.dept_no = 'd009'
    GROUP BY title
    ORDER BY title

--Find the current salary of all current managers.
SELECT DISTINCT d.dept_name AS department, CONCAT(e.first_name, ' ', e.last_name) AS full_name, salary
    FROM employees as e
         JOIN dept_manager AS dm
              ON dm.emp_no = e.emp_no
         JOIN departments AS d
              ON d.dept_no = dm.dept_no
        JOIN salaries AS sal
            ON sal.emp_no = dm.emp_no
    WHERE dm.to_date = '9999-01-01'
