SELECT id, value, IF(value > 0, 0, 1) AS sort FROM storehouses_products ORDER BY value;

select * FROM storehouses_products ORDER_BY IF(value > 0, 0, 1), value;