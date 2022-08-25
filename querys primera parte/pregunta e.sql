
select a.rutArrendatario, a.Nombre

from Arrendatario a 
inner join Arriendos r on a.idArrendatario = r.idArrendatario
inner join Propiedad d on r.idPropiedad = d.idPropiedad

where d.pais <> 'Chile'