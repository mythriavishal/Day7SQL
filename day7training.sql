use day7training;
CREATE TABLE students1 (id INT,class VARCHAR(10),name VARCHAR(50),marks INT);
INSERT INTO students1 VALUES(1, 'A', 'John', 85),(2, 'A', 'Sara', 92),(3, 'A', 'Mike', 78),(4, 'B', 'Anna', 88),(5, 'B', 'Tom', 90);

CREATE TABLE exam1 (student VARCHAR(50),subject VARCHAR(20),score INT);
INSERT INTO exam1 VALUES('Alice', 'Math', 90),('Bob', 'Math', 90),('Charlie', 'Math', 85),('David', 'Science', 88),('Eva', 'Science', 88);

CREATE TABLE employees11 (emp_name VARCHAR(50),department VARCHAR(20),salary INT);
INSERT INTO employees11 VALUES('Alex', 'IT', 7000),('Brian', 'IT', 7000),('Chris', 'IT', 6500),('Diana', 'HR', 6000),('Eva', 'HR', 5800);

CREATE TABLE orders (order_id INT,order_date DATE, amount INT);
INSERT INTO orders VALUES(1, '2024-01-01', 100),(2, '2024-01-02', 200),(3, '2024-01-03', 150),(4, '2024-01-04', 300);

CREATE TABLE monthly_sales (month VARCHAR(10), sales INT);
INSERT INTO monthly_sales VALUES('Jan', 5000),('Feb', 6000),('Mar', 5500),('Apr', 7000);

-- 1. Assign a unique row number to students in each class based on highest marks:

select name,class,marks, row_number() over (partition by class order by marks desc)as row_no from students1;

-- -- 2.Rank students in each class based on marks (with gaps).

select name,class,marks, rank() over (partition by class order by marks desc) as row_no from students1;

-- -- 3. Rank students in each class based on marks (without gaps).



