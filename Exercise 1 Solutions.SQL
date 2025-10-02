...Question 6
SELECT first_name,
last_name,
department,
salary
FROM employees
WHERE department = 'Finance'
AND salary > 58000;
...Question 7
SELECT first_name,
last_name,
department
FROM employees
WHERE department = 'HR' OR department = 'Marketing';
...Question 8
SELECT first_name, last_name, department
FROM employees
WHERE NOT department = 'IT';
...Question 9
SELECT first_name,
last_name,
department
FROM employees
WHERE department IN ('HR', 'IT', 'Finance');
