SELECT students.name as student, AVG(assignment_submissions.duration) AS average_assigment_duration, AVG(assignments.duration) AS average_estimated_duration
FROM students
JOIN assignment_submissions  
ON student_id = students.id
JOIN assignments
ON assignment_id  = assignments.id
WHERE end_date IS NULL
GROUP BY students.name
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY average_assigment_duration;
