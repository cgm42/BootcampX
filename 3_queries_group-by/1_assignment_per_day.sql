SELECT day, count(assignments.*)
FROM assignments
GROUP BY day
ORDER By day