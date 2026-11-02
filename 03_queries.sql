-- Query 1: Comprehensive Submission Report Across All Tables
SELECT 
    s.RollNo,
    s.Name AS Student_Name,
    c.Title AS Course_Title,
    a.Title AS Assignment_Title,
    sub.Marks,
    a.MaxMarks,
    sub.Status
FROM Submission sub
JOIN Student s ON sub.RollNo = s.RollNo
JOIN Assignment a ON sub.AssignmentID = a.AssignmentID
JOIN Course c ON a.CourseID = c.CourseID;

-- Query 2: Course Performance & Average Marks Calculation
SELECT 
    c.CourseID,
    c.Title AS Course_Name,
    COUNT(sub.SubmissionID) AS Total_Submissions,
    ROUND(AVG(sub.Marks), 2) AS Average_Score
FROM Course c
JOIN Assignment a ON c.CourseID = a.CourseID
JOIN Submission sub ON a.AssignmentID = sub.AssignmentID
GROUP BY c.CourseID, c.Title;

-- Query 3: Identify Students with Pending or Late Submissions
SELECT 
    s.RollNo,
    s.Name,
    s.Email,
    a.Title AS Assignment_Title,
    a.DueDate,
    sub.Status
FROM Student s
JOIN Submission sub ON s.RollNo = sub.RollNo
JOIN Assignment a ON sub.AssignmentID = a.AssignmentID
WHERE sub.Status IN ('Pending', 'Late Submission');

-- Query 4: Total Marks Scored by Each Student
SELECT 
    s.RollNo,
    s.Name,
    s.Branch,
    SUM(sub.Marks) AS Total_Marks_Obtained
FROM Student s
JOIN Submission sub ON s.RollNo = sub.RollNo
GROUP BY s.RollNo, s.Name, s.Branch
ORDER BY Total_Marks_Obtained DESC;
