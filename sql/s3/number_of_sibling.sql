WITH distinct_siblings AS (
    SELECT DISTINCT student_id, student_siblings_id 
    FROM siblings
    WHERE student_id <> student_siblings_id
)
SELECT student_id, COUNT(student_siblings_id) AS num_siblings
FROM distinct_siblings
GROUP BY student_id;
