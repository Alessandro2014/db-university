-- Contare quanti iscritti ci sono stati ogni anno
SELECT COUNT(*) AS `student`, YEAR(`enrolment_date`) as `year` 
FROM `students` 
GROUP BY `year`;

--  Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT COUNT(`id`), `office_number` 
FROM `teachers` 
GROUP BY `office_number`;
