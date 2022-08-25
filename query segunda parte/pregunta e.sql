


select d.tipoDocumento, 
f.total_mix, (f.total_mix/(select count(*) 
							from Licencia))/100 '% mixto',
g.total_manual, (g.total_manual/(select count(*) 
							from Licencia))/100 '% manual',
h.total_online, (g.total_manual/(select count(*) 
							from Licencia))/100 '% online',
from Documentos d
inner join (
select tipoDocumento, count(*) total_mix
from Licencia l
inner join Documentos d on l.idDocumento = d.idDocumento
where tipoDocumento = 'MIXTO'
group by tipoDocumento) f on d.tipoDocumento = f.tipoDocumento
inner join (
select tipoDocumento, count(*) total_manual
from Licencia l
inner join Documentos d on l.idDocumento = d.idDocumento
where tipoDocumento = 'Manual'
group by tipoDocumento )g on d.tipoDocumento = g.tipoDocumento
inner join (
select tipoDocumento, count(*) total_online
from Licencia l
inner join Documentos d on l.idDocumento = d.idDocumento
where tipoDocumento = 'online'
group by tipoDocumento)h on d.tipoDocumento = h.tipoDocumento