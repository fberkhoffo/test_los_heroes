
select a.folioLicencia, e.promedio, f.tiempo_min, g.tiempo_max, a.monto
from Licencia a
inner join (
select l.idLicencia, avg(fechaFin - fechaIngreso) promedio
from Licencia l
inner join Estado e on l.idEstado = e.idEstado
where Estado = 'aprobada a pago'
group bu l.foliolicencia ) e on e.idLicencia = a.idLicencia
inner join (
select l.idLicencia, min(fechaFin - fechaIngreso) tiempo_min
from Licencia l
inner join Estado e on l.idEstado = e.idEstado
where Estado = 'aprobada a pago'
group bu l.foliolicencia ) f on f.idLicencia = a.idLicencia
inner join (
select l.idLicencia, max(fechaFin - fechaIngreso) tiempo_max
from Licencia l
inner join Estado e on l.idEstado = e.idEstado
where Estado = 'aprobada a pago'
group bu l.foliolicencia ) g on g.idLicencia = a.idLicencia