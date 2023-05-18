CREATE TABLE titles (
  title_id varchar(5) PRIMARY KEY,
  title VARCHAR(30) NOT NULL
);


Create table employees ( 
	emp_no varchar(10) PRIMARY KEY,
	emp_title_id varchar(5) NOT NULL,
	birth_date DATE NOT NULL,
	first_name varchar(200),
	last_name varchar(300),
	sex Varchar(1),
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

Create table salaries ( 	
	emp_no varchar(10) not null,
	salary integer not null,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


Create table departments ( 	
	dept_no varchar(4) PRIMARY KEY,
	dept_name varchar(30) not null
);

Create table dept_emp ( 	
	emp_no varchar(10) not null,
	dept_no varchar(4) not null,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY(emp_no,dept_no)
);

Create table dept_manager ( 
	dept_no varchar(4) not null,
	emp_no varchar(10) not null,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY(dept_no,emp_no)
);

select * From departments;
select * From dept_emp;
select * from dept_manager;
select * From salaries;
select * From employees;
select * from titles;