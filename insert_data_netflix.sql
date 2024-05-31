USE netflix;

SET FOREIGN_KEY_CHECKS= 0;
SET SQL_SAFE_UPDATES = 0;

INSERT INTO Accounts (subscription_type, pay_per_month, num_members, expected_payment, subscription_date)
VALUES 
('SA', 15.99, 0, 0, '2022-01-15'),
('S', 9.99, 0, 0, '2023-03-22'),
('P', 4.99, 0, 0, '2021-11-05');

INSERT INTO Users (name, age, member_since, account_id, parent_id_1, parent_id_2)
VALUES 
('Alice', 35, 2015, 1, NULL, NULL),
('Bob', 40, 2014, 1, NULL, NULL),
('Charlie', 10, 2015, 1, 1, 2),
('David', 50, 2018, 2, NULL, NULL),
('Eve', 45, 2018, 2, NULL, NULL),
('Frank', 20, 2018, 2, 4, 5),
('Grace', 55, 2019, 3, NULL, NULL);

INSERT INTO Watchlist (list_name, user_id)
VALUES 
('Alice\'s Favorites', 1),
('Bob\'s Must-Watch', 2),
('Family Movies', 3),
('David\'s Collection', 4),
('Eve\'s List', 5),
('Frank\'s Picks', 6),
('Grace\'s Classics', 7);

INSERT INTO Log (watched_date, user_id)
VALUES 
('2023-04-01', 1),
('2023-04-02', 1),
('2023-04-03', 2),
('2023-04-04', 2),
('2023-04-05', 3),
('2023-04-06', 3),
('2023-04-07', 4),
('2023-04-08', 4),
('2023-04-09', 5),
('2023-04-10', 5),
('2023-04-11', 6),
('2023-04-12', 6),
('2023-04-13', 7),
('2023-04-14', 7);

INSERT INTO Movies (name, rating, director, age_level, genre, list_id, log_id)
VALUES 
('Movie 1', 5, 'Director 1', 'PG', 'Drama', 1, 1),
('Movie 2', 4, 'Director 2', 'G', 'Comedy', 1, 2),
('Movie 3', 3, 'Director 3', 'Y', 'Horror', 2, 3),
('Movie 4', 2, 'Director 4', 'PG', 'Action', 2, 4),
('Movie 5', 1, 'Director 5', 'G', 'Sci-fi', 3, 5),
('Movie 6', 5, 'Director 6', 'Y', 'Anime', 3, 6),
('Movie 7', 4, 'Director 7', 'PG', 'Classic', 4, 7),
('Movie 8', 3, 'Director 8', 'G', 'Romance', 4, 8),
('Movie 9', 2, 'Director 9', 'Y', 'Drama', 5, 9),
('Movie 10', 1, 'Director 10', 'PG', 'Horror', 5, 10),
('Movie 11', 5, 'Director 11', 'G', 'Comedy', 6, 11),
('Movie 12', 4, 'Director 12', 'Y', 'Action', 6, 12),
('Movie 13', 3, 'Director 13', 'PG', 'Sci-fi', 7, 13),
('Movie 14', 2, 'Director 14', 'G', 'Anime', 7, 14),
('Movie 15', 1, 'Director 15', 'Y', 'Classic', 1, 1),
('Movie 16', 5, 'Director 16', 'PG', 'Romance', 1, 2),
('Movie 17', 4, 'Director 17', 'G', 'Drama', 2, 3),
('Movie 18', 3, 'Director 18', 'Y', 'Horror', 2, 4),
('Movie 19', 2, 'Director 19', 'PG', 'Comedy', 3, 5),
('Movie 20', 1, 'Director 20', 'G', 'Action', 3, 6),
('Movie 21', 5, 'Director 21', 'Y', 'Sci-fi', 4, 7),
('Movie 22', 4, 'Director 22', 'PG', 'Anime', 4, 8),
('Movie 23', 3, 'Director 23', 'G', 'Classic', 5, 9),
('Movie 24', 2, 'Director 24', 'Y', 'Romance', 5, 10),
('Movie 25', 1, 'Director 25', 'PG', 'Drama', 6, 11),
('Movie 26', 5, 'Director 26', 'G', 'Horror', 6, 12),
('Movie 27', 4, 'Director 27', 'Y', 'Comedy', 7, 13),
('Movie 28', 3, 'Director 28', 'PG', 'Action', 7, 14),
('Movie 29', 2, 'Director 29', 'G', 'Sci-fi', 1, 1),
('Movie 30', 1, 'Director 30', 'Y', 'Anime', 1, 2);



