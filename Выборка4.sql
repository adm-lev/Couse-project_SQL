USE inventory1;

# Выборка подсчитывает количество установок каждого ПО на компьютерах пользователей
SELECT count(*) as `Кол-во установок`, s.name as `Программа` FROM installed as i INNER JOIN software as s ON i.soft_id = s.id GROUP BY s.name;