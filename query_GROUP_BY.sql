-- Contare quanti iscritti ci sono stati ogni anno
SELECT COUNT(*) AS `student`, YEAR(`enrolment_date`) as `year` 
FROM `students` 
GROUP BY `year`;

--  Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT COUNT(`id`), `office_number` 
FROM `teachers` 
GROUP BY `office_number`;

-- 3. Calcolare la media dei voti di ogni appello d'esame
SELECT `exam_id`, ROUND(AVG(`vote`), 2) AS `average_vote` 
FROM `exam_student` 
GROUP BY `exam_id`

-- 4. Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT COUNT(*) AS `degree_courses`, `department_id` AS `single_department`
FROM `degrees`
GROUP BY `single_department`;