

select s.comuna, d.cantidad_doc
from licencia l
inner join (select idLicencia,count(*) cantidad_doc from Documentos group by idLicencia) d on l.idLicencia = d.idLicencia
inner join Sucursal s on l.idSucursal = s.idSucursal
where recibedoc = 1