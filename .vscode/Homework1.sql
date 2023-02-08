-- создаём базу данных
DROP DATABASE IF EXISTS homework_1;
CREATE DATABASE homework_1;
USE homework_1;

-- телефоны
CREATE TABLE mobils(
	id INT AUTO_INCREMENT NOT NULL PRIMARY KEY, 
	product_name VARCHAR(45) NOT NULL, 
	manufacturer VARCHAR(45) NOT NULL,
	product_count INT,
    price INT
);

-- наполнение
INSERT INTO mobils (product_name, manufacturer, product_count, price)
VALUES 
('iPhone X', 'Apple', 3, 76000),
('iPhone 8', 'Apple', 2, 51000),
('Galaxy S9', 'Samsung', 2, 56000),
('Galaxy S8', 'Samsung', 1, 41000),
('P20 Pro', 'Huawei', 5, 36000);	

--Выведите название, производителя и цену для товаров, количество которых превышает 2
SELECT id, product_name, manufacturer, price FROM mobils
WHERE product_count > 2;

--Выведите весь ассортимент товаров марки “Samsung”
SELECT id, manufacturer, product_count, price FROM mobils
WHERE product_name = 'Samsung';

--С помощью регулярных выражений найти:
	--4.1. Товары, в которых есть упоминание "Iphone"
	--4.2. Товары, в которых есть упоминание "Samsung"
	--4.3.  Товары, в которых есть ЦИФРЫ
	--4.4.  Товары, в которых есть ЦИФРА "8"  
