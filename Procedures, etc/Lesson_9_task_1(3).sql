USE shop;

CREATE FUNCTION hello()
RETURNS VARCHAR(255) NOT DETERMINISTIC
BEGIN
	CASE
		WHEN HOUR(NOW()) between 0 and 5 THEN 
			RETURN "Good night";
		WHEN HOUR(NOW()) between 6 and 11 THEN
			RETURN "Good morning";
		WHEN HOUR(NOW()) between 12 and 17 THEN
			RETURN "Good day";
		WHEN HOUR(NOW()) between 18 and 23 THEN
			RETURN "Good evening";
	END CASE;
END;

SELECT HOUR(NOW()) as time, hello() as hi;