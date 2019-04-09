SELECT user_id, location, age FROM users WHERE age > 18 and age < 34 limit 10;
SELECT count(*) FROM users WHERE age > 18 and age < 34;
SELECT age, count(*) FROM users GROUP BY age;
SELECT age, count(*) as c FROM users GROUP BY age ORDER BY c DESC; 

