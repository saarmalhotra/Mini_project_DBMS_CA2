-- Insert Sample Students
INSERT INTO Student VALUES ('S101', 'Aarav Sharma', 'aarav.sharma@example.com', 'CSE', 3);
INSERT INTO Student VALUES ('S102', 'Ananya Verma', 'ananya.v@example.com', 'CSE', 3);
INSERT INTO Student VALUES ('S103', 'Rohan Mehta', 'rohan.m@example.com', 'ECE', 2);
INSERT INTO Student VALUES ('S104', 'Priya Patel', 'priya.p@example.com', 'IT', 4);

-- Insert Sample Courses
INSERT INTO Course VALUES ('CS201', 'Relational Database Systems', 4, 'Computer Science');
INSERT INTO Course VALUES ('CS202', 'Data Structures & Algorithms', 4, 'Computer Science');
INSERT INTO Course VALUES ('EC101', 'Digital Electronics', 3, 'Electronics');

-- Insert Sample Assignments
INSERT INTO Assignment VALUES ('A1', 'RDB Schema Design', 'Design tables and ER diagram for CAI Lab', DATE '2026-03-10', 100, 'CS201');
INSERT INTO Assignment VALUES ('A2', 'SQL Queries & Joins', 'Write complex SELECT and JOIN queries', DATE '2026-03-20', 50, 'CS201');
INSERT INTO Assignment VALUES ('A3', 'Binary Trees Implementation', 'Code BST traversal in C++', DATE '2026-03-15', 100, 'CS202');

-- Insert Sample Submissions
INSERT INTO Submission VALUES ('SUB1', 'S101', 'A1', 92, DATE '2026-03-08', 'Submitted');
INSERT INTO Submission VALUES ('SUB2', 'S102', 'A1', 88, DATE '2026-03-09', 'Submitted');
INSERT INTO Submission VALUES ('SUB3', 'S101', 'A2', 45, DATE '2026-03-19', 'Submitted');
INSERT INTO Submission VALUES ('SUB4', 'S103', 'A3', 75, DATE '2026-03-16', 'Late Submission');
INSERT INTO Submission VALUES ('SUB5', 'S104', 'A1', 0, NULL, 'Pending');

COMMIT;
