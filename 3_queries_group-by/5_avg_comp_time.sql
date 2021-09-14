










SELECT students.name, AVG(assignment_submissions.duration) as average_assignment_duration 
FROM students JOIN assignment_submissions on students.id = student_id
WHERE students.end_date is null
GROUP BY students.name
ORDER BY AVG(assignment_submissions.duration) DESC

