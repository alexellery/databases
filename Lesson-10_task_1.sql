CREATE INDEX communities_communities_user_idx ON communities_user (community_id, user_id);

CREATE INDEX media_user_id_media_type_id_idx ON media (user_id, media_type_id);

CREATE INDEX friends_user_id_friend_is_idx ON friends (user_id, friend_id);

CREATE INDEX posts_user_id_idx ON posts (user_id);