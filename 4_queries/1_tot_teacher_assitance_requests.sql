SELECT name, count(assistance_requests.id) as total_assistances
FROM teachers 
JOIN assistance_requests ON teachers.id = teacher_id
WHERE teachers.name= 'Waylon Boehm'
GROUP BY name