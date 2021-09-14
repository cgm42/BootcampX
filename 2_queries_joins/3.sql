SELECT students.name as student, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = assignment_submissions.student_id
WHERE students.end_date IS null
GROUP BY students.name;