CREATE TABLE users (
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  age INTEGER NOT NULL,
  country TEXT NOT NULL,
  phone TEXT NOT NULL,
  balance INTEGER NOT NULL
);  

SELECT * from users;

SELECT first_name, country FROM users;

SELECT first_name, age FROM users
ORDER BY age ASC;

SELECT first_name, age, balance FROM users
ORDER BY age, balance DESC;

SELECT DISTINCT country FROM users
ORDER BY country;