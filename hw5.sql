
CREATE TABLE cars
(
	id INT NOT NULL PRIMARY KEY,
    name VARCHAR(45),
    cost INT
);

INSERT cars
VALUES
	(1, "Audi", 52642),
    (2, "Mercedes", 57127 ),
    (3, "Skoda", 9000 ),
    (4, "Volvo", 29000),
	(5, "Bentley", 350000),
    (6, "Citroen ", 21000 ), 
    (7, "Hummer", 41400), 
    (8, "Volkswagen ", 21600);
    
SELECT *
FROM cars;

-- создайте представление, в которое попадут автомобили стоимостью до 25000 доллоров 

CREATE VIEW s AS
SELECT * FROM cars
WHERE cost < 25000; 

SELECT * FROM s;

-- изменить в существующем представлении порог стоимости до 30000  доллоров
ALTER VIEW s AS
SELECT * FROM cars
WHERE cost <30000;

SELECT * FROM s;

-- создайте представление, в котором будут только автомобили марки "Шкода", "Ауди" 
CREATE VIEW a AS
SELECT * FROM cars
WHERE name IN("Skoda", "Audi");

SELECT * FROM a;

-- получить ранжированный список автомобилей по цене в порядке возастания 
SELECT* 
DENSE_RANK() OVER(ORDER BY cost)AS `dense_rank`,
FROM cars
ORDER BY `rank`;




