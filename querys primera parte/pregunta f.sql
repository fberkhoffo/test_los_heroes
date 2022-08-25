
select top 3 

p.pais, avg(monto) monto_promedio

from Arriendos a 
inner join Propiedad p on a.idPropiedad = p.idPropiedad

group by p.pais
order by 2 desc