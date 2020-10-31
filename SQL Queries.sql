-- 1.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e LEFT JOIN salaries AS s
ON e.emp_no=s.emp_no;

-- 2.
SELECT first_name, last_name, hire_date
FROM employees
WHERE DATE_PART('year',hire_date) = 1986;

-- 3.
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager AS dm
INNER JOIN departments AS d
	ON dm.dept_no=d.dept_no
LEFT JOIN employees AS e
	ON dm.emp_no=e.emp_no;

-- 4.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de
	ON e.emp_no=de.emp_no
INNER JOIN departments AS d
	ON de.dept_no=d.dept_no;

-- 5.
SELECT * FROM employees
WHERE first_name = 'Hercules' 
AND last_name like 'B%';

-- 6.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
LEFT JOIN dept_emp AS de
	ON e.emp_no=de.emp_no
INNER JOIN departments AS d
	ON de.dept_no=d.dept_no
WHERE d.dept_name='Sales';

-- 7.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
LEFT JOIN dept_emp AS de
	ON e.emp_no=de.emp_no
INNER JOIN departments AS d
	ON de.dept_no=d.dept_no
WHERE d.dept_name in ('Sales','Development');

-- 8.
SELECT last_name, COUNT(*) AS frequency_count
FROM employees
GROUP BY last_name
ORDER BY frequency_count DESC;