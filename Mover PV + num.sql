--BKP
SELECT * INTO Comprobantes_10072025 FROM Comprobantes
SELECT * INTO ComprobantesDetalle_10072025 FROM ComprobantesDetalle
SELECT * INTO ComprobantesmImpuestos_10072025 FROM ComprobantesImpuestos
SELECT * INTO ComprobantesMediosPagos_10072025 FROM ComprobantesMediosPagos
SELECT * INTO Caja_10072025 FROM Caja
SELECT * INTO CajaMovimientos_10072025 from CajaMovimientos
SELECT * INTO C_Deudas_10072025 FROM C_Deudas
SELECT * INTO C_Pagos_10072025 FROM C_Pagos
SELECT * INTO Asientos_10072025 From Asientos
SELECT * INTO AsientosDetalle_10072025 From AsientosDetalle

--VARIABLES----------------------------------------------------------------------------------------
declare @pv int set @pv=9 --Define Punto de Venta
declare @tipo nvarchar(2) set @tipo='TB' --Define TipoCbte
declare @PrimerComp int set @PrimerComp=2714 --Define el primer Comprobante a mover
declare @UltimoComp int set @UltimoComp=6650 --Define el último Comprobante a mover
--Si no se mueve la totalidad de los Cbtes, genera un espacio vacío que se moverá con la última consulta
---------------------------------------------------------------------------------------------------

--MOVER PV
update  Comprobantes set PuntoVenta = 1009, PuntoVentaTMP = 1009
where PuntoVenta = @pv and Tipo= @tipo and Numero Between @PrimerComp and @UltimoComp

update  ComprobantesDetalle set PuntoVenta = 1009, PuntoVentaTMP = 1009
where PuntoVenta = @pv and Tipo= @tipo and Numero Between @PrimerComp and @UltimoComp

update  ComprobantesImpuestos set PuntoVenta = 1009, PuntoVentaTMP = 1009
where PuntoVenta = @pv and Tipo= @tipo and Numero Between @PrimerComp and @UltimoComp

update ComprobantesMediosPagos set pv = 1009, PuntoVentaTMP = 1009
where PV = @pv and TipoCbte= @tipo and NroCbte Between @PrimerComp and @UltimoComp

update C_Deudas set pv = 1009
where Pv = @pv and TipoCbte = @tipo and NroCbte Between @PrimerComp and @UltimoComp

update C_Pagos set pv = 1009
where Pv = @pv and TipoCbte = @tipo and NroCbte Between @PrimerComp and @UltimoComp

update Caja set pv = 1009
where Pv = @pv and TipoCbte = @tipo and NroCbte Between @PrimerComp and @UltimoComp

update Asientos set pv = 1009
where Pv = @pv and TipoCbte = @tipo and NroCbte Between @PrimerComp and @UltimoComp




---------------------------------------------------------------------------------------------------
--MOVER NUMERACION---------------------------------------------------------------------------------

update Comprobantes set Numero = Numero - ( ( @UltimoComp - @PrimerComp ) + 1 )
where PuntoVenta = @pv and Tipo= @tipo and Numero >= @UltimoComp + 1

update ComprobantesDetalle set Numero = Numero - ( ( @UltimoComp - @PrimerComp ) + 1 )
where PuntoVenta = @pv and Tipo= @tipo and Numero = @UltimoComp + 1

update ComprobantesImpuestos set Numero = Numero - ( ( @UltimoComp - @PrimerComp ) + 1 )
where PuntoVenta = @pv and Tipo= @tipo and Numero = @UltimoComp + 1

update ComprobantesMediosPagos set NroCbte = NroCbte - ( ( @UltimoComp - @PrimerComp ) + 1 )
where PV = @pv and TipoCbte= @tipo and NroCbte = @UltimoComp + 1

update C_Deudas set NroCbte = NroCbte - ( ( @UltimoComp - @PrimerComp ) + 1 )
where Pv = @pv and TipoCbte = @tipo and NroCbte = @UltimoComp + 1

update C_Pagos set NroCbte = NroCbte - ( ( @UltimoComp - @PrimerComp ) + 1 )
where Pv = @pv and TipoCbte = @tipo and NroCbte = @UltimoComp + 1

update Caja set NroCbte = NroCbte - ( ( @UltimoComp - @PrimerComp ) + 1 )
where Pv = @pv and TipoCbte = @tipo and NroCbte = @UltimoComp + 1

update Asientos set NroCbte = NroCbte - ( ( @UltimoComp - @PrimerComp ) + 1 )
where Pv = @pv and TipoCbte = @tipo and NroCbte = @UltimoComp + 1




