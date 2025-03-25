Select t.name as Tabla, 
	sum(a.total_pages) * 8 / 1024.0 / 1024.0 as SizeInGB
from sys.tables t
inner join sys.partitions p ON t.object_id = p.object_id
inner join sys.allocation_units a ON p.partition_id = a.container_id
group by t.name
order by SizeInGB desc
