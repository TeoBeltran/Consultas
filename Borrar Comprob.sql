/*
select * into comprobantes_ from comprobantes
select * into comprobantesDetalle_ from comprobantesDetalle
select * into comprobantesImpuestos_ from comprobantesImpuestos
select * into comprobantesMediosPagos_ from comprobantesMediosPagos
select * into C_Deudas_ from C_Deudas
select * into C_Pagos_ from C_Pagos
select * into Asientos_ from Asientos
select * into AsientosDetalle_ from AsientosDetalle
select * into Caja_ from Caja
select * into CajaMovimientos_ from CajaMovimientos
select * into ConfigFacturacion_ from ConfigFacturacion
*/


--update ConfigFacturacion set ProximaFacturaA = ProximaFacturaA - 1 where PuntoVenta = 2
Select * from ConfigFacturacion where PuntoVenta = 2


select * from comprobantes 
--delete comprobantes 
where Numero between 543340 and 543340 and PuntoVenta = 2 and Tipo = 'FA'


select * from comprobantesDetalle 
--delete comprobantesDetalle 
where Numero between 543340 and 543340 and PuntoVenta = 2 and Tipo = 'FA'


select * from comprobantesImpuestos 
--delete comprobantesImpuestos 
where Numero between 543340 and 543340 and PuntoVenta = 2 and Tipo = 'FA'


select * from comprobantesMediosPagos 
--delete comprobantesMediosPagos 
where NroCbte between 543340 and 543340 and PV = 2 and TipoCbte = 'FA'


select * from C_Deudas
--Delete C_Deudas
where NroCbte between 543340 and 543340 and PV = 2 and TipoCbte = 'FA'


select * from C_Pagos
--Delete C_Pagos
where NroCbte between 543340 and 543340 and PV = 2 and TipoCbte = 'FA'


select * from Asientos 
--delete Asientos
where NroCbte between 543340 and 543340 and PV = 2 and TipoCbte = 'FA'


select * from AsientosDetalle 
--delete AsientosDetalle
where Asiento in (560532) 


select * from Caja
--delete Caja
where NroCbte between 543340 and 543340 and PV = 2 and TipoCbte = 'FA'


select * from CajaMovimientos
--delete CajaMovimientos
where NroMovimiento in ()
