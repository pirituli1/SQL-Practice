-- cross Join trae el producto cartesiano, selecciona 1 de la primera tabla y lo pone con cada uno de los registros de la otra y así sucesivamente 

SELECT u.id, u.name, p.id, p.name from user u cross join product p;