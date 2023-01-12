SELECT
  EXTRACT(MONTH FROM scheduled_time_slot) AS month,
  COUNT(*) AS total_lessons,
  SUM(CASE WHEN lesson_type = 'individual' THEN 1 ELSE 0 END) AS individual_lessons,
  SUM(CASE WHEN lesson_type = 'group' THEN 1 ELSE 0 END) AS group_lessons,
  SUM(CASE WHEN lesson_type = 'ensemble' THEN 1 ELSE 0 END) AS ensemble_lessons
FROM (
  SELECT il.student_id, il.available_time AS scheduled_time_slot, 'individual' AS lesson_type
  FROM individual_lesson il
  UNION ALL 
  SELECT gl.student_id, gl.scheduled_time_slot, 'group' AS lesson_type
  FROM group_lesson gl
  UNION ALL 
   SELECT e.instructor_id, e.scheduled_time_slot, 'ensemble' AS lesson_type
  FROM ensemble e
 ) AS lessons
WHERE EXTRACT (YEAR FROM scheduled_time_slot) = 2022
GROUP BY month;
