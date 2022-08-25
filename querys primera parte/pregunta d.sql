

select p.rutPropietario , p.nombre 

from Propietarios p 
inner join Arrendatario a on p.rutPropietario = a.rutArrendatario 

