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

SELECT first_name, age, balance FROM users
WHERE age>=30 AND balance>=500000;

SELECT first_name, last_name FROM users
WHERE first_name LIKE '%호%';

SELECT first_name FROM users
WHERE first_name LIKE '%준';

SELECT first_name, phone FROM users
WHERE phone LIKE '%-51__-%';

SELECT first_name, country FROM users
WHERE country IN ('경기도', '강원도');

SELECT first_name, age FROM users
WHERE age BETWEEN 20 AND 30;

SELECT first_name, age FROM users
WHERE age NOT BETWEEN 20 AND 30;

SELECT rowid, first_name FROM users 
LIMIT 10 OFFSET 10;

SELECT first_name, balance FROM users
ORDER BY balance DESC LIMIT 10;

SELECT first_name, age FROM users
ORDER BY age LIMIT 5;

SELECT first_name, country FROM users
WHERE country IN ('경기도') AND first_name IN ('건우');

SELECT first_name, age, country FROM users
WHERE country NOT IN ('경기도', '강원도') AND age BETWEEN 20 AND 30
ORDER BY age ASC;