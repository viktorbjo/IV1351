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


-- Retrieve the month of the lesson, the total number of lessons,
-- the number of individual lessons, the number of group lessons,
-- and the number of ensemble lessons given each month during the year 2022.
SELECT
  -- Extract the month from the scheduled time slot of the lesson.
  EXTRACT(MONTH FROM scheduled_time_slot) AS month,
  -- Count the number of lessons given each month.
  COUNT(*) AS total_lessons,
  -- Count the number of individual lessons given each month.
  SUM(CASE WHEN lesson_type = 'individual' THEN 1 ELSE 0 END) AS individual_lessons,
  -- Count the number of group lessons given each month.
  SUM(CASE WHEN lesson_type = 'group' THEN 1 ELSE 0 END) AS group_lessons,
  -- Count the number of ensemble lessons given each month.
  SUM(CASE WHEN lesson_type = 'ensemble' THEN 1 ELSE 0 END) AS ensemble_lessons
FROM (
  -- Retrieve the individual lessons.
  SELECT il.student_id, il.available_time AS scheduled_time_slot, 'individual' AS lesson_type
  FROM individual_lesson il
  -- Retrieve the group lessons.
  UNION ALL 
  SELECT gl.student_id, gl.scheduled_time_slot, 'group' AS lesson_type
  FROM group_lesson gl
  -- Retrieve the ensemble lessons.
  UNION ALL 
   SELECT e.instructor_id, e.scheduled_time_slot, 'ensemble' AS lesson_type
  FROM ensemble e
 ) AS lessons
-- Filter the results to only include lessons that were given during the year 2022.
WHERE EXTRACT (YEAR FROM scheduled_time_slot) = 2022
-- Group the results by month.
GROUP BY month;
