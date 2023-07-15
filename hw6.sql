/*  Создайте процедуру, которая принимает кол во сек и форматирует их в кол во дней, часов, минут и секунд */
CREATE DATABASE hw6;
USE hw6;
DROP FUNCTION find_time;
DELIMITER $$
     CREATE FUNCTION find_time (n INT)
	 RETURNS VARCHAR(50)
     DETERMINISTIC 
     BEGIN
		DECLARE result VARCHAR(50) DEFAULT '';
        DECLARE days INT DEFAULT 0;
		DECLARE hours INT DEFAULT 0;
		DECLARE minutes INT DEFAULT 0;
        
		SET deys = n DIV 86400;
        IF days > 0 THEN
        SET result = CONCAT(result,' ', days, ' ', 'days');
        SET n = n % 86400;
        END IF;
        
        SET hours = n DIV 3600;
        IF hours > 0 THEN
        SET result = CONCAT(result,' ', hours, ' ', 'hours');
        SET n = n % 3600;
        END IF;
        
        SET minutes = n DIV 60;
        IF minutes > 0 THEN
        SET result = CONCAT(result,' ', minutes, ' ', 'minutes');
        SET n = n % 60;
        END IF;
        
        IF n > 0 THEN 
        SET result = CONCAT(result, ' ', n, ' ', 'seconds');
        END IF;
        RETURN result;
	END $$;
	DELIMITER ;
        
	SELECT find_time(1562);
    
-- создайте процедуру которая выводит только четные числа от 1 до 10 включительно 
DROP PROCEDURE even_numbers;
DELIMITER $$
CREATE PROCEDURE even_numbers()
BEGIN 

	DECLARE result VARCHAR(50) DEFAULT '';
    DECLARE n INT DEFAULT 1;
    WHILE n < 10 DO
		 IF n%2=0 THEN
    SET result = CONCAT(result, ' ', n);
    END IF;
    SET n = n + 1;
    END WHILE;
    SELECT result;
    END $$
    DELIMITER ;
   
    CALL even_numbers;
        
		