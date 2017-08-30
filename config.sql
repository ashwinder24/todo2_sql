/*SELECT * FROM todo;*/

/*SELECT * FROM todo WHERE priority = 3 and completed_at is null;*/

/*SELECT * FROM todo WHERE completed_at is null ORDER BY priority;*/

SELECT COUNT(id), priority from todo
WHERE created_at>(CURRENT_DATE - INTERVAL '30 days')
GROUP BY priority;

SELECT title, MIN(priority), MIN(created_at) from todo
GROUP BY title, priority, created_at
ORDER BY priority ASC