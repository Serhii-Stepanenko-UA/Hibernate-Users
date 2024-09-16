
-- БАЗА ДАНИХ
-- Можливість створення БД з метою уникнення некваліфікованих
-- дій, краще залишити за розробником.
-- Тому такий функціонал у додатку не прописуємо.
-- Можемо створити БД через візуальний інструмент, наприклад,
-- MySQL Workbench.
CREATE DATABASE demo_db;

-- ТАБЛИЦІ
-- Можливість створення таблиць БД, з метою уникнення некваліфікованих
-- дій, краще залишити за розробником.
-- Тому такий функціонал у додатку не прописуємо.
-- Попередньо, необхідно спроектувати таблиці та їх зв'язки,
-- на основі сутностей реального світу.
-- Можемо створити таблиці БД через візуальний інструмент, наприклад,
-- MySQL Workbench.

CREATE TABLE IF NOT EXISTS users1
( id INTEGER NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(128) NOT NULL,
  last_name VARCHAR(128) NOT NULL,
  email VARCHAR(128) NOT NULL,
  PRIMARY KEY (id)
);


-- Порівняння HQL та SQL

-- HQL
INSERT INTO User (firstName, lastName, email) VALUES (:firstName, :lastName, :email)
-- SQL
INSERT INTO users1 (first_name, last_name, email) VALUES (:first_name, :last_name, :email)


-- HQL
FROM User
-- SQL
SELECT * FROM users1


-- HQL
UPDATE User SET phone = :phone WHERE id = :id
-- SQL
UPDATE users1 SET phone = :phone WHERE id = :id


-- HQL
DELETE FROM User WHERE id = :id
-- SQL
DELETE FROM users1 WHERE id = :id;
