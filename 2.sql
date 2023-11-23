1.Вывести название и стоимость в USD одного самого дорогого товара
SELECT TOP 1
ProductName, Price AS Price_usd
FROM Products
ORDER BY Price DESC
(LIMIT 1  - к сожалению не срабатывает с LIMIT, поэтому использовала TOP)


2.Вывести два самых дешевых товара из категории 1

SELECT TOP 2
ProductName,CategoryID
FROM Products
WHERE 
CategoryID IN (1)
ORDER BY Price ASC
LIMIT 2 ( - к сожалению не срабатывает с LIMIT, поэтому использовала TOP);

3.Удалить товары с ценой менее 50 EUR
DELETE FROM  Products
WHERE Price < 50;

4.Очистить поле ContactName у всех клиентов не из China
INSERT INTO Customers(ContactName,Country, Phone)
VALUES
('NEW 1', 'China', '0863456345'),
('NEW 2', 'China', '0863566375');

UPDATE Customers 
SET ContactName = ''
WHERE 
NOT Country = 'China'

5.Применить ко всем товарам постоянную скидку в 15%
SELECT
	ProductName,
    Price AS Price_full,
    Price * .85 AS Price_low
FROM Products

6.Вывести товар, который находится на третьем месте среди самых дорогих
SELECT
	ProductName,Price
FROM Products
ORDER BY Price DESC
LIMIT 3 OFFSET 3
