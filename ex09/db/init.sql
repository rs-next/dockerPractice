CREATE TABLE product_tb(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    price INT 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO product_tb (name,price) VALUES ('banana',1234);
INSERT INTO product_tb (name,price) VALUES ('apple',5000);