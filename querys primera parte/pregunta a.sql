

Select r.rutArrendatario, r.nombre 

from Arriendos a
inner join Arrendatarios r on a.idArrendatario = r.idArrendatario

where month(fechaFin) = month(getdate()) + 1 
