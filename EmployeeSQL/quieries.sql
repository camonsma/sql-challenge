/*
List the employee number, last name, first name, sex, and salary of each employee (2 points)
*/
-- Perform an INNER JOIN on the two tables
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex,
salaries.salary
FROM employees
INNER JOIN salaries ON
salaries.emp_no=employees.emp_no
 order by employees.emp_no; 
/*
List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)
*/
SELECT first_name, last_name, hire_date
 from employees
  where hire_date > '1985-12-31'
   and hire_date < '1987-01-01'
    order by hire_date;
/*
List the manager of each department along with their department number,
department name, employee number, last name, and first name 
*/
SELECT dept_manager.emp_no, employees.last_name, employees.first_name, employees.sex,
salaries.salary
FROM employees
INNER JOIN salaries ON
dept_manager.emp_no=employees.emp_no
 order by employees.emp_no; 

select * from titles; --done
select * From employees; --done
select * From salaries; --done
select * From dept_emp; --done
select * from dept_manager; --done
select * From departments; --done
