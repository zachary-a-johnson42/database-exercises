SELECT * FROM employees
    WHERE first_name = 'Irena'
       OR first_name = 'Vidya'
       OR first_name = 'Maya'
        ORDER BY last_name, first_name;

SELECT * FROM employees
    WHERE last_name LIKE 'E%'
    ORDER BY emp_no;
