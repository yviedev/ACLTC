SELECT * FROM employees WHERE last_name LIKE 'Z%';
SELECT first_name, last_name FROM employees WHERE last_name LIKE 'Mi%';
SELECT * FROM employees ORDER BY hire_date DESC LIMIT 5;
SELECT * FROM employees WHERE gender = 'F' ORDER BY hire_date DESC LIMIT 5;
SELECT first_name, last_name FROM employees WHERE last_name <> 'Aingworth';
SELECT * FROM employees WHERE first_name = 'Mario' or first_name = 'Luigi';
SELECT * FROM employees WHERE first_name = 'Arif' AND hire_date BETWEEN '1/1/1988' and '1992-12-31';
SELECT first_name, last_name, birth_date FROM employees ORDER BY birth_date LIMIT 5;
SELECT COUNT(*) FROM salaries WHERE salary > '100000' AND from_date = '1992-06-24' OR salary > '100000' AND to_date = '1992-06-24';