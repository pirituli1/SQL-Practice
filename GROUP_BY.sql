-- Group by
-- Agrupa elementos, en registros indivuales. Con todos algo en común 

-- Count 
Select count(id), marca from product group by marca; 
-- cuenta cuantos productos hay de cada marca por ejemplo (el primero marca cuál deberán tener en común, adelante marcamos que más informacion requerimos
-- después seleccionamos de que tabla deseamos obtener la información y como lo queremos agrupado 

SELECT count(p.id), u.name from product p left join user u on u.id = p.created_by group by p.created_by;

-- podemos seleccionar que las consultas de group by, solo arroje consultas que sean relevantes 
-- como una condicion. 
-- le agreamos la condicion de "having count(p.id) >=2" 
SELECT count(p.id), u.name from product p left join user u on u.id = p.created_by group by p.created_by
having count(p.id) >=2 ;

