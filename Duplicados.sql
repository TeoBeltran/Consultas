Select id from POS_Auditoria
where fecha = '15-02-2024'
group by id
having count (1)>1
order by id asc

Select Numero, PuntoVenta, Tipo from Comprobantes
where fecha = '15-02-2024'
group by Numero, PuntoVenta, Tipo
having count (1)>1
order by Numero asc