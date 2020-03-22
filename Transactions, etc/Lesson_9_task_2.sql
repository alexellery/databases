USE shop;

CREATE VIEW table_1 AS 
SELECT p.name, c.name AS catalog_name
FROM products p 
JOIN catalogs c 
ON p.catalog_id = c.id;

SELECT * from table_1;