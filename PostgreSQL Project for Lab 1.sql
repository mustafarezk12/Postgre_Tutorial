CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) ,
    last_name VARCHAR(50)  ,
    birth_date DATE  

);

CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100)  ,
    course_code VARCHAR(10) 
);

CREATE TABLE enrollments (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INT REFERENCES students(student_id),
    course_id INT REFERENCES courses(course_id),  

    enrollment_date DATE
);
---------------------------------
INSERT INTO students (first_name, last_name, birth_date)
VALUES 
('John', 'Doe', '2000-01-15'),
('Jane', 'Smith', '1999-03-22'),
('Alice', 'Johnson', '2001-07-30'),
('Bob', 'Brown','2000-12-05');

INSERT INTO courses (course_name, course_code)
VALUES 
('Database Systems', 'CS101'),
('Algorithms', 'CS102'),
('Data Structures', 'CS103'),
('Operating Systems','CS104');

INSERT INTO enrollments (student_id, course_id, enrollment_date)
VALUES 
(1, 1, '2024-08-01'),
(1, 2, '2024-08-01'),
(2, 1, '2024-08-01'),
(3, 3, '2024-08-01'),
(4, 4, '2024-08-01'),
(4, 1,'2024-08-01');

------------------------------
SELECT *
FROM students
------------------------------
SELECT student_id AS student_number,
       first_name || ' ' || last_name AS full_name,
       age(birth_date) AS age
FROM students;
------------------------------
SELECT student_id AS student_number,
       first_name || ' ' || last_name AS full_name,
       age(birth_date) AS age
FROM students;
ORDER BY last_name;
------------------------------
SELECT DISTINCT *
FROM enrollments;
