-- Contare quanti iscritti ci sono stati ogni anno
SELECT COUNT(*) AS `student`, YEAR(`enrolment_date`) as `year` 
FROM `students` 
GROUP BY `year`;
