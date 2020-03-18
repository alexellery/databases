use vk;

SELECT CONCAT(first_name, ' ', last_name) as person, 
count(l.id) as likes, count(m.id) as media, count(me.id) as messages, count(l.id) + count(m.id) + count(me.id) as overall_activity
FROM users u  
	LEFT JOIN likes l 
		ON u.id = l.user_id 
	LEFT JOIN media m  
		ON m.user_id = u.id 
	LEFT JOIN messages me 
		ON me.from_user_id = u.id
	GROUP BY person
ORDER by overall_activity
LIMIT 10; 

		