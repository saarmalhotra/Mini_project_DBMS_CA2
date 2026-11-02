# DBS Lab Relational Database Implementation

## Project Overview
This project models an academic management database designed to track students, courses, assignments, and submissions for the DBS Lab. It implements primary/foreign key relationships, cascading deletes, and complex multi-table SQL queries in **Oracle Live SQL**.

## Schema Structure
The relational model consists of 4 tables:
1. **Student**: Stores student demographics (`RollNo`, `Name`, `Email`, `Branch`, `Year`).
2. **Course**: Tracks course catalogs (`CourseID`, `Title`, `Credits`, `Department`).
3. **Assignment**: Links assignments to specific courses (`AssignmentID`, `Title`, `Description`, `DueDate`, `MaxMarks`, `CourseID`).
4. **Submission**: Logs student progress and scores (`SubmissionID`, `RollNo`, `AssignmentID`, `Marks`, `SubmittedAt`, `Status`).

## Project Files
- `01_schema.sql`: Data Definition Language (DDL) scripts to generate core schema and set foreign key constraints.
- `02_sample_data.sql`: Data Manipulation Language (DML) scripts containing mock record entries.
- `03_queries.sql`: Practical analytical queries (`JOIN`, `GROUP BY`, `AVG`, `SUM`) demonstrating real-world usability.

## How to Run in Oracle Live SQL
1. Sign in to [Oracle Live SQL](https://livesql.oracle.com).
2. Open a fresh **SQL Worksheet**.
3. Copy-paste and execute `01_schema.sql` to build the database structure.
4. Copy-paste and execute `02_sample_data.sql` to insert dummy data into tables.
5. Copy-paste and run statements from `03_queries.sql` to verify database functionality.
