
select 
 r.nombre, count(*) propiedades_sin_arrendar

from Arriendos a
left join Propiedades p on a.idPropiedad = r.idPropiedad
inner join Propietarios r on p.idPropietario = r.idPropietario

where a.idPropiedad is null

group by r.nombre
having count(*) >= 1