USE vk;

SELECT COUNT(*) as num_of_likes, gender as gender
	from likes 
	JOIN profiles
	ON likes.user_id = profiles.user_id
	group by gender
	ORDER by num_of_likes DESC
	LIMIT 1
    ;
    
   
 