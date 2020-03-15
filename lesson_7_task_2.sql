use vk;

SELECT m.filename, m.metadata, mt.name
from 
media m 
join
media_types mt 
WHERE 
m.media_type_id = mt.id
ORDER BY 
mt.name; 