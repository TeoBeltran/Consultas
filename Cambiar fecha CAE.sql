/*
Select * into ComprobantesImpuestos_MDA from ComprobantesImpuestos
Select * into ComprobantesDetalle_MDA from ComprobantesDetalle
Select * into Comprobantes_MDA from Comprobantes
Select * into Caja_MDA from Caja
*/

declare @pv int set @pv=35
declare @tipo nvarchar(2) set @tipo='TB'


declare	@fecha1 smalldatetime set @fecha1=getdate()
declare @fecha smalldatetime set  @fecha=convert (nvarchar(10),@fecha1,103)
declare @caja int set @caja= (select caja from cajas where puntoventa=@pv)
declare @tipocaja nvarchar (2) set @tipocaja=''
declare @min int set @min=(Select max(numero)+1 from comprobantes where tipo=@tipo and puntoventa=@pv and cae!='')
declare @max int set @max=(Select max(numero) from comprobantes where tipo=@tipo and puntoventa=@pv and cae='')


IF(@tipo='tb')
BEGIN
set @tipocaja='FB'
END
else if(@tipo='ta')
BEGIN
set @tipocaja='FA'
END


update ComprobantesImpuestos
set Fecha = @fecha-10
from Comprobantes
inner join ComprobantesImpuestos ci
on comprobantes.PuntoVenta = ci.PuntoVenta
and comprobantes.Tipo = ci.Tipo
and comprobantes.Numero = ci.numero
and comprobantes.Fecha = ci.Fecha 
where comprobantes.PuntoVenta = @pv and CAE= '' and comprobantes.Tipo = @tipo
and Comprobantes.Fecha <= @fecha -10

update ComprobantesDetalle 
set fecha = @fecha-10 
from Comprobantes
inner join ComprobantesDetalle cd
on comprobantes.PuntoVenta = cd.PuntoVenta
and comprobantes.Numero = cd.Numero
and comprobantes.Tipo = cd.Tipo
and comprobantes.Fecha = cd.Fecha 
where comprobantes.PuntoVenta = @pv and CAE = '' and comprobantes.Tipo =@tipo  
and comprobantes.Fecha <= @fecha-10

update Comprobantes
set Fecha = @fecha-10,Fechavto = @fecha+10, vtocae = @fecha+10 
from Comprobantes
where comprobantes.PuntoVenta = @pv and CAE = '' and comprobantes.Tipo = @tipo
and comprobantes.Fecha <= @fecha-10

update Caja
set Fecha = @fecha-10
where caja.pv= @pv and caja.Tipocbte = @tipo
and caja.Fecha <= @fecha-10
