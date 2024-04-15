
-- Создание базы данных "blog"
CREATE DATABASE IF NOT EXISTS blog;

-- Использование базы данных "blog"
USE blog;

-- Создание таблицы "users"
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    surname VARCHAR(255),
    email VARCHAR(255) UNIQUE
);

-- Создание таблицы "comments"
CREATE TABLE IF NOT EXISTS comments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    comment TEXT,
    FOREIGN KEY (user_id) REFERENCES users(id)
);
