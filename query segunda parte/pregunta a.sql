
select e.rutEmpresa,nombre,count(*) empleados_licencia
from licencia l
inner join empresa e on l.idEmpresa = e.idEmpresa
group by e.rutEmpresa,nombre