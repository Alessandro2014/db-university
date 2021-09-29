-- 1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT `students`.`name`, `students`.`surname`, `students`.`degree_id`, `students`.`fiscal_code`, `degrees`.`name`, `degrees`.`department_id` 
FROM `students` 
INNER JOIN `degrees` 
ON `students`.`degree_id` = `degrees`.`id`
WHERE `degrees`.`name` = 'Corso di Laurea in Economia';


-- 2. Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze
SELECT `departments`.`id`, `departments`.`name` AS `name_department`, `departments`.`address`,  `degrees`.`department_id`, `degrees`.`name` AS `name_of_courses` 
FROM `departments` 
INNER JOIN `degrees` 
ON `departments`.`id` = `degrees`.`department_id`
WHERE `departments`.`name` LIKE '%Neuroscienze%';

-- 3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
SELECT `courses`.*, `teachers`.`name` AS `name_of_teacher`, `teachers`.`surname` AS `surname_of_teacher`
FROM `courses`
INNER JOIN `teachers`
ON `teachers`.`id` = `courses`.`id`
WHERE `teachers`.`name` = 'Fulvio'
AND`teachers`.`surname` = 'Amato';