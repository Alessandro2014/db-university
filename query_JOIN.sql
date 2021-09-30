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

-- 4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
-- Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
-- SELECT `movies`.*, `categories`.* FROM `movies` LEFT JOIN `categories` ON `movies`.`category_id` = `categories`.`id`
-- `students`.`degree_id`,`courses`.`degree_id`
SELECT `students`.`name`, `students`.`surname`, `students`.`fiscal_code`, `courses`.`name` AS `nome_corso`, `degrees`.`name` AS `nome_degree`
FROM `degrees` 
LEFT JOIN `students` 
ON `degrees`.`id` = `students`.`degree_id`
JOIN `courses`
ON `degrees`.`id` = `courses`.`degree_id`
WHERE `students`.`degree_id` = `courses`.`degree_id`
-- 5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti
SELECT `teachers`.`name` AS `teacher_name`, `teachers`.`surname` AS `teacher_surname`, `teachers`.`phone`, `degrees`.*, `courses`.`name` AS `course_name` 
FROM `degrees`
JOIN `courses` ON `degrees`.`id` = `courses`.`degree_id`
JOIN `teachers` ON `teachers`.`id` = `courses`.`id`;

-- 6. Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)
SELECT `teachers`.*, `departments`.`name` AS `nome_dipartimento` 
FROM `courses`
JOIN `teachers` ON `courses`.`id` = `teachers`.`id`
JOIN `degrees` ON `courses`.`degree_id` = `degrees`.`id`
JOIN `departments`ON `degrees`.`department_id` = `departments`.`id`
WHERE `departments`.`name` = 'Dipartimento di Matematica'