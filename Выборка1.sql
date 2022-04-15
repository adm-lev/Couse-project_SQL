USE inventory1;

# Выборка показывает логины и полные имена пользователей компьютеров
SELECT u.login as `Имя пользователя`, w.hostname as `Компьютер`, p.lastname as `Фамилия`, p.firstname as `Имя` 
FROM users as u 
INNER JOIN profiles as p ON u.id = p.user_id
INNER JOIN workstations as w ON w.user_id = u.id;