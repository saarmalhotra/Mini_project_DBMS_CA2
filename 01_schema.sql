-- Clean up existing tables if re-running script
DROP TABLE Submission CASCADE CONSTRAINTS;
DROP TABLE Assignment CASCADE CONSTRAINTS;
DROP TABLE Course CASCADE CONSTRAINTS;
DROP TABLE Student CASCADE CONSTRAINTS;

-- 1. Create Student Table
CREATE TABLE Student (
    RollNo VARCHAR2(10) PRIMARY KEY,
    Name VARCHAR2(50) NOT NULL,
    Email VARCHAR2(100),
    Branch VARCHAR2(50),
    Year NUMBER(4)
);

-- 2. Create Course Table
CREATE TABLE Course (
    CourseID VARCHAR2(10) PRIMARY KEY,
    Title VARCHAR2(100) NOT NULL,
    Credits NUMBER(2),
    Department VARCHAR2(50)
);

-- 3. Create Assignment Table
CREATE TABLE Assignment (
    AssignmentID VARCHAR2(10) PRIMARY KEY,
    Title VARCHAR2(100),
    Description VARCHAR2(255),
    DueDate DATE,
    MaxMarks NUMBER(5),
    CourseID VARCHAR2(10),
    CONSTRAINT fk_assignment_course FOREIGN KEY (CourseID) 
        REFERENCES Course (CourseID) ON DELETE CASCADE
);

-- 4. Create Submission Table
CREATE TABLE Submission (
    SubmissionID VARCHAR2(10) PRIMARY KEY,
    RollNo VARCHAR2(10),
    AssignmentID VARCHAR2(10),
    Marks NUMBER(5),
    SubmittedAt DATE,
    Status VARCHAR2(20),
    CONSTRAINT fk_submission_student FOREIGN KEY (RollNo) 
        REFERENCES Student (RollNo),
    CONSTRAINT fk_submission_assignment FOREIGN KEY (AssignmentID) 
        REFERENCES Assignment (AssignmentID) ON DELETE CASCADE
);
