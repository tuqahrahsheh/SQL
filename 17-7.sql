use master 
create database  School


 create table Teachers(
  teacher_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20),
    hire_date DATE);


	CREATE TABLE TeacherDetails (
    teacher_id INT PRIMARY KEY,
    address VARCHAR(255),
    birthdate DATE,
    qualification VARCHAR(100),
    salary DECIMAL(10,2),
    FOREIGN KEY (teacher_id) REFERENCES Teachers(teacher_id));



 create table  Courses(
 course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    description TEXT,
    credits INT
 );


 

 CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20),
    birthdate DATE
);
INSERT INTO Teachers 
VALUES
    (1, 'tuqa', 'h', 'tuqa@email.com', '857398', '2020'),
    (2, 'nour', 'S', 'nour@email.com', '567890', '2018'),
    (3, 'anwar', 'h', 'anwar@email.com', '0987654', '2019'),
    (4, 'yazan', 'hr', 'yazan@email.com', '1234567', '2021'),
    (5, 'rashed', 'jl', 'rashed@email.com', '876543456', '2017');


	INSERT INTO TeacherDetails 
VALUES
    (1, 'x', '1980', 'Masters in Education', 55000.00),
    (2, 'y, State', '1975', 'PhD in Physics', 65000.00),
    (3, 'v', '1988', 'Bachelor in Literature', 50000.00),
    (4, 'b', '1992', 'Masters in Mathematics', 60000.00),
    (5, 'g', '1983', 'Bachelor in History', 48000.00);



	INSERT INTO Courses 
VALUES
    (1, 'Mathematics', 'Introduction to basic mathematics concepts', 3),
    (2, 'Physics', 'Advanced study of physical forces and energy', 4),
    (3, 'Literature', 'Analysis of classic and modern literature', 3),
    (4, 'History', 'Survey of major historical events', 3),
    (5, 'Computer Science', 'Introduction to programming and algorithms', 4);


	INSERT INTO Students (student_id, first_name, last_name, email, phone, birthdate)
VALUES
    (1, 'Sarah', 'v', 'sarah@email.com', '111-222-3333', '2000'),
    (2, 'Ahmad', 'x', 'ahmad@email.com', '333-444-5555', '2001'),
    (3, 'Eman', 'u', 'eman@email.com', '666-777-8888', '1999'),
    (4, 'Jana', 'k', 'jana@email.com', '888-999-0000', '2002'),
    (5, 'waleed', 'l', 'waleed@email.com', '222-333-4444', '2003');

	  select * from Students ;
