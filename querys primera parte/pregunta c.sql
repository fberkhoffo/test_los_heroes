

select 
 r.nombre,p.pais, count(*) propiedades

from Propiedades p 
inner join Propietarios r on p.idPropietario = r.idPropietario



group by r.nombre,p.pais
