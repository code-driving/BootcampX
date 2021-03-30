SELECT avg(total_students) as average_students
FROM (
  SELECT count(students) as total_students, cohorts.name as cohort_name
  FROM students
  JOIN cohorts on cohorts.id = cohort_id
  GROUP BY cohorts.name
) as totals_table;

-- SELECT avg(totals_table.total_students) as average_students;
-- SELECT assignments.name
-- FROM assignments 
-- WHERE id NOT IN
-- (
--   SELECT assignment_id
--   FROM assignment_submissions
--   JOIN students ON students.id = student_id
--   WHERE students.name = 'Ibrahim Schimmel'
-- );