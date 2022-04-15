USE inventory1;

# Выборка1 сохранена в виде представления
DROP VIEW IF EXISTS comps_users;
CREATE VIEW  comps_users AS  
SELECT u.login as `Имя пользователя`, w.hostname as `Компьютер`, p.lastname as `Фамилия`, p.firstname as `Имя` 
FROM users as u 
INNER JOIN profiles as p ON u.id = p.user_id
INNER JOIN workstations as w ON w.user_id = u.id;

SELECT `Компьютер`,`Фамилия` FROM comps_users;