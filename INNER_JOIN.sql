-- inner Join, trae la intersección de ambas tablas 

Select u.id, u.email, p.name from user u INNER JOIN product p on u.id = p.created_by;