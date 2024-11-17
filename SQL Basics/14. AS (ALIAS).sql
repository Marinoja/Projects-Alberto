-- This command will be helpful for identification of variables without changing the structure

SELECT name AS "Nombre", age AS "Edad" FROM learning_mysql.usuarios;

SELECT CONCAT("Nombre: ", name," ", "Apellido: ", surname) AS "Nombre completo" FROM learning_mysql.usuarios;

SELECT CONCAT("Nombre: ", name,"  ", "Apellido: ", IFNULL(surname, "")) AS "Nombre completo" FROM learning_mysql.usuarios;

-- In this case using IFNNULL will bring the value even if he does not find any result in the row in this case we do not have any value
-- meaning that the cell will bring a null value  back, the IFNULL will replace that result for any value given between ""

SELECT CONCAT("Nombre: ", name,"  ", "Apellido: ", COALESCE(surname, "")) AS "Nombre completo" FROM learning_mysql.usuarios;

-- Command COALESCE does exactly the same function the meaning is "choose the first non-null value" 