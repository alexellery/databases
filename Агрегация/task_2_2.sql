SELECT DATE(CONCAT_WS('-', YEAR(NOW()), MONTH(birthday), DAY(birthday))) AS day from profiles;

SELECT COUNT(*) AS number, 
	DATE_FORMAT(DATE(CONCAT_WS('-', YEAR(NOW()), MONTH(birthday), DAY(birthday))), '%W') AS weekday from profiles 
GROUP BY weekday;