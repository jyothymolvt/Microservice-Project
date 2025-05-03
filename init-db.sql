CREATE DATABASE IF NOT EXISTS clado_db;

-- Use the newly created database
USE clado_db;

-- Create the form_submissions table if it doesn't exist
CREATE TABLE IF NOT EXISTS form_submissions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    created_at DATETIME NOT NULL
);
