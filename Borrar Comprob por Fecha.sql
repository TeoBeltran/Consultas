/*
SELECT * INTO Comprobantes_16012025 FROM Comprobantes
SELECT * INTO ComprobantesDetalle_16012025 FROM ComprobantesDetalle
SELECT * INTO ComprobantesmImpuestos_16012025 FROM ComprobantesImpuestos
SELECT * INTO ComprobantesMediosPagos_16012025 FROM ComprobantesMediosPagos
SELECT * INTO Caja_16012025 FROM Caja
SELECT * INTO CajaMovimientos_16122024 from CajaMovimientos
SELECT * INTO C_Deudas_16012025 FROM C_Deudas
SELECT * INTO C_Pagos_16012025 FROM C_Pagos
SELECT * INTO Asientos_16012025 From Asientos
SELECT * INTO AsientosDetalle_16012025 From AsientosDetalle
*/


--update ConfigFacturacion set ProximaFacturaA = ProximaFacturaA - 1 where PuntoVenta = 2
Select * from ConfigFacturacion where PuntoVenta = 2


select * from comprobantes 
--delete comprobantes 
where Fecha between '19-12-2024' and '19-12-2024' and PuntoVenta = 2 and Tipo = 'FA'


select * from comprobantesDetalle 
--delete comprobantesDetalle 
where Fecha between '19-12-2024' and '19-12-2024' and PuntoVenta = 2 and Tipo = 'FA'


select * from comprobantesImpuestos 
--delete comprobantesImpuestos 
where Fecha between '19-12-2024' and '19-12-2024' and PuntoVenta = 2 and Tipo = 'FA'


select * from comprobantesMediosPagos 
--delete comprobantesMediosPagos 
where Fecha between '19-12-2024' and '19-12-2024' and PV = 2 and TipoCbte = 'FA'


select * from C_Deudas
--Delete C_Deudas
where Fecha between '19-12-2024' and '19-12-2024' and PV = 2 and TipoCbte = 'FA'


select * from C_Pagos
--Delete C_Pagos
where Fecha between '19-12-2024' and '19-12-2024' and PV = 2 and TipoCbte = 'FA'


select * from Asientos 
--delete Asientos
where Fecha between '19-12-2024' and '19-12-2024' and PV = 2 and TipoCbte = 'FA'


select * from AsientosDetalle 
--delete AsientosDetalle
where Asiento in (560532) 


select * from Caja
--delete Caja
where Fecha between '19-12-2024' and '19-12-2024' and PV = 2 and TipoCbte = 'FA'


select * from CajaMovimientos
--delete CajaMovimientos
where NroMovimiento in ()

