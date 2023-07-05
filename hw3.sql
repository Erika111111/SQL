SELECT * FROM staff;
-- Отсортируйте данные по полю заработная плата (salary) в порядке: убывания; возрастания
SELECT * FROM staff
ORDER BY salary;

SELECT * FROM staff
ORDER BY salary DESC;

-- Выведите 5 максимальных заработных плат (salary)
SELECT salary FROM staff
ORDER BY salary DESC
LIMIT 5;

-- Посчитайте суммарную зарплату (salary) по каждой специальности (роst)
SELECT post, SUM(salary) AS 'sum' FROM staff
GROUP BY post; 

-- Найдите кол-во сотрудников с специальностью (post) «Рабочий» в возрасте от 24 до 49 лет включительно.
SELECT COUNT(id)
FROM staff
WHERE post = 'Рабочий' AND age BETWEEN 24 AND 49;

-- Найдите количество специальностей
SELECT COUNT(DISTINCT post) FROM staff;

-- Выведите специальности, у которых средний возраст сотрудников меньше 30 лет включительно
SELECT post FROM 
(SELECT post, AVG(age) 
FROM staff
GROUP BY post) AS list
HAVING AVG(age) < 30;

SELECT * FROM activity_staff;

-- Выведите id сотрудников, которые напечатали более 500 страниц за всех дни
SELECT staff_id, SUM(count_pages) 'Общее количество страниц'
FROM activity_staff
GROUP BY staff_id
HAVING SUM(count_pages) > 500;

/* Выведите дни, когда работало более 3 сотрудников Также укажите кол-во сотрудников, 
которые работали в выбранные дни.
*/
SELECT date_activity 'Дата', COUNT(staff_id) 'Количество сотрудников'
FROM activity_staff
GROUP BY date_activity
HAVING COUNT(staff_id) > 3;

-- Выведите среднюю заработную плату по должностям, которая составляет более 30000

SELECT post, AVG(salary)
FROM staff
GROUP BY post
HAVING AVG(salary) >  30000;





