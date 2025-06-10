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



-- SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE users;
TRUNCATE TABLE categories;
TRUNCATE TABLE customers;
TRUNCATE TABLE products;
TRUNCATE TABLE invoices;
TRUNCATE TABLE invoice_products;
-- SET FOREIGN_KEY_CHECKS = 1;



INSERT INTO users (firstName, lastName, email, mobile, password, otp) VALUES
('Rabbil Hasan', 'Rupom', 'engr.rabbil@yahoo.com', '01785388919', 'abc123', '0'),
('Sk', 'Zehad', 'sehabkhanzehad@yahoo.com', '01744646344', 'Pa$$w0rd!', '0'),
('Swadhin', 'Das', 'swadhind807@gmail.com', '01868801557', 'a', '0'),
('Shahidul Islam', 'Shovon', 'islamkhans148@gmail.com', '01631903731', '1234', '0'),
('Hasibur', 'Rahman', 'samrat2880@gmail.com', '654651651', '123456789', '0'),
('Jahid', 'Hasan', 'jahidhasan370919@gmail.com', '01701367333', '1234', '0'),
('Ferdous', 'Ahmed', 'ferdous22680@gmail.com', '567', '123', '0'),
('Md Fazlul', 'Kader', 'kaderurmi@gmail.com', '01678054692', 'asdf1234', '0'),
('Md Shah', 'Alam', 'mdshahalam8283@gmail.com', '01628918283', '111', '0'),
('Sohan', 'Ucchas', 'sohan.ucchas@gmail.com', '01782319676', '11111111', '0'),
('Karamul Ambia', 'Mahdi', 'mdmahdi45@gmail.com', '01777307585', '123456', '0'),
('Shahidul', 'Islam', 'hmsenterprise00@gmail.com', '01712100332', '123456789', '0'),
('Ridoy', 'Hasan', 'ridoy@gmail.com', '01682461179', '1234', '0'),
('SM', 'Sabbir', 'personal.smsabbir@gmail.com', '01710115616', '112233', '0'),
('Nayemul', 'Islam', 'nayemtp@gmail.com', '1234', '1234', '0'),
('Jahid', 'Hasan', 'jahidhasan377112@gmail.com', '01959077170', '12345', '0'),
('Rakibul', 'Hassan', 'rakibul.h.68016@gmail.com', '01616865468', '123456', '0'),
('Shamsul', 'Alam', 'sumonkpi1993@gmail.com', '01717172112', '123456', '0'),
('Razib Hossain', 'Rana', 'rhrana11@gmail.com', '01913193557', '9321', '0'),
('Shahin', 'Miah', 'shahahmed973@gmail.com', '0549617579', '12345', '0'),
('Md Saiful', 'Islam', 'nobayon01@gmail.com', '01911563761', 'FYnxydeO&1', '0'),
('Ahmed', 'Maruf', 'ahmed@gmail.com', '01914', '12345678', '0'),
('Sadhin', 'Sharkar', 'shadinsharkar98@gmail.com', '01797178347', '12345678', '0'),
('Atul', 'Paul', 'paulatul020@gmail.com', '01609398958', 'shop@atul2', '0'),
('Nabil', 'Hossain', 'Youcannevertell135@gmail.com', '01757747472', '533911111', '0'),
('Keith', 'Cochran', 'nasydamoq@mailinator.com', '01701560326', 'Pa$$w0rd!', '0'),
('Cameron', 'Vaughn', 'taxecuwyfu@mailinator.com', '01701560326', '12345678', '0'),
('Mr', 'Developer', 'shafrinahamedsa@gmail.com', '01872437708', '123456', '9672'),
('Uttam', 'Sharma', 'uttamrohit4545@gmail.com', '01701560326', 'Uttam1234', '0'),
('Shahriar', 'Rabby', 'rabby@gmail.com', '01387545228', 'abcdefg', '0'),
('Faiyaz Mahmud', 'Toha', 'demomail@yahoo.com', '01234580', 'abc123', '0'),
('Ariful', 'Islam', 'ashanullahariful6460@gmail.com', '01785421417', '4ZJK#xu#@>KV?Ce', '0'),
('Md', 'Anis', 'rjanis2083@gmail.com', '01908743132', 'abc123', '0'),
('Atik', 'Rahman', 'tokika7584@digopm.com', '01738083635', 'ak123', '4858'),
('Shifkat', 'Siddiqui', 'shifkatahamed522@gmail.com', '01678174522', '123456', '0'),
('Afsana', 'Meem', '2130@gmail.com', '017', '123', '0'),
('Enamul', 'Haque', 'theenamulhaque.web@gmail.com', '01944344601', '123456', '0'),
('Amrita', 'Dey', 'abc@gmail.com', '014343', 'admin', '0'),
('Md', 'Siyam', 'bdmasterdeveloper@gmail.com', '01777736736', '12345', '0'),
('NM', 'Saikat', 'nmsaikat.cf@gmail.com', '01628768792', 'a3+3ab+b3', '0'),
('Saiful', 'Islam', 'saifulmsi454@gmail.com', '01784044467', '12345678', '0'),
('Demo', 'User', 'demo@gmail.com', '0155555555555', '12345678', '0');



INSERT INTO categories (name, user_id) VALUES
('Artisan Breads', 1),
('Pastries & Croissants', 1),
('Cakes & Tortes', 1),
('Muffins & Cupcakes', 1),
('Cookies & Biscotti', 1),
('Sandwiches & Savory Bake', 1),
('Gluten-Free Treats', 1),
('Vegan & Dairy-Free Delights', 1),
('Driy 1', 3),
('Shirt', 4),
('Gents Pant', 4),
('cat1', 5),
('mango', 1),
('asassfsdf', 1),
('errtretert', 1),
('test', 1),
('test123q32e123123', 1),
('Fruits', 18),
('Mobile', 7),
('Laptop', 7),
('Monitor', 20),
('Laptop', 20),
('Motherboard', 20),
('Processor', 20),
('RAM', 20),
('Power Supply', 20),
('Graphics Card', 20),
('Solid State Drive (SSD)', 20),
('Hard Disk Drive (HDD)', 20),
('CPU Cooler', 20),
('Casing', 20),
('Keyboard', 20),
('Mouse', 20),
('Speaker', 20),
('Headphone', 20),
('AdvanceCNC', 23),
('Best CNC', 23),
('Nature', 2),
('Juice', 26),
('Smart Watch (Rolex)', 7),
('Shart', 28),
('Panjabi', 28),
('Mechanical Keyboard', 7),
('Test New', 1),
('Mobile', 36),
('Laptop', 36),
('Food', 37),
('Test', 40),
('Food', 42)


INSERT INTO customers(name, email, mobile, user_id) VALUES
('John Doe', 'john.doe@example.com', '+1234567890', 1),
('Emily Watson', 'emily.watson@example.com', '+1234567890', 1),
('Michael Johnson', 'michael.johnson@example.com', '+1234567891', 1),
('Sophia Martinez', 'sophia.martinez@example.com', '+1234567892', 1),
('Olivia Brown', 'olivia.brown@example.com', '+1234567894', 1),
('Jony Das', 'mw.yt.jony@gmail.com', '01868801557', 3),
('Samrat', 'samrat2880@gmail.com', '9469465', 5),
('Md Shah kk', 'mdshahalam@gmail.com', '0162434343', 1),
('Helen Saunders', 'hegeda@mailinator.com', '01876543210', 2),
('Md Shah Alam', 'info@alam.com', '01627837483', 18),
('Ferdous Ahmed', 'ferdous22680@gmail.com', '658547', 7),
('Hasan Ahmed', 'me5@gmail.com', '467', 7),
('Juhan Islam', 'Juhan@test.com', '4536806734', 20),
('Masum Bhai', 'masum@gmail.com', '01612990546', 23),
('Kawsar Ahmed', 'kawsar@gmail.com', '5767', 7),
('Assraff', 'Assraff@gmail.com', '5688', 7),
('Emad Ahmed', 'emad@gmail.com', '2906', 7),
('Rakibu Hassan', 'rakibul.h.68016@gmail.com', '01616865468', 28),
('SM Sabbir', 'smsabbir@gmail.com', '01789000032', 24),
('FVZXCV VXCZVXC', 'test@gmail.com', '01887573016', 5),
('RAZIB HOSSAIN RANA', 'rhrana11@gmail.com', '01913193557', 35),
('Tuni', 'tun@gmail.com', '017123456789', 36),
('Sun', 'sun@test.com', '01500000000', 37),
('Kola Customar', 'mail@gmail.com', '01912827373', 42),
('Ramona Douglas', 'ramona.douglas@mail.com', '01876543012', 40),
('Reday', 'reday@gmail.com', '01763659505', 41),
('Akash', 'akash@gmail.com', '01987328913', 39),
('Nuru', 'nuru@gmail.com', '01867494386', 38),
('Uttam', 'uttam1@gmail.com', '01701560326', 36),
('Alif', 'alif@gmail.com', '01867494494', 35),
('Syeda Fahmida Tanzim Mithi', 'fahmidamithi16@gmail.com', '01304050382', 32),
('GAYLE', 'gayle@yahoo.com', '54564452', 31),
('Clark', 'clarck@protonmail.com', '69232', 30),
('Ponting', 'ponting@gmail.com', '8475922', 29),
('Shakib', 'shakib@75.com', '89456', 28),
('Abul', 'abul@email.com', '01713543208', 27),
('Shohag', 'shohag@gmail.com', '0194444666', 26),
('Khaled', 'khaled@gmail.com', '0187566548', 25),
('John Doe', 'johndoe@gmail.com', '01678174522', 24),
('MD FIRUZ', 'firuz@gmail.com', '01785432100', 23),
('Rocky', 'rocky@email.com', '01781234567', 22),
('NURU', 'nuru123@gmail.com', '01233387867', 21),
('Sojib', 'sogib@gmail.com', '01111111111', 20),
('Shahin', 'Shahin@gmail.com', '1111111111', 19),
('Md Siyam', 'siyamwd@gmail.com', '01721383540', 18),
('Uttam', 'uttam@gmail.com', '0130299009978', 17),
('Demo', 'demo@gmail.com', '015555555555', 16);


INSERT INTO invoices (total, discount, vat, payable, user_id, customer_id) VALUES
(22.80, 1.20, 1.14, 23.94, 40, 156),
(380.00, 20.00, 19.00, 399.00, 39, 157),
(1728.13, 21.88, 86.41, 1814.54, 38, 158),
(72400.00, 0.00, 3620.00, 76020.00, 37, 159),
(597.00, 3.00, 29.85, 626.85, 36, 160),
(105.50, 0.00, 5.28, 110.78, 35, 163),
(5800.00, 0.00, 290.00, 6090.00, 34, 164),
(63450.00, 7050.00, 3172.50, 66622.50, 33, 161),
(500.00, 0.00, 25.00, 525.00, 32, 162),
(200.00, 0.00, 10.00, 210.00, 31, 175),
(5.46, 0.04, 0.27, 5.73, 30, 166),
(7180.00, 0.00, 359.00, 7539.00, 29, 167),
(69514.70, 525.30, 3475.74, 72990.44, 28, 170),
(11.00, 0.00, 0.55, 11.55, 27, 171),
(27.50, 0.00, 1.38, 28.88, 26, 172),
(630250.00, 0.00, 31512.50, 661762.50, 25, 202),
(1945.00, 55.00, 97.25, 2042.25, 24, 201),
(1600.00, 0.00, 80.00, 1680.00, 23, 165),
(97.00, 3.00, 4.85, 101.85, 22, 200),
(28.20, 1.80, 1.41, 29.61, 21, 199),
(99.00, 1.00, 4.95, 103.95, 20, 168),
(230.00, 0.00, 11.50, 241.50, 19, 198),
(242.55, 2.45, 12.13, 254.68, 18, 197),
(149.25, 0.75, 7.46, 156.71, 17, 196),
(294.00, 6.00, 14.70, 308.70, 16, 169),
(59504.68, 10500.83, 2975.23, 62479.91, 15, 195),
(4.99, 0.01, 0.25, 5.24, 14, 174);


select max(id) from users

INSERT INTO users(firstName,lastName,email,mobile,password,otp) VALUES ('Jubayer Ahmed',"Sojib",'sojib@gmail.com','01401550813','sojib','021451')


INSERT INTO invoice_products (invoice_id, product_id,user_id, qty, sale_price) VALUES
(2, 2, 3, '1', '1000.00'),
(2, 2, 3, '3', '3000.00'),
(2, 2, 3, '30', '30000.00'),
(4, 1, 1, '5', '27.50'),
(4, 3, 1, '55', '2750.00'),
(5, 1, 1, '3', '16.50'),
(6, 1, 1, '5', '27.50'),
(6, 1, 1, '5', '27.50'),
(9, 1, 1, '5', '27.50'),
(11, 1, 1, '1', '5.50'),
(11, 3, 1, '1', '50.00'),
(11, 1, 1, '1', '5.50'),
(12, 6, 5, '10', '450.00'),
(12, 5, 5, '20', '2000.00'),
(12, 7, 5, '10', '50.00'),
(12, 8, 5, '10', '100.00'),
(12, 6, 5, '10', '450.00'),
(12, 6, 5, '20', '900.00'),
(12, 5, 5, '10', '1000.00'),
(12, 8, 5, '10', '100.00'),
(12, 8, 5, '10', '100.00'),
(12, 8, 5, '10', '100.00'),
(12, 7, 5, '10', '50.00'),
(12, 5, 5, '10', '1000.00'),
(12, 6, 5, '10', '450.00'),
(13, 8, 5, '10', '100.00'),
(13, 5, 5, '15', '1500.00'),
(14, 1, 1, '3', '16.50'),
(15, 1, 1, '25', '137.50'),
(15, 3, 1, '2', '100.00'),
(18, 8, 5, '2', '20.00'),
(20, 1, 1, '10', '55.00'),
(21, 6, 5, '2', '90.00'),
(23, 10, 18, '2', '640.00'),
(26, 3, 1, '2', '100.00'),
(26, 1, 1, '2', '11.00'),
(27, 13, 20, '1', '13700.00'),
(28, 14, 23, '1', '400000.00'),
(29, 3, 1, '4', '200.00'),
(29, 1, 1, '8', '44.00'),
(30, 1, 1, '1', '5.50'),
(30, 3, 1, '1', '50.00'),
(34, 1, 1, '2', '11.00'),
(36, 17, 28, '1', '250.00'),
(37, 10, 18, '1', '320.00'),
(37, 21, 18, '12', '144.00'),
(38, 21, 18, '20', '240.00'),
(38, 10, 18, '5', '1600.00'),
(39, 6, 5, '10', '450.00'),
(40, 1, 1, '1', '5.50'),
(40, 3, 1, '1', '50.00'),
(40, 15, 1, '1', '1200.00'),
(40, 15, 1, '1', '1200.00'),
(40, 15, 1, '1', '1200.00'),
(42, 19, 2, '2', '998.00'),
(42, 20, 2, '2', '1874.00'),
(44, 24, 7, '1', '700000.00'),
(47, 17, 28, '1', '250.00'),
(48, 17, 28, '1', '250.00'),
(51, 35, 36, '1', '120.00'),
(52, 36, 37, '10', '10000.00'),
(53, 24, 7, '5', '3500000.00'),
(55, 39, 42, 'a', 'NaN'),
(56, 41, 49, '2', '24.00'),
(58, 50, 51, '5', '400.00'),
(59, 47, 51, '5', '1500.00'),
(59, 46, 51, '1', '250.00'),
(60, 15, 1, '2', '2400.00'),
(60, 51, 1, '1', '70000.00'),
(61, 48, 51, '3', '600.00'),
(62, 1, 1, '1', '5.50'),
(62, 3, 1, '2', '100.00'),
(65, 40, 1, '10', '5000.00'),
(65, 38, 1, '20', '400.00'),
(65, 31, 1, '20', '400.00'),
(68, 40, 1, '1', '500.00'),
(68, 51, 1, '1', '70000.00'),
(70, 53, 65, '5', '500.00'),
(71, 53, 65, '2', '200.00'),
(72, 1, 1, '1', '5.50'),
(75, 19, 2, '5', '2495.00'),
(75, 20, 2, '5', '4685.00'),
(78, 38, 1, '1', '20.00'),
(78, 38, 1, '1', '20.00'),
(78, 51, 1, '1', '70000.00'),
(80, 1, 1, '2', '11.00'),
(81, 1, 1, '5', '27.50'),
(82, 3, 1, '5', '250.00'),
(82, 51, 1, '9', '630000.00'),
(83, 40, 1, '4', '2000.00'),
(84, 54, 60, '2', '1600.00'),
(85, 55, 77, '2', '100.00'),
(86, 56, 82, '3', '30.00'),
(87, 60, 39, '1', '100.00'),
(88, 60, 39, '1', '90.00'),
(88, 61, 39, '1', '200.00'),
(89, 60, 39, '1', '90.00'),
(89, 61, 39, '1', '140.00'),
(90, 60, 39, '1', '100.00'),
(90, 61, 39, '1', '145.00'),
(91, 3, 1, '3', '150.00'),
(93, 63, 91, '2', '300.00'),
(94, 1, 1, '1', '5.50'),
(94, 51, 1, '1', '70000.00'),
(95, 64, 96, '1', '5.00');

-- select id from 

INSERT INTO products (user_id, category_id, name, price, unit, image_url) VALUES
(36, 79, 'Sourdough Bread', 5.50, 'Sourdough Bread', 'uploads/1-1727032278-almonds_raw.webp'),
(38, 80, 'Pr1', 1000.00, '10', 'uploads/3-1724167942-Screenshot_121.png'),
(22, 81, 'Create Product', 50.00, 'Create Product', 'uploads/1-1724170941-1-1724057793-Sourdough-Bread-Recipe-for-Beginners.jpg'),
(32, 82, 'product 1', 100.00, 'product 1', 'uploads/5-1724230987-fococlipping-20220128-2129 1.png'),
(39, 83, 'xvxcvfgdsdfg', 45.00, '5', 'uploads/5-1724325190-EN_GreenOlive-1.webp'),
(42, 84, 'ghfhg', 5.00, '465', 'uploads/5-1724325209-overtime-group-PLP.png'),
(31, 85, 'gfdfgh', 10.00, '1', 'uploads/5-1724325227-agiled2.jpg'),
(1, 86, 'Green Apple', 320.00, 'kg', 'uploads/18-1724577867-Apple.jpeg'),
(7, 91, 'HP 22fw', 13700.00, '5', 'uploads/20-1724639351-images.jpeg'),
(12, 92, '1425 Alfa', 400000.00, '1', 'uploads/23-1724678716-1.jpg'),
(4, 93, 'cake', 1200.00, 'pcs', 'uploads/1-1725070088-Makeup-Cake-2-720x720.webp'),
(6, 94, 'T-Shart', 250.00, '10', 'uploads/28-1725630668-OIP.jpeg'),
(16, 95, 'T-shart', 180.00, '5', 'uploads/28-1725630712-OIP.jpeg'),
(8, 122, 'Ezra Bennett', 499.00, 'Labore iusto volupta', 'uploads/2-1725709905-jewelry.PNG'),
(11, 116, 'Elmo Mcintosh', 937.00, 'Elmo Mcintosh', 'uploads/2-1725709956-454006511_1182520626397849_6114147418789778200_n.jpg'),
(9, 87, 'Banana', 12.00, 'pcs', 'uploads/18-1725854798-banana.jpg'),
(26, 88, 'SUMSVSUNG', 12000.00, 'SUMSVSUNG', 'uploads/7-1726305305-Google-Ads-Training-1-1.jpg'),
(15, 89, 'MaCbook Pro', 700000.00, 'item', 'uploads/7-1726375654-Google-Ads-Training-Course-Online-Masterclass.jpg'),
(40, 90, 'as', 0.00, 'as', 'uploads/1-1726864612-luemen-rutkowski-Sr-0bIyNkWc-unsplash.jpg'),
(21, 97, 'sa', 0.00, 'as', 'uploads/1-1727446642-Screenshot 2024-09-17 at 7.22.52 PM.png'),
(24, 98, 'as', 0.00, 'sa', 'uploads/1-1727446657-Screenshot 2024-09-17 at 7.22.42 PM.png'),
(14, 118, 'as', 0.00, 'as', 'uploads/1-1727446683-Screenshot 2024-09-17 at 7.22.42 PM.png'),
(30, 121, 'as', 0.00, 'sa', 'uploads/1-1727446706-vinayak-sharma-vgv19wm8yQ4-unsplash.jpg'),
(17, 96, 'asa', 0.00, 'sasa', 'uploads/1-1727446741-new.jpg');

select * from products