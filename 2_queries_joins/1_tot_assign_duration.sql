SELECT sum(duration)
FROM assignment_submissions JOIN students on assignment_submissions.student_id = students.id 
WHERE students.name = 'Ibrahim Schimmel'
