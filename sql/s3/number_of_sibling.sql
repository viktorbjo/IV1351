WITH distinct_siblings AS (
    SELECT DISTINCT student_id, student_siblings_id 
    FROM siblings
    WHERE student_id <> student_siblings_id
)
SELECT student_id, COUNT(student_siblings_id) AS num_siblings
FROM distinct_siblings
GROUP BY student_id;

-- ////////////////////////

select sibling.siblings as nr_of_siblings, COUNT(*) as nr_of_students
from (select id, COUNT(student_id) siblings
from student
left join siblings s on student.id = s.student_id
group by id
order by id) as sibling
group by siblings
order by nr_of_siblings;

