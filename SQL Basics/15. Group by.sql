SELECT * FROM learning_mysql.usuarios;

SELECT MAX(age) FROM learning_mysql.usuarios GROUP BY age;

SELECT COUNT(age), age FROM learning_mysql.usuarios GROUP BY age;

SELECT COUNT(age), age FROM learning_mysql.usuarios GROUP BY age ORDER BY age DESC;

SELECT COUNT(age), age FROM learning_mysql.usuarios WHERE age>60 GROUP BY age ORDER BY age DESC;

--This will arrange data into groups, for example in this last line of code will bring the frequency of each data,
--As a result we could see how many individuals we have from each kind of data group ny age Ex: if we have 6 individuals with age 26 will show the 
--number 6 and the same for each age

--This command will be often used with AVG SUM MIN MAX COUNT, Commands that alone will only show a math operation
