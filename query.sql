-- 1. Selezionare tutti gli studenti nati nel 1990 (160)
SELECT *
FROM `students`
WHERE `date_of_birth` >= '1990-01-01' 
AND `date_of_birth` <= '1990-12-31';

-- 2. Selezionare tutti i corsi che valgono più di 10 crediti (479)
SELECT * 
FROM `courses` 
WHERE `cfu` > '10';

-- 3. Selezionare tutti gli studenti che hanno più di 30 anni
SELECT `name`,`surname`,`date_of_birth` 
FROM `students` 
WHERE `date_of_birth` < '1991-09-28';

-- 4. Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laurea (286)
SELECT * 
FROM `courses` 
WHERE `year` = 1 
AND `period` = 'I semestre';
