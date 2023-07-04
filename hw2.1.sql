CREATE TABLE IF NOT EXISTS sales
( 
id INT PRIMARY KEY AUTO_INCREMENT,
order_data DATE NOT NULL,
count_product INT );


INSERT INTO sales (order_data, count_product)
VALUES
('2022-01-01', 156),
('2022-01-02', 180),
('2022-01-03', 21),
('2022-01-04', 124),
('2022-01-05', 341);

SELECT * FROM sales; 

ALTER TABLE sales
ADD COLUMN order_type INT;

SELECT
id "id заказа",
IF (count_product <100, "Маленький заказ",
	IF(count_product >=100 AND count_product <= 300, "Средний заказ",
		iF(count_product >300, "Большой заказ", "Неопределено"))) AS "Тип заказа"
FROM sales;

CREATE TABLE IF NOT EXISTS orders
(
id INT PRIMARY KEY AUTO_INCREMENT,
employee_id VARCHAR(5) NOT NULL,
amount DECIMAL NOT NULL,
order_status VARCHAR(10)
);

INSERT INTO orders (employee_id, amount, order_status)
VALUES
('e03', 15.00, 'OPEN'),
('e01', 25.50, 'OPEN'),
('e05', 100.70, 'CLOSED'),
('e02', 22.18, 'OPEN'),
('e04', 9.50, 'CANCELLED');

SELECT * FROM orders; 

SELECT order_status,
	CASE
		WHEN order_status = 'OPEN' THEN "Order is in open state"
        WHEN order_status = 'CLOSED' THEN "Order is closed"
        WHEN order_status = 'CANCELLED' THEN "Order is cancelled"
        ELSE "Error"
	END AS full_order_status
    FROM orders;





