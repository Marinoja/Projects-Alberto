/* 
command COUNT will show the number of results (not null) found in the table 
using the count in the identifier will bring the len of the table

*/

SELECT * FROM learning_mysql.usuarios;

SELECT COUNT(*) FROM learning_mysql.usuarios;

SELECT COUNT(email) FROM learning_mysql.usuarios;

SELECT COUNT(age) FROM learning_mysql.usuarios WHERE age <28;