USE inventory1;

# Процедура вычисляет пользователей и отделы имеющихся принтеров
DROP PROCEDURE IF EXISTS `printers`;
DELIMITER |
USE inventory1|
CREATE PROCEDURE `printers` ()
BEGIN
SELECT * FROM (
	SELECT p.lastname as `Фамилия`, d.name as `Отдел`, pr.model as `Принтер` 
	FROM profiles as p 
	INNER JOIN printers as pr 
	ON p.department_id = pr.department_id AND  pr.model = 'Aficio mp201'
	INNER JOIN departments as d ON p.department_id = d.id
) as old
UNION ALL
(
	SELECT p.lastname, d.name, pr.model 
	FROM profiles as p 
	INNER JOIN printers as pr 
	ON p.department_id = pr.department_id AND  pr.model = 'Aficio mp301'
	INNER JOIN departments as d ON p.department_id = d.id
);
END|
DELIMITER ;

CALL printers();

