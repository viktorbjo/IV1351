SELECT
  no_of_siblings,
  COUNT(*) AS num_students
FROM (
  SELECT
    student_id,
    COUNT(*) AS no_of_siblings
  FROM siblings
  GROUP BY student_id
) AS sibling_counts
GROUP BY no_of_siblings
ORDER BY no_of_siblings;