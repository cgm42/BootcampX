SELECT day, count(assignments.*), sum(assignments.duration)
FROM assignments
GROUP By assignments.day
ORDER BY day 