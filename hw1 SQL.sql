SELECT * FROM cell_phones.cell_phones;

-- Выведите название, производителя и цену для товаров, количество которых превышает 2
SELECT name, manufacturer, price FROM cell_phones
WHERE quantity > 2;

-- Выведите весь ассортимент товаров марки “Samsung”
SELECT * FROM cell_phones
WHERE manufacturer = 'Samsung';