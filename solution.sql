-- Create Department table
CREATE TABLE Department (
    DepartmentID NUMBER PRIMARY KEY,
    DepartmentName VARCHAR2(50)
);

-- Create Faculty table
CREATE TABLE Faculty (
    FacultyID NUMBER PRIMARY KEY,
    FacultyName VARCHAR2(50),
    DepartmentID NUMBER,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

-- Create Course table
CREATE TABLE Course (
    CourseID NUMBER PRIMARY KEY,
    CourseName VARCHAR2(50),
    FacultyID NUMBER,
    FOREIGN KEY (FacultyID) REFERENCES Faculty(FacultyID)
);

-- Create Student table
CREATE TABLE Student (
    StudentID NUMBER PRIMARY KEY,
    StudentName VARCHAR2(50),
    CourseID NUMBER,
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);

-- Insert Department records
INSERT INTO Department VALUES (1, 'Computer Science');
INSERT INTO Department VALUES (2, 'Information Technology');

-- Insert Faculty records
INSERT INTO Faculty VALUES (101, 'Dr. Kumar', 1);
INSERT INTO Faculty VALUES (102, 'Dr. Priya', 2);

-- Insert Course records
INSERT INTO Course VALUES (201, 'BSc Computer Science', 101);
INSERT INTO Course VALUES (202, 'BSc Information Technology', 102);

-- Insert Student records
INSERT INTO Student VALUES (1001, 'Arun', 201);
INSERT INTO Student VALUES (1002, 'Rahul', 202);

-- Display tables
SELECT * FROM Department;
SELECT * FROM Faculty;
SELECT * FROM Course;
SELECT * FROM Student;
