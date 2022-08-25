
select p.rutPropietario , p.nombre, s.monto_promedio, d.monto_minimo,f.monto_maximo

from Propietarios p 
inner join Arrendatario a on p.rutPropietario = a.rutArrendatario 
inner join (select idArrendatario,avg(monto) monto_promedio from Arriendos group by idArrendatario) s on a.idArrendatario = s.idArrendatario
inner join (select idArrendatario,min(monto) monto_minimo from Arriendos group by idArrendatario) d on a.idArrendatario = d.idArrendatario
inner join (select idArrendatario,max(monto) monto_maximo from Arriendos group by idArrendatario) f on a.idArrendatario = f.idArrendatario