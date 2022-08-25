

select tipoDocumento,count(*) cantidad_documento
from VisadoDocumento vd
inner join Estado e on vd.idEstado = e.idEstado
inner join Documento d on ve.idDocumento = d.idDocumentos
where e.Estado = 'documento faltante'
group by tipoDocumento