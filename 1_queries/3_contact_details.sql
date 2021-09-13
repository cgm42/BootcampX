SELECT name, id, cohort_id
FROM students
WHERE phone IS null 
OR email is null