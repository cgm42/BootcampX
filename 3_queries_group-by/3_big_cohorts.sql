SELECT cohorts.name, count(students.*) as student_count
FROM cohorts JOIN students ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
HAVING count(students.*) > 17
ORDER BY count(students.*)