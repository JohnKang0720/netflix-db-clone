USE netflix;

/* Average Salary from subscriptions per year */
SELECT member_since, COUNT(name) as members_per_year FROM Users
GROUP BY member_since
ORDER BY members_per_year DESC;

/* Who are under parental control? */
SELECT DISTINCT u2.name, u2.parent_id_1, u2.parent_id_1, u2.age, u2.member_since FROM Users u1
JOIN Users u2 
ON u1.user_id = u2.parent_id_1 OR u1.user_id = u2.parent_id_2;

/* How many members subscribed each month? */
SELECT COUNT(name) AS num_ppl, MONTHNAME(subscription_date) as m FROM Accounts a
JOIN Users u
ON a.account_id = u.account_id
GROUP BY m;

/* What are the age-level for movies in people's watchlists? */
SELECT list_name, age_level, COUNT(age_level) AS movies_with_age_level FROM Users u
INNER JOIN Watchlist w
ON w.user_id = u.user_id
INNER JOIN Movies m
ON m.list_id = w.user_id
GROUP BY age_level, list_name;

/* Expected totals for each account? */
SELECT subscription_type, CONCAT("$",CAST(expected_payment AS CHAR(100))) AS expected FROM Accounts;

/* Average Rating in the movies you watched recently. */
SELECT u.name, watched_date, AVG(rating) AS avg_rating_daily FROM Users u
JOIN Log l 
ON u.user_id = l.user_id
JOIN Movies m
ON m.log_id = l.log_id
GROUP BY name, watched_date;

/*  What is the least popular account type? */ 
SELECT subscription_type AS most_popular, r FROM (SELECT num_members, subscription_type, 
DENSE_RANK() OVER(ORDER BY num_members DESC) AS r FROM Accounts) a
ORDER BY r ASC
LIMIT 1;

/* What is the most popular genre in each member's watchlist? */ 
WITH t AS ( SELECT list_name, genre, COUNT(genre) c FROM Users u
INNER JOIN Watchlist w
ON w.user_id = u.user_id
INNER JOIN Movies m
ON m.list_id = w.user_id
GROUP BY list_name, genre )
SELECT list_name, genre AS fav_genre FROM (SELECT *, DENSE_RANK() OVER(PARTITION BY list_name ORDER BY c DESC) r FROM t) s
WHERE r=1;