select * from TarjetaTicketTMP where fechaingreso = '08-01-2024' and cajero = 108 order by importe desc
--select * from TarjetaTicketTMP where fechaingreso = '11-01-2024' and cajero = 108 order by importe desc

select * from POS_Auditoria where fecha = '08-01-2024' and cajero = 108 and NroCbte=479158 order by importe desc
--select * from POS_Auditoria where fecha = '11-01-2024' and cajero = 108 and Acumulador = 133 NroCbte = 479360 order by importe desc

Select * into TarjetaTicketTMP_17012024 from TarjetaTicketTMP
