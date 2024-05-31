USE netflix;

CREATE TABLE IF NOT EXISTS Movies (
	id INTEGER AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    rating INTEGER,
    director VARCHAR(100),
    age_level VARCHAR(100),
    genre VARCHAR(10),
    list_id INTEGER,
    log_id INTEGER,
    CHECK (genre IN ("Drama", "Horror", "Comedy", "Action", "Sci-fi", "Anime", "Classic", "Romance")),
    CHECK (age_level IN ('PG', 'G', 'Y')),
    CHECK (rating <= 5),
    FOREIGN KEY (list_id) REFERENCES Watchlist(list_id),
    FOREIGN KEY (log_id) REFERENCES Log(log_id)
);

CREATE TABLE IF NOT EXISTS Accounts (
	account_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    subscription_type VARCHAR(10),
    pay_per_month FLOAT,
    num_members INT,
    expected_payment INT,
    subscription_date DATE,
    CHECK (subscription_type IN ('SA', 'S', 'P'))
);

CREATE TABLE IF NOT EXISTS Users (
	user_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INTEGER,
    member_since YEAR,
    account_id INTEGER,
    parent_id_1 INTEGER,
    parent_id_2 INTEGER,
	FOREIGN KEY (account_id) REFERENCES Accounts(account_id),
    FOREIGN KEY (parent_id_1) REFERENCES Users(user_id),
    FOREIGN KEY (parent_id_2) REFERENCES Users(user_id)
);

CREATE TABLE IF NOT EXISTS Watchlist (
	list_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    list_name VARCHAR(100),
    user_id INTEGER,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE IF NOT EXISTS Log (
	log_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    watched_date DATE,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);	
