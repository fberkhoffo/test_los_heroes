
select t.Rut,t.Nombre, e.rutEmpresa, e.Nombre, e.Comuna
from Licencia l
inner join Trabajador t on l.idTrabajador = t.idTrabajador
inner join Empresa e on e.idEmpresa = t.idEmpresa
where t.afiliado = 'NO'