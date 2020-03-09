UPDATE users SET created_at = STR_TO_DATE(created_at, '%d.%m.%y %k.%i'), updated_at = STR_TO_DATE(updated_at, '%d.%m.%y %k.%i');

ALTER TABLE users change created_at created_at datetime default now();

ALTER TABLE users change updated_at updated_at datetime default now() on update current_timestamp;