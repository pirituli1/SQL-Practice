-- righ --right join 

Select u.id, u.email, p.name from user u RIGHT JOIN product p on u.id = p.created_by;