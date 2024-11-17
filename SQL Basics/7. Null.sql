SELECT * FROM learning_mysql.usuarios LIMIT 2;

SELECT * FROM learning_mysql.usuarios WHERE email IS NULL;

SELECT * FROM learning_mysql.usuarios WHERE email IS NOT NULL;

SELECT * FROM learning_mysql.usuarios WHERE email IS NULL AND surname IS NOT NULL;