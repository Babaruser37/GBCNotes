
-- Assignemnt for a specific course 
SELECT title, due_date
FROM assignments
WHERE course_id =='COMP1234';

-- Earliest Assignment Due Date
SELECT title, min(due_date)
FROM assignments

-- Latest Assignment Due Date
SELECT title,due_date
FROM assignments
ORDER by due_date DESC
LIMIT 1;

-- Assignments Due on a Specific Date
SELECT title, course_id
FROM assignments
WHERE due_date='2024-10-08';

-- Find All Assignments Due in October
SELECT title, course_id
FROM assignments
WHERE due_date like '2024-10%';

-- Find the Most Recent Completed Assignment
SELECT title,due_date,status
FROM assignments
where status='Completed'
ORDER by due_date ASC

-- Count of "Not Started" Assignments
SELECT COUNT(status)
FROM assignments

-- Find Courses with Labs on Tuesday
SELECT course_name, course_id
FROM courses
WHere lab_time LIKE 'Tue%';

