SELECT
  instructor_id,
  SUM(lesson_count) AS total_lessons
FROM (
  SELECT
    instructor_id,
    COUNT(*) AS lesson_count
  FROM individual_lesson
  WHERE EXTRACT(MONTH FROM available_time) = EXTRACT(MONTH FROM CURRENT_TIMESTAMP)
  GROUP BY instructor_id
  UNION ALL
  SELECT
    instructor_id,
    COUNT(*) AS lesson_count
  FROM group_lesson
  WHERE EXTRACT(MONTH FROM scheduled_time_slot) = EXTRACT(MONTH FROM CURRENT_TIMESTAMP)
  GROUP BY instructor_id
  UNION ALL
  SELECT
    instructor_id,
    COUNT(*) AS lesson_count
  FROM ensemble
  WHERE EXTRACT(MONTH FROM scheduled_time_slot) = EXTRACT(MONTH FROM CURRENT_TIMESTAMP)
  GROUP BY instructor_id
) AS lesson_counts
GROUP BY instructor_id
HAVING SUM(lesson_count) > 1
ORDER BY total_lessons DESC;
