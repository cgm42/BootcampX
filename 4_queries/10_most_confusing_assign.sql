SELECT assignments.id, assignments.day, assignments.chapter, assignments.name, count(assistance_requests.id) as total_requests
FROM assistance_requests
JOIN assignments ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY total_requests DESC