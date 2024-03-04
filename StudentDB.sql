-- Create a database
CREATE DATABASE StudentDB;

-- Use the created database
USE StudentDB;

-- Create a table for students
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    BirthDate DATE,
    Gender VARCHAR(10)
);

-- Insert some sample data into the Students table
INSERT INTO Students (StudentID, FirstName, LastName, BirthDate, Gender)
VALUES
    (1, 'John', 'Doe', '2000-01-15', 'Male'),
    (2, 'Jane', 'Smith', '2001-05-22', 'Female'),
    (3, 'Bob', 'Johnson', '1999-11-10', 'Male');

-- Create a table for courses
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100)
);

-- Insert some sample data into the Courses table
INSERT INTO Courses (CourseID, CourseName)
VALUES
    (101, 'Mathematics'),
    (102, 'History'),
    (103, 'Science');

-- Create a table for grades
CREATE TABLE Grades (
    GradeID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    Grade DECIMAL(3, 2),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

-- Insert some sample data into the Grades table
INSERT INTO Grades (GradeID, StudentID, CourseID, Grade)
VALUES
    (1, 1, 101, 85.5),
    (2, 1, 102, 92.0),
    (3, 2, 101, 78.5),
    (4, 2, 103, 90.0),
    (5, 3, 102, 88.0),
    (6, 3, 103, 95.5);
