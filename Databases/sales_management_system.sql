-- Active: 1749549648651@@127.0.0.1@3306@sales_management_system

-- CREATE TABLE users (
--     id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
--     firstName VARCHAR(50) NOT NULL,
--     lastName VARCHAR(50) NOT NULL,
--     email VARCHAR(100) NOT NULL UNIQUE,
--     mobile VARCHAR(20) NOT NULL,
--     password VARCHAR(255) NOT NULL,
--     otp VARCHAR(6) DEFAULT NULL,
--     create_at DATETIME DEFAULT CURRENT_TIMESTAMP,
--     update_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
--     CONSTRAINT chk_mobile_number CHECK (
--         mobile REGEXP '^[0-9]{11,15}$'
--     )
-- );

TRUNCATE TABLE users;

TRUNCATE TABLE categories;


SELECT * from users

-- CREATE Table categories(
    -- id BIGINT AUTO_INCREMENT UNSIGNED NOT NULL PRIMARY KEY,
--     name VARCHAR(50) NOT NULL,
--     user_id BIGINT unsigned NOT NULL,
--     create_at DATETIME DEFAULT CURRENT_TIMESTAMP,
--     -- update_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
--         CONSTRAINT fk_users FOREIGN KEY (user_id) REFERENCES users(id) 
--         ON DELETE RESTRICT ON UPDATE CASCADE
-- -- );
-- DESCRIBE categories


-- CREATE TABLE customers (
--     id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(50) NOT NULL,
--     email VARCHAR(100) NOT NULL UNIQUE,
--     mobile VARCHAR(25) NOT NULL,
--     user_id BIGINT NOT NULL,
--     create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--     -- update_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
--     CONSTRAINT fk_users FOREIGN KEY (user_id) REFERENCES users(id) 
--         -- ON DELETE RESTRICT ON UPDATE CASCADE
-- );


-- DESCRIBE customers



-- CREATE TABLE products (
--     id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
--     user_id BIGINT NOT NULL,
--     category_id BIGINT NOT NULL,
--     name VARCHAR(50) NOT NULL,
--     price DECIMAL(10,2) NOT NULL,
--     unit DECIMAL(10,2) NOT NULL,
--     image_url VARCHAR(200) NOT NULL,
--     create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--     update_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
--     CONSTRAINT fk_users FOREIGN KEY (user_id) REFERENCES users(id) 
--         ON DELETE RESTRICT ON UPDATE CASCADE,
--     CONSTRAINT fk_categories FOREIGN KEY (category_id) REFERENCES categories(id) 
--         ON DELETE RESTRICT ON UPDATE CASCADE
-- );



-- CREATE TABLE invoices (
--     id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
--     total DECIMAL(10,2) NOT NULL,
--     discount DECIMAL(10,2) NOT NULL,
--     vat DECIMAL(10,2) NOT NULL,
--     payable DECIMAL(10,2) NOT NULL,
--     user_id BIGINT UNSIGNED NOT NULL,
--     customer_id BIGINT UNSIGNED NOT NULL,
--     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--     updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
--     CONSTRAINT fk_users FOREIGN KEY (user_id) REFERENCES users(id) 
--         ON DELETE RESTRICT ON UPDATE CASCADE,
--     CONSTRAINT fk_customers FOREIGN KEY (customer_id) REFERENCES customers(id) 
--         ON DELETE RESTRICT ON UPDATE CASCADE
-- );


-- CREATE TABLE invoice_products (
--     id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
--     invoice_id BIGINT UNSIGNED NOT NULL,
--     product_id BIGINT UNSIGNED NOT NULL,
--     user_id BIGINT UNSIGNED NOT NULL,
--     qty DECIMAL(10,2) NOT NULL,
--     sale_price DECIMAL(10,2) NOT NULL,
--     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--     updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
--     CONSTRAINT fk_users FOREIGN KEY (user_id) REFERENCES users(id) 
--         ON DELETE RESTRICT ON UPDATE CASCADE,
--     CONSTRAINT fk_products FOREIGN KEY (product_id) REFERENCES products(id) 
--         ON DELETE RESTRICT ON UPDATE CASCADE,
--     CONSTRAINT fk_invoices FOREIGN KEY (invoice_id) REFERENCES invoices(id) 
--         ON DELETE RESTRICT ON UPDATE CASCADE
-- );




INSERT INTO users (firstName, lastName, email, mobile, password, otp) VALUES
('John', 'Doe', 'john.doe@example.com', '880140150813', 'hashed_password_1', '123456'),
('Jane', 'Smith', 'jane.smith@example.com', '880140150814', 'hashed_password_2', '654321');
INSERT INTO categories (id, name, user_id) VALUES
(1, 'Electronics', 1),
(2, 'Clothing', 2),
(3, 'Books', 1);

-- ALTER TABLE products DROP FOREIGN KEY chk_fk_categories

-- ALTER TABLE categories MODIFY id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT;

-- ALTER TABLE products ADD CONSTRAINT ano_fk_categories FOREIGN KEY (category_id) 
--     REFERENCES categories(id) ON DELETE RESTRICT ON UPDATE CASCADE;

-- select * from users

-- ALTER TABLE customers DROP FOREIGN KEY fk_users;

-- TRUNCATE TABLE categories;

-- ALTER TABLE categories ADD CONSTRAINT fk_users FOREIGN KEY (user_id) 
--     REFERENCES users(id) ON DELETE RESTRICT ON UPDATE CASCADE;


-- SELECT CONCAT('DROP TABLE IF EXISTS ', table_name, ';') 
-- FROM information_schema.tables 
-- WHERE table_schema = 'sales_management_system';

-- DROP TABLE IF EXISTS categories;
-- DROP TABLE IF EXISTS customers;
-- DROP TABLE IF EXISTS users;
-- DROP TABLE IF EXISTS products;
-- DROP TABLE IF EXISTS invoices;
-- DROP TABLE IF EXISTS invoice_products;



INSERT INTO users (firstName, lastName, email, mobile, password, otp) VALUES
('John', 'Doe', 'john.doe@example.com', '880140150813', 'hashed_password_1', '123456'),
('Jane', 'Smith', 'jane.smith@example.com', '880140150814', 'hashed_password_2', '654321'),
('Alice', 'Johnson', 'alice.johnson@example.com', '880140150815', 'hashed_password_3', '111222'),
('Bob', 'Williams', 'bob.williams@example.com', '880140150816', 'hashed_password_4', '333444'),
('Charlie', 'Brown', 'charlie.brown@example.com', '880140150817', 'hashed_password_5', '555666'),
('David', 'White', 'david.white@example.com', '880140150818', 'hashed_password_6', '777888');

INSERT INTO categories (name, user_id) VALUES
('Electronics', 1),
('Clothing', 2),
('Books', 3),
('Groceries', 4),
('Furniture', 5),
('Sports', 6);

INSERT INTO customers (name, email, mobile, user_id) VALUES
('Evelyn Harper', 'evelyn.harper@example.com', '880140150819', 1),
('George Foster', 'george.foster@example.com', '880140150820', 2),
('Sophia Carter', 'sophia.carter@example.com', '880140150821', 3),
('Henry Peterson', 'henry.peterson@example.com', '880140150822', 4),
('Liam Evans', 'liam.evans@example.com', '880140150823', 5),
('Olivia Adams', 'olivia.adams@example.com', '880140150824', 6);

INSERT INTO products (user_id, category_id, name, price, unit, image_url) VALUES
(1, 1, 'Smartphone', 499.99, 1, 'https://example.com/smartphone.jpg'),
(2, 2, 'T-Shirt', 19.99, 1, 'https://example.com/tshirt.jpg'),
(3, 3, 'Novel Book', 14.99, 1, 'https://example.com/novel.jpg'),
(4, 4, 'Organic Rice', 5.99, 5, 'https://example.com/rice.jpg'),
(5, 5, 'Office Desk', 129.99, 1, 'https://example.com/desk.jpg'),
(6, 6, 'Football', 24.99, 1, 'https://example.com/football.jpg');

INSERT INTO invoices (total, discount, vat, payable, user_id, customer_id) VALUES
(500.00, 10.00, 5.00, 495.00, 1, 1),
(100.00, 5.00, 2.00, 97.00, 2, 2),
(350.00, 20.00, 8.00, 322.00, 3, 3),
(220.00, 15.00, 3.50, 201.50, 4, 4),
(75.00, 5.00, 1.50, 68.50, 5, 5),
(450.00, 30.00, 10.00, 410.00, 6, 6);

INSERT INTO invoice_products (invoice_id, product_id, user_id, qty, sale_price) VALUES
(1, 1, 1, 1, 499.99),
(2, 2, 2, 2, 19.99),
(3, 3, 3, 1, 14.99),
(4, 4, 4, 3, 5.99),
(5, 5, 5, 1, 129.99),
(6, 6, 6, 2, 24.99);


select * from users

select * from categories


select * from customers


select * from invoices


select * from invoice_products