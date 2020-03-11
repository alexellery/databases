SELECT COUNT(*) as likes
	from likes 
	where target_type_id = 2
	AND target_id IN (SELECT * FROM (SELECT user_id FROM profiles ORDER BY timestampdiff(YEAR, birthday, NOW()) LIMIT 10) temp_tab);