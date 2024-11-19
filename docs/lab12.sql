-- Concatenate Course Name and Semester:
SELECT concat(course_name, ' - ',semester)
FROM courses;

--Find Courses with Labs on Fridays:
SELECT course_id,course_name,lab_time 
FROM courses
WHERE lab_time LIKE 'Fri %';

--Upcoming Assignments:
SELECT title, due_date
from assignments
WHERE due_date > CURRENT_TIMESTAMP
ORDER by due_date desc;

--Count Assignments by Status:
SELECT status, COUNT(*) AS total_count
FROM assignments
GROUP BY status;

--Longest Course Name:
SELECT course_name, length(course_name)
from courses
order by course_name DESC
limit 1;

--Uppercase Course Names:
SELECT title, due_date, UPPER(courses.course_name) as Course_Name
FROM assignments
INNER JOIN courses ON assignments.course_id = courses.course_id

--Assignment Due in September:
SELECT title, due_date
FROM assignments
where due_date like '%-09-%';

--Assignments with Missing Due Dates:
select *
from assignments
WHERE due_date ISNULL;
