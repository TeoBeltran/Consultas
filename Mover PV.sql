--BKP
SELECT * INTO Comprobantes_07032025 FROM Comprobantes
SELECT * INTO ComprobantesDetalle_07032025 FROM ComprobantesDetalle
SELECT * INTO ComprobantesmImpuestos_07032025 FROM ComprobantesImpuestos
SELECT * INTO ComprobantesMediosPagos_07032025 FROM ComprobantesMediosPagos
SELECT * INTO Caja_07032025 FROM Caja
SELECT * INTO CajaMovimientos_07032025 from CajaMovimientos
SELECT * INTO C_Deudas_07032025 FROM C_Deudas
SELECT * INTO C_Pagos_07032025 FROM C_Pagos
SELECT * INTO Asientos_07032025 From Asientos
SELECT * INTO AsientosDetalle_07032025 From AsientosDetalle

---------------------------------------------------------------------------------------------------
declare @pv int set @pv=9 --DEFINE PUNTO DE VENTA
declare @tipo nvarchar(2) set @tipo='TB' --DEFINE TIPO
declare @PrimerComp int set @PrimerComp=2714 --DEFINE EL PRIMER COMPROBANTE A MOVER 
declare @UltimoComp int set @UltimoComp=6650 --DEFINE EL ULTIMO COMPROBANTE A MOVER 
--declare @NroAjuste int set @NroAjuste=1 --DEFINE EL NUMERO QUE RESTA PARA AJUSTAR
---------------------------------------------------------------------------------------------------

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

update Comprobantes set Numero = Numero - ( ( @UltimoComp - @PrimerComp ) + 1 )
where PuntoVenta = @pv and Tipo= @tipo and Numero >= @UltimoComp +1

update ComprobantesDetalle set Numero = Numero - ( ( @UltimoComp - @PrimerComp ) + 1 )
where PuntoVenta = @pv and Tipo= @tipo and Numero = @UltimoComp +1

update ComprobantesImpuestos set Numero = Numero - ( ( @UltimoComp - @PrimerComp ) + 1 )
where PuntoVenta = @pv and Tipo= @tipo and Numero = @UltimoComp +1

update ComprobantesMediosPagos set NroCbte = NroCbte - ( ( @UltimoComp - @PrimerComp ) + 1 )
where PV = @pv and TipoCbte= @tipo and NroCbte = @UltimoComp +1

update C_Deudas set NroCbte = NroCbte - ( ( @UltimoComp - @PrimerComp ) + 1 )
where Pv = @pv and TipoCbte = @tipo and NroCbte = @UltimoComp +1

update C_Pagos set NroCbte = NroCbte - ( ( @UltimoComp - @PrimerComp ) + 1 )
where Pv = @pv and TipoCbte = @tipo and NroCbte = @UltimoComp +1

update Caja set NroCbte = NroCbte - ( ( @UltimoComp - @PrimerComp ) + 1 )
where Pv = @pv and TipoCbte = @tipo and NroCbte = @UltimoComp +1

update Asientos set NroCbte = NroCbte - ( ( @UltimoComp - @PrimerComp ) + 1 )
where Pv = @pv and TipoCbte = @tipo and NroCbte = @UltimoComp +1




