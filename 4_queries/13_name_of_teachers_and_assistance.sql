SELECT DISTINCT teachers.name, cohorts.name, count(assistance_requests.*) as total_assistances
FROM teachers
JOIN assistance_requests ON teachers.id = teacher_id
JOIN students ON assistance_requests.student_id = students.id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY teachers.name, cohorts.name
HAVING cohorts.name = 'JUL02'
ORDER BY total_assistances DESC