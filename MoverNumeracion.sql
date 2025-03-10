

--BKP

SELECT * INTO Comprobantes_27122024 FROM Comprobantes
SELECT * INTO ComprobantesDetalle_27122024 FROM ComprobantesDetalle
SELECT * INTO ComprobantesmImpuestos_27122024 FROM ComprobantesImpuestos
SELECT * INTO ComprobantesMediosPagos_27122024 FROM ComprobantesMediosPagos
SELECT * INTO Caja_27122024 FROM Caja
SELECT * INTO C_Deudas_27122024 FROM C_Deudas
SELECT * INTO C_Pagos_27122024 FROM C_Pagos
SELECT * INTO Asientos_27122024 From Asientos
SELECT * INTO AsientosDetalle_27122024 From AsientosDetalle

---------------------------------------------------------------------------------------------------

declare @pv int set @pv=15 --DEFINE PUNTO DE VENTA
declare @tipo nvarchar(2) set @tipo='FB' --DEFINE TIPO
declare @PrimerComp int set @PrimerComp=11111 --DEFINE EL PRIMER COMPROBANTE A MOVER 
declare @UltimoComp int set @UltimoComp=99999 --DEFINE EL ULTIMO COMPROBANTE A MOVER 
declare @NroAjuste int set @NroAjuste=1 --DEFINE EL NUMERO QUE RESTA PARA AJUSTAR
---------------------------------------------------------------------------------------------------
update  Comprobantes 
set numero = numero - @NroAjuste, numerotmp = numerotmp - @NroAjuste
where PuntoVenta = @pv and Tipo= @tipo and Numero Between @PrimerComp and @UltimoComp

update  ComprobantesDetalle 
set numero = numero - @NroAjuste, numerotmp = numerotmp - @NroAjuste
where PuntoVenta = @pv and Tipo= @tipo and Numero Between @PrimerComp and @UltimoComp

update  ComprobantesImpuestos 
set numero = numero - @NroAjuste, numerotmp = numerotmp - @NroAjuste
where PuntoVenta = @pv and Tipo= @tipo and Numero Between @PrimerComp and @UltimoComp
---------------------------------------------------------------------------------------------------
update ComprobantesMediosPagos 
set NroCbte = NroCbte - @NroAjuste, numerotmp = numerotmp - @NroAjuste
where PV = @pv and TipoCbte= @tipo and NroCbte Between @PrimerComp and @UltimoComp
---------------------------------------------------------------------------------------------------
update  C_Deudas
set nrocbte = nrocbte -@NroAjuste
where Pv = @pv and TipoCbte = @tipo and NroCbte Between @PrimerComp and @UltimoComp
---------------------------------------------------------------------------------------------------
update  C_Pagos
set nrocbte = nrocbte -@NroAjuste
where Pv = @pv and TipoCbte = @tipo and NroCbte Between @PrimerComp and @UltimoComp

---------------------------------------------------------------------------------------------------
update  Caja 
set nrocbte = nrocbte -@NroAjuste
where Pv = @pv and TipoCbte = @tipo and NroCbte Between @PrimerComp and @UltimoComp
---------------------------------------------------------------------------------------------------
update  Asientos 
set nrocbte = nrocbte -@NroAjuste
where Pv = @pv and TipoCbte = @tipo and NroCbte Between @PrimerComp and @UltimoComp





