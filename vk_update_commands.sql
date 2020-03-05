use vk;

select * from users;

UPDATE users SET updated_at = current_timestamp where created_at > updated_at;

CREATE TEMPORARY TABLE gender (gender CHAR(1));

INSERT into genders (name) values ('m'), ('f');

UPDATE profiles SET gender = (SELECT gender from gender ORDER BY RAND LIMIT 1); 

UPDATE profiles SET updated_at = current_timestamp where created_at > updated_at;

SELECT * FROM messages;

update messages SET
from_user_id = FLOOR(1 + (RAND() * 100)),
to_user_id = FLOOR(1 + (RAND() * 100));

SELECT * from media_types;

TRUNCATE media_types;

INSERT into media_types (name) values
('photo'),
('video'),
('audio')
;

select * FROM  media limit 10;

UPDATE media SET media_type_id = FLOOR(1 + (RAND() * 3));

UPDATE media SET user_id  = FLOOR(1 + (RAND() * 100));

UPDATE media SET filename = CONCAT('https://mega.nz/vk/file_', filename);

UPDATE media SET size = FLOOR(10000 + (RAND() * 1000000)) WHERE size = 0;

update media SET metadata  = CONCAT('{"owner":"', 
	(SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE id = user_id),
	'"}');

ALTER table media modify column metadata JSON;

SELECT * from friends;

update friends SET
user_id = FLOOR(1 + (RAND() * 100)),
friend_id = FLOOR(1 + (RAND() * 100));

Alter table friends modify column requestes_at requested_at datetime default now();

UPDATE friends SET confirmed_at = current_timestamp where requested_at > confirmed_at;

select * from friendship_statuses;

TRUNCATE friendship_statuses;

INSERT into friendshp_statuses (name) values
('Requested'),
('Confirmed'),
('Rejected')
;

UPDATE profiles SET updated_at = current_timestamp where created_at > updated_at;

select * from communities;

delete from communities where id > 20;

ALTER table communities add column description longtext;;

UPDATE communities_user SET community_id = FLOOR(1 + (RAND() * 20));

alter table communities_user add column joined_on datetime default now();

alter table communities_user add column is_admin boolean;

alter table communities_user add column is_moderator boolean;


