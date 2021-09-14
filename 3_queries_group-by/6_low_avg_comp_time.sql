SELECT students.name, avg(assignment_submissions.duration), avg(assignments.duration)
FROM students 
JOIN assignment_submissions on students.id = student_id
JOIN assignments ON assignments.id = assignment_submissions.assignment_id
WHERE students.end_date IS null
GROUP BY students.name
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
order by avg(assignment_submissions.duration)