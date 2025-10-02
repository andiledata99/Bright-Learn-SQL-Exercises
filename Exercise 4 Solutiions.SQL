...Question 1
SELECT
A.student_id,
student_name,
grade
FROM students AS A
INNER JOIN grades AS B
ON A.student_id = B.student_id;
...Question 2
SELECT A.emp_id,
emp_name,
dept_name
FROM employees AS A
LEFT JOIN departments AS B
ON A.emp_id = B.emp_id;
...Question 3
SELECT COALESCE(A.product_id, B.product_id) AS product_id,
product_name,
quantity
FROM products AS A
FULL OUTER JOIN sales AS B
ON A.product_id = B.product_id;
...Question 4
SELECT order_id,
A.customer_id,
amount,
customer_name,
 CASE
WHEN B.customer_id IS NOT NULL THEN 'Returning Customer'
ELSE 'New Customer'
 END AS customer_type
FROM orders AS A
LEFT JOIN customers AS B
ON A.customer_id = B.customer_id;
...Question 5
SELECT A.region_id,
region_name,
SUM(amount) AS total_sales
FROM regions AS A
LEFT JOIN sales AS B
ON A.region_id = B.region_id
GROUP BY A.region_id, region_name;
...Question 6
SELECT A.student_id,
name,
days_present,
 CASE
 WHEN days_present >= 15 THEN 'Excellent'
 WHEN days_present BETWEEN 6 AND 14 THEN 'Needs Improvement'
 WHEN days_present <= 5 THEN 'Poor Attendance'
 ELSE 'No Record'
 END AS attendance_status
FROM students AS A
LEFT JOIN attendance AS B
ON A.student_id = B.student_id;
...Question 7
SELECT A.project_id,
name,
COUNT(task_id) AS task_count
FROM projects AS A
INNER JOIN tasks AS B
ON A.project_id = B.project_id
GROUP BY A.project_id, name;
...Question 8
SELECT COALESCE(A.cust_id, B.cust_id) AS cust_id,
 order_total,
return_total,
 CASE
 WHEN return_total IS NOT NULL THEN 'Returned'
 ELSE 'No Return'
 END AS return_status
FROM orders AS A
FULL OUTER JOIN returns AS B
ON A.cust_id = B.cust_id
WHERE order_total > 100;
Question 9
SELECT A.user_id,
name,
COUNT(login_date) AS login_count
FROM users AS A
LEFT JOIN logins AS B
ON A.user_id = B.user_id
GROUP BY A.user_id, name
ORDER BY login_count DESC;
...Question 10 
SELECT A.teacher_id,
teacher_name,
 COALESCE(subject_name, 'No Subject Assigned') AS subject_name
FROM teachers AS A
LEFT JOIN subjects AS B
ON A.teacher_id = B.teacher_id
ORDER BY teacher_name ASC;



