/*
select * into comprobantes_14112025 from comprobantes
select * into comprobantesDetalle_14112025 from comprobantesDetalle
select * into comprobantesImpuestos_14112025 from comprobantesImpuestos
select * into comprobantesMediosPagos_14112025 from comprobantesMediosPagos
select * into C_Deudas_14112025 from C_Deudas
select * into C_Pagos_14112025 from C_Pagos
select * into Asientos_14112025 from Asientos
select * into AsientosDetalle_14112025 from AsientosDetalle
select * into Caja_14112025 from Caja
select * into CajaMovimientos_14112025 from CajaMovimientos
select * into ConfigFacturacion_14112025 from ConfigFacturacion
*/


--update ConfigFacturacion set ProximaFacturaA = ProximaFacturaA - 1 where PuntoVenta = 2
Select * from ConfigFacturacion where PuntoVenta = 2


select * from comprobantes 
--delete comprobantes 
where Numero between 543340 and 543340 and PuntoVenta = 2 and Tipo = 'FA' --and Fecha = '14-11-2025'


select * from comprobantesDetalle 
--delete comprobantesDetalle 
where Numero between 543340 and 543340 and PuntoVenta = 2 and Tipo = 'FA' --and Fecha = '14-11-2025'


select * from comprobantesImpuestos 
--delete comprobantesImpuestos 
where Numero between 543340 and 543340 and PuntoVenta = 2 and Tipo = 'FA' --and Fecha = '14-11-2025'


select * from comprobantesMediosPagos 
--delete comprobantesMediosPagos 
where NroCbte between 543340 and 543340 and PV = 2 and TipoCbte = 'FA' --and Fecha = '14-11-2025'


select * from C_Deudas
--Delete C_Deudas
where NroCbte between 543340 and 543340 and PV = 2 and TipoCbte = 'FA' --and Fecha = '14-11-2025'


select * from C_Pagos
--Delete C_Pagos
where NroCbte between 543340 and 543340 and PV = 2 and TipoCbte = 'FA' --and Fecha = '14-11-2025'


select * from Asientos 
--delete Asientos
where NroCbte between 543340 and 543340 and PV = 2 and TipoCbte = 'FA' --and Fecha = '14-11-2025'


select * from AsientosDetalle 
--delete AsientosDetalle
where Asiento in (560532) 


select * from Caja
--delete Caja
where NroCbte between 543340 and 543340 and PV = 2 and TipoCbte = 'FA' --and Fecha = '14-11-2025'


select * from CajaMovimientos
--delete CajaMovimientos
where NroMovimiento in ()


--
