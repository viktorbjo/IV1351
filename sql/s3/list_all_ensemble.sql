SELECT
  id,
  scheduled_time_slot,
  target_genre,
  instructor_id,
  school_id,
  EXTRACT(DOW FROM scheduled_time_slot) AS weekday,
  CASE
    WHEN (max_student_req - min_student_req) >= 2 THEN 'has more seats left'
    WHEN (max_student_req - min_student_req) = 1 THEN 'has 1-2 seats left'
    ELSE 'is full booked'
  END AS seat_status
FROM ensemble
WHERE scheduled_time_slot BETWEEN CURRENT_TIMESTAMP AND CURRENT_TIMESTAMP + INTERVAL '7 days'
ORDER BY target_genre, weekday;
