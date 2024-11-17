SELECT * FROM learning_mysql.usuarios;

SELECT * FROM learning_mysql.usuarios WHERE NOT age=26;

SELECT * FROM learning_mysql.usuarios WHERE NOT age=26 AND age>24

SELECT * FROM learning_mysql.usuarios WHERE email NOT LIKE "%@%" OR email IS NULL;

SELECT * FROM learning_mysql.usuarios WHERE email NOT LIKE "B@%" OR email IS NULL AND age>24;

SELECT * FROM learning_mysql.usuarios WHERE email NOT LIKE "%@hotmail.com" OR email IS NULL AND age > 24 AND user_id <4

