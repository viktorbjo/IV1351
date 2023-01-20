WITH distinct_siblings AS (
    SELECT DISTINCT student_id, student_siblings_id 
    FROM siblings
    WHERE student_id <> student_siblings_id
)
SELECT student_id, COUNT(student_siblings_id) AS num_siblings
FROM distinct_siblings
GROUP BY student_id;

-- ////////////////////////

SELECT COALESCE(sibs.siblings, 0) AS nr_of_siblings, COUNT(student.id) AS nr_of_students
FROM student
LEFT JOIN (SELECT student_id, COUNT(student_id) AS siblings
           FROM siblings
           GROUP BY student_id) AS sibs ON student.id = sibs.student_id
GROUP BY nr_of_siblings
ORDER BY nr_of_siblings;
