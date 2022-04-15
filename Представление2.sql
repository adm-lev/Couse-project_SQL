USE inventory1;

# Выборка2 сохранена в виде представления
DROP VIEW IF EXISTS use_cert;
CREATE VIEW use_cert AS
SELECT w.hostname as `ПК`, s.name as `Программа`, s.info as `Инфо`, c.info as `Используемый сертификат` 
FROM software as s 
INNER JOIN installed as i ON s.id IN (1,2,9) AND i.soft_id = s.id
INNER JOIN workstations as w ON w.id = i.pc_id 
INNER JOIN certificates as c ON c.id = i.cert_id
ORDER BY i.pc_id ;

SELECT * FROM use_cert ORDER BY `Используемый сертификат`;