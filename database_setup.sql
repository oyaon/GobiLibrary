-- Create database if not exists
CREATE DATABASE IF NOT EXISTS bms;
USE bms;

-- Create special_offer table
CREATE TABLE IF NOT EXISTS special_offer (
    id INT AUTO_INCREMENT PRIMARY KEY,
    header_top VARCHAR(100) NOT NULL,
    header VARCHAR(100) NOT NULL,
    header_bottom TEXT,
    image_url VARCHAR(255),
    is_active BOOLEAN DEFAULT true,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Insert sample data
INSERT INTO special_offer (header_top, header, header_bottom, image_url) VALUES
('Special Offer', 'Get 20% Off On All Books', 'Limited time offer for our valuable customers', 'images/special-offer.jpg');

-- Create other essential tables if they don't exist
CREATE TABLE IF NOT EXISTS books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author_id INT,
    isbn VARCHAR(20) UNIQUE,
    quantity INT DEFAULT 0,
    status ENUM('available', 'unavailable') DEFAULT 'available',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    bio TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    role ENUM('admin', 'librarian', 'user') DEFAULT 'user',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Add foreign key constraints
ALTER TABLE books
ADD CONSTRAINT fk_author
FOREIGN KEY (author_id) REFERENCES authors(author_id)
ON DELETE SET NULL;
