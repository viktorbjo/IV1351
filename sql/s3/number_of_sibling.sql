WITH distinct_siblings AS (
    SELECT DISTINCT student_id, student_siblings_id 
    FROM siblings
    WHERE student_id <> student_siblings_id
)
SELECT student_id, COUNT(student_siblings_id) AS num_siblings
FROM distinct_siblings
GROUP BY student_id;

-- ////////////////////////

SELECT siblings AS nr_of_siblings, COUNT(*) AS nr_of_students
FROM (SELECT student.id, COUNT(siblings.student_id) AS siblings
FROM student
LEFT JOIN siblings ON student.id = siblings.student_id
GROUP BY student.id
ORDER BY student.id) AS sibling_counts
GROUP BY siblings
ORDER BY nr_of_siblings;

