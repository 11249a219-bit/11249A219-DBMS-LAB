Aim
To create a database and tables, insert records, and execute SQL queries to retrieve and manipulate the stored data.
Algorithm
1.	Create the required database and select it for use.
2.	Define the table with suitable columns and constraints.
3.	Insert the given records into the table.
4.	Execute the required SELECT queries using conditions and sorting where applicable.
5.	Perform the specified data manipulation operations.
6.	Display the results of each query.
Program
Exp1.sql
-- ============================================================
-- EXPERIMENT 1: CREATE DATABASE, TABLE AND PERFORM QUERIES
-- ============================================================
 
 
-- ============================================================
-- PART 1: CREATE DATABASE
-- ============================================================
 
CREATE DATABASE CollegeDB;
 
USE CollegeDB;
 
 
-- ============================================================
-- PART 2: CREATE STUDENT TABLE
-- ============================================================
 
CREATE TABLE Student(
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(30),
    Department VARCHAR(20),
    Age INT,
    CGPA DECIMAL(3,2)
);
 
 
-- ============================================================
-- PART 3: INSERT STUDENT RECORDS
-- ============================================================
 
INSERT INTO Student VALUES
(101, 'Anu', 'CSE', 20, 8.90);
 
INSERT INTO Student VALUES
(102, 'Bala', 'ECE', 21, 8.50);
 
INSERT INTO Student VALUES
(103, 'Charles', 'IT', 20, 9.10);
 
INSERT INTO Student VALUES
(104, 'Divya', 'CSE', 22, 8.70);
 
INSERT INTO Student VALUES
(105, 'Esha', 'AIDS', 21, 9.20);
 
 
-- ============================================================
-- PART 4: DISPLAY ALL STUDENT RECORDS
-- ============================================================
 
SELECT * FROM Student;
 
-- SAMPLE OUTPUT:
-- +-----------+-------------+------------+-----+------+
-- | StudentID | StudentName | Department | Age | CGPA |
-- +-----------+-------------+------------+-----+------+
-- | 101       | Anu         | CSE        | 20  | 8.90 |
-- | 102       | Bala        | ECE        | 21  | 8.50 |
-- | 103       | Charles     | IT         | 20  | 9.10 |
-- | 104       | Divya       | CSE        | 22  | 8.70 |
-- | 105       | Esha        | AIDS       | 21  | 9.20 |
-- +-----------+-------------+------------+-----+------+
 
 
-- ============================================================
-- PART 5: DISPLAY STUDENTS FROM CSE DEPARTMENT
-- ============================================================
 
SELECT * FROM Student
WHERE Department = 'CSE';
 
-- SAMPLE OUTPUT:
-- +-----------+-------------+------------+-----+------+
-- | StudentID | StudentName | Department | Age | CGPA |
-- +-----------+-------------+------------+-----+------+
-- | 101       | Anu         | CSE        | 20  | 8.90 |
-- | 104       | Divya       | CSE        | 22  | 8.70 |
-- +-----------+-------------+------------+-----+------+
 
 
-- ============================================================
-- PART 6: DISPLAY STUDENTS WITH CGPA ABOVE 8.8
-- ============================================================
 
SELECT * FROM Student
WHERE CGPA > 8.8;
 
-- SAMPLE OUTPUT:
-- +-----------+-------------+------------+-----+------+
-- | StudentID | StudentName | Department | Age | CGPA |
-- +-----------+-------------+------------+-----+------+
-- | 101       | Anu         | CSE        | 20  | 8.90 |
-- | 103       | Charles     | IT         | 20  | 9.10 |
-- | 105       | Esha        | AIDS       | 21  | 9.20 |
-- +-----------+-------------+------------+-----+------+
 
 
-- ============================================================
-- PART 7: SORT STUDENTS BY CGPA IN DESCENDING ORDER
-- ============================================================
 
SELECT * FROM Student
ORDER BY CGPA DESC;
 
-- SAMPLE OUTPUT:
-- +-----------+-------------+------------+-----+------+
-- | StudentID | StudentName | Department | Age | CGPA |
-- +-----------+-------------+------------+-----+------+
-- | 105       | Esha        | AIDS       | 21  | 9.20 |
-- | 103       | Charles     | IT         | 20  | 9.10 |
-- | 101       | Anu         | CSE        | 20  | 8.90 |
-- | 104       | Divya       | CSE        | 22  | 8.70 |
-- | 102       | Bala        | ECE        | 21  | 8.50 |
-- +-----------+-------------+------------+-----+------+
 
 
-- ============================================================
-- PART 8: COUNT TOTAL STUDENTS
-- ============================================================
 
SELECT COUNT(*) AS TotalStudents
FROM Student;
 
-- SAMPLE OUTPUT:
-- +---------------+
-- | TotalStudents |
-- +---------------+
-- | 5             |
-- +---------------+
 
 
-- ============================================================
-- PART 9: CALCULATE AVERAGE CGPA
-- ============================================================
 
SELECT AVG(CGPA)
FROM Student;
 
-- SAMPLE OUTPUT:
-- +-----------+
-- | AVG(CGPA) |
-- +-----------+
-- | 8.880000  |
-- +-----------+
 
 
-- ============================================================
-- RESULT
-- ============================================================
 
-- The CollegeDB database and Student table were created.
-- Student records were inserted successfully.
-- Filtering, sorting, counting and average CGPA queries
-- were performed successfully.
Output
SAMPLE OUTPUT:
+-----------+-------------+------------+-----+------+
| StudentID | StudentName | Department | Age | CGPA |
+-----------+-------------+------------+-----+------+
| 101       | Anu         | CSE        | 20  | 8.90 |
| 102       | Bala        | ECE        | 21  | 8.50 |
| 103       | Charles     | IT         | 20  | 9.10 |
| 104       | Divya       | CSE        | 22  | 8.70 |
| 105       | Esha        | AIDS       | 21  | 9.20 |
+-----------+-------------+------------+-----+------+
 
 
============================================================
PART 5: DISPLAY STUDENTS FROM CSE DEPARTMENT
============================================================
 
SAMPLE OUTPUT:
+-----------+-------------+------------+-----+------+
| StudentID | StudentName | Department | Age | CGPA |
+-----------+-------------+------------+-----+------+
| 101       | Anu         | CSE        | 20  | 8.90 |
| 104       | Divya       | CSE        | 22  | 8.70 |
+-----------+-------------+------------+-----+------+
 
 
============================================================
PART 6: DISPLAY STUDENTS WITH CGPA ABOVE 8.8
============================================================
 
SAMPLE OUTPUT:
+-----------+-------------+------------+-----+------+
| StudentID | StudentName | Department | Age | CGPA |
+-----------+-------------+------------+-----+------+
| 101       | Anu         | CSE        | 20  | 8.90 |
| 103       | Charles     | IT         | 20  | 9.10 |
| 105       | Esha        | AIDS       | 21  | 9.20 |
+-----------+-------------+------------+-----+------+
 
 
============================================================
PART 7: SORT STUDENTS BY CGPA IN DESCENDING ORDER
============================================================
 
SAMPLE OUTPUT:
+-----------+-------------+------------+-----+------+
| StudentID | StudentName | Department | Age | CGPA |
+-----------+-------------+------------+-----+------+
| 105       | Esha        | AIDS       | 21  | 9.20 |
| 103       | Charles     | IT         | 20  | 9.10 |
| 101       | Anu         | CSE        | 20  | 8.90 |
| 104       | Divya       | CSE        | 22  | 8.70 |
| 102       | Bala        | ECE        | 21  | 8.50 |
+-----------+-------------+------------+-----+------+
 
 
============================================================
PART 8: COUNT TOTAL STUDENTS
============================================================
 
SAMPLE OUTPUT:
+---------------+
| TotalStudents |
+---------------+
| 5             |
+---------------+
 
 
============================================================
PART 9: CALCULATE AVERAGE CGPA
============================================================
 
SAMPLE OUTPUT:
+-----------+
| AVG(CGPA) |
+-----------+
| 8.880000  |
+-----------+
 
 
============================================================
RESULT
============================================================
 
The CollegeDB database and Student table were created.
Student records were inserted successfully.
Filtering, sorting, counting and average CGPA queries
were performed successfully.
 
