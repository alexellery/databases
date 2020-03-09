select timestampdiff(YEAR, birthday, NOW()) from profiles;

select AVG(timestampdiff(YEAR, birthday, NOW())) as avg_age from profiles;