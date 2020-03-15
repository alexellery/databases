use vk;

SELECT CONCAT(first_name, ' ', last_name) as owner, count(m.filename) as media
from
users u 
join
media m 
on 
u.id = m.user_id
group BY 
CONCAT(first_name, ' ', last_name)
order by 
media DESC;