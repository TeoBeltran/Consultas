DECLARE @Fecha smalldatetime 
SET @Fecha = '10/05/2025'
DECLARE @NroCaja integer
SET @NroCaja = 10

SELECT   CASE WHEN Tipo = 'SUPERV' THEN
                   'SUP ' +
                   REPLICATE('0', 16 - LEN(CAST(CAST(Codigo AS decimal(16, 0)) as nvarchar))) + CAST(CAST(Codigo AS decimal(16, 0)) as nvarchar) +
                   '  ' +
                   REPLICATE('0', 2 - LEN(CAST(CAST(DATEPART (dd, Fecha) AS decimal(2, 0)) as nvarchar))) + CAST(CAST(DATEPART (dd, Fecha) AS decimal(2, 0)) as nvarchar) +
                   REPLICATE('0', 2 - LEN(CAST(CAST(DATEPART (mm, Fecha) AS decimal(2, 0)) as nvarchar))) + CAST(CAST(DATEPART (mm, Fecha) AS decimal(2, 0)) as nvarchar) +
                   REPLICATE('0', 4 - LEN(CAST(CAST(DATEPART (yyyy, Fecha) AS decimal(4, 0)) as nvarchar))) + CAST(CAST(DATEPART (yyyy, Fecha) AS decimal(4, 0)) as nvarchar) +
                   ' ' +
                   SUBSTRING(Hora, 1, 2) +
                   SUBSTRING(Hora, 4, 2) +
                   '    '
              WHEN Tipo = 'INICIALIZO' THEN
                   'ARRANQUE       ' +
                   '       ' +
                   REPLICATE('0', 2 - LEN(CAST(CAST(DATEPART (dd, Fecha) AS decimal(2, 0)) as nvarchar))) + CAST(CAST(DATEPART (dd, Fecha) AS decimal(2, 0)) as nvarchar) +
                   REPLICATE('0', 2 - LEN(CAST(CAST(DATEPART (mm, Fecha) AS decimal(2, 0)) as nvarchar))) + CAST(CAST(DATEPART (mm, Fecha) AS decimal(2, 0)) as nvarchar) +
                   REPLICATE('0', 4 - LEN(CAST(CAST(DATEPART (yyyy, Fecha) AS decimal(4, 0)) as nvarchar))) + CAST(CAST(DATEPART (yyyy, Fecha) AS decimal(4, 0)) as nvarchar) +
                   ' ' +
                   SUBSTRING(Hora, 1, 2) +
                   SUBSTRING(Hora, 4, 2) +
                   '    '
              WHEN Tipo = 'LOGIN' THEN
                   'ENTRA      ' +
                   REPLICATE('0', 4 - LEN(CAST(CAST(Codigo AS decimal(4, 0)) as nvarchar))) + CAST(CAST(Codigo AS decimal(4, 0)) as nvarchar) +
                   '       ' +
                   REPLICATE('0', 2 - LEN(CAST(CAST(DATEPART (dd, Fecha) AS decimal(2, 0)) as nvarchar))) + CAST(CAST(DATEPART (dd, Fecha) AS decimal(2, 0)) as nvarchar) +
                   REPLICATE('0', 2 - LEN(CAST(CAST(DATEPART (mm, Fecha) AS decimal(2, 0)) as nvarchar))) + CAST(CAST(DATEPART (mm, Fecha) AS decimal(2, 0)) as nvarchar) +
                   REPLICATE('0', 4 - LEN(CAST(CAST(DATEPART (yyyy, Fecha) AS decimal(4, 0)) as nvarchar))) + CAST(CAST(DATEPART (yyyy, Fecha) AS decimal(4, 0)) as nvarchar) +
                   ' ' +
                   SUBSTRING(Hora, 1, 2) +
                   SUBSTRING(Hora, 4, 2) +
                   '    '
              WHEN Tipo = 'LOGOUT' THEN
                   'SALE       ' +
                   REPLICATE('0', 4 - LEN(CAST(CAST(Codigo AS decimal(4, 0)) as nvarchar))) + CAST(CAST(Codigo AS decimal(4, 0)) as nvarchar) +
                   '       ' +
                   REPLICATE('0', 2 - LEN(CAST(CAST(DATEPART (dd, Fecha) AS decimal(2, 0)) as nvarchar))) + CAST(CAST(DATEPART (dd, Fecha) AS decimal(2, 0)) as nvarchar) +
                   REPLICATE('0', 2 - LEN(CAST(CAST(DATEPART (mm, Fecha) AS decimal(2, 0)) as nvarchar))) + CAST(CAST(DATEPART (mm, Fecha) AS decimal(2, 0)) as nvarchar) +
                   REPLICATE('0', 4 - LEN(CAST(CAST(DATEPART (yyyy, Fecha) AS decimal(4, 0)) as nvarchar))) + CAST(CAST(DATEPART (yyyy, Fecha) AS decimal(4, 0)) as nvarchar) +
                   ' ' +
                   SUBSTRING(Hora, 1, 2) +
                   SUBSTRING(Hora, 4, 2) +
                   '    '
              WHEN Tipo = 'PV' THEN
                   'PV         ' +
                   REPLICATE('0', 4 - LEN(CAST(CAST(Codigo AS decimal(4, 0)) as nvarchar))) + CAST(CAST(Codigo AS decimal(4, 0)) as nvarchar) +
                   '       ' +
                   REPLICATE('0', 2 - LEN(CAST(CAST(DATEPART (dd, Fecha) AS decimal(2, 0)) as nvarchar))) + CAST(CAST(DATEPART (dd, Fecha) AS decimal(2, 0)) as nvarchar) +
                   REPLICATE('0', 2 - LEN(CAST(CAST(DATEPART (mm, Fecha) AS decimal(2, 0)) as nvarchar))) + CAST(CAST(DATEPART (mm, Fecha) AS decimal(2, 0)) as nvarchar) +
                   REPLICATE('0', 4 - LEN(CAST(CAST(DATEPART (yyyy, Fecha) AS decimal(4, 0)) as nvarchar))) + CAST(CAST(DATEPART (yyyy, Fecha) AS decimal(4, 0)) as nvarchar) +
                   ' ' +
                   SUBSTRING(Hora, 1, 2) +
                   SUBSTRING(Hora, 4, 2) +
                   '    '
              WHEN LEFT(Tipo, 6) = 'CLIENF' THEN
                   'TK. ' +
                   RIGHT(Tipo, 1) +
                   REPLICATE('0', 16 - LEN(CAST(CAST(Codigo AS decimal(16, 0)) as nvarchar))) + CAST(CAST(Codigo AS decimal(16, 0)) as nvarchar) +
                   ' ' +
                   REPLICATE('0', 2 - LEN(CAST(CAST(DATEPART (dd, Fecha) AS decimal(2, 0)) as nvarchar))) + CAST(CAST(DATEPART (dd, Fecha) AS decimal(2, 0)) as nvarchar) +
                   REPLICATE('0', 2 - LEN(CAST(CAST(DATEPART (mm, Fecha) AS decimal(2, 0)) as nvarchar))) + CAST(CAST(DATEPART (mm, Fecha) AS decimal(2, 0)) as nvarchar) +
                   REPLICATE('0', 4 - LEN(CAST(CAST(DATEPART (yyyy, Fecha) AS decimal(4, 0)) as nvarchar))) + CAST(CAST(DATEPART (yyyy, Fecha) AS decimal(4, 0)) as nvarchar) +
                   ' ' +
                   SUBSTRING(Hora, 1, 2) +
                   SUBSTRING(Hora, 4, 2) +
                   '    '
              WHEN Tipo = 'PTOSC' AND CodigoInterno <> 0 THEN
                   'PTOSC' +
                   REPLICATE('0', 16 - LEN(CAST(CAST(CodigoInterno AS decimal(16, 0)) as nvarchar))) + CAST(CAST(CodigoInterno AS decimal(16, 0)) as nvarchar) +
                   ' ' +
                   REPLICATE('0', 2 - LEN(CAST(CAST(DATEPART (dd, Fecha) AS decimal(2, 0)) as nvarchar))) + CAST(CAST(DATEPART (dd, Fecha) AS decimal(2, 0)) as nvarchar) +
                   REPLICATE('0', 2 - LEN(CAST(CAST(DATEPART (mm, Fecha) AS decimal(2, 0)) as nvarchar))) + CAST(CAST(DATEPART (mm, Fecha) AS decimal(2, 0)) as nvarchar) +
                   REPLICATE('0', 4 - LEN(CAST(CAST(DATEPART (yyyy, Fecha) AS decimal(4, 0)) as nvarchar))) + CAST(CAST(DATEPART (yyyy, Fecha) AS decimal(4, 0)) as nvarchar) +
                   ' ' +
                   SUBSTRING(Hora, 1, 2) +
                   SUBSTRING(Hora, 4, 2) +
                   '    '
              WHEN LEFT(Tipo, 4) = 'ABRE' THEN
                   CASE WHEN TipoCbte = 'TK' THEN 'INIT '
                        WHEN TipoCbte = 'FA' OR TipoCbte = 'FB' OR TipoCbte = 'RM' THEN 'INIFC'
                        WHEN TipoCbte = 'CA' OR TipoCbte = 'CB' OR TipoCbte = 'CM' THEN 'ININC'
                   END +
                   REPLICATE('0', 8 - LEN(CAST(CAST(Codigo AS decimal(8, 0)) as nvarchar))) + CAST(CAST(Codigo AS decimal(8, 0)) as nvarchar) +
                   ' ' +
                   REPLICATE('0', 3 - LEN(CAST(CAST(Cajero AS decimal(3, 0)) as nvarchar))) + CAST(CAST(Cajero AS decimal(3, 0)) as nvarchar) +
                   ' ' +
                   REPLICATE('0', 2 - LEN(CAST(CAST(DATEPART (dd, Fecha) AS decimal(2, 0)) as nvarchar))) + CAST(CAST(DATEPART (dd, Fecha) AS decimal(2, 0)) as nvarchar) +
                   REPLICATE('0', 2 - LEN(CAST(CAST(DATEPART (mm, Fecha) AS decimal(2, 0)) as nvarchar))) + CAST(CAST(DATEPART (mm, Fecha) AS decimal(2, 0)) as nvarchar) +
                   REPLICATE('0', 4 - LEN(CAST(CAST(DATEPART (yyyy, Fecha) AS decimal(4, 0)) as nvarchar))) + CAST(CAST(DATEPART (yyyy, Fecha) AS decimal(4, 0)) as nvarchar) +
                   '      ' +
                   SUBSTRING(Hora, 1, 2) +
                   SUBSTRING(Hora, 4, 2) +
                   '   '
              WHEN LEFT(Tipo, 6) = 'CERRAR' THEN
                   CASE WHEN TipoCbte = 'TK' THEN 'FINAL'
                        WHEN TipoCbte = 'FA' OR TipoCbte = 'FB' OR TipoCbte = 'RM' THEN 'FINFC'
                        WHEN TipoCbte = 'CA' OR TipoCbte = 'CB' OR TipoCbte = 'CM' THEN 'FINNC'
                   END +
                   REPLICATE('0', 8 - LEN(CAST(CAST(Codigo AS decimal(8, 0)) as nvarchar))) + CAST(CAST(Codigo AS decimal(8, 0)) as nvarchar) +
                   ' ' +
                   REPLICATE('0', 3 - LEN(CAST(CAST(Cajero AS decimal(3, 0)) as nvarchar))) + CAST(CAST(Cajero AS decimal(3, 0)) as nvarchar) +
                   ' ' +
                   REPLICATE('0', 2 - LEN(CAST(CAST(DATEPART (dd, Fecha) AS decimal(2, 0)) as nvarchar))) + CAST(CAST(DATEPART (dd, Fecha) AS decimal(2, 0)) as nvarchar) +
                   REPLICATE('0', 2 - LEN(CAST(CAST(DATEPART (mm, Fecha) AS decimal(2, 0)) as nvarchar))) + CAST(CAST(DATEPART (mm, Fecha) AS decimal(2, 0)) as nvarchar) +
                   REPLICATE('0', 4 - LEN(CAST(CAST(DATEPART (yyyy, Fecha) AS decimal(4, 0)) as nvarchar))) + CAST(CAST(DATEPART (yyyy, Fecha) AS decimal(4, 0)) as nvarchar) +
                   '      ' +
                   SUBSTRING(Hora, 1, 2) +
                   SUBSTRING(Hora, 4, 2) +
                   '   '
              WHEN Tipo = 'DTO' THEN
                   'DEPTO' +
                   '            ' +
                   REPLICATE(' ', 9 - LEN(CAST(CAST(Cantidad AS decimal(8, 3)) as nvarchar))) + CAST(CAST(Cantidad AS decimal(8, 3)) as nvarchar) +
                   REPLICATE(' ', 10 - LEN(CAST(CAST(Importe AS decimal(9, 2)) as nvarchar))) + CAST(CAST(Importe AS decimal(9, 2)) as nvarchar) +
                   REPLICATE(' ', 3 - LEN(CAST(CAST(Acumulador AS decimal(3, 0)) as nvarchar))) + CAST(CAST(Acumulador AS decimal(3, 0)) as nvarchar)
              WHEN Tipo = 'PLU' THEN
                   'PLU ' +
                   REPLICATE('0', 13 - LEN(CAST(CAST(Codigo AS decimal(13, 0)) as nvarchar))) + CAST(CAST(Codigo AS decimal(13, 0)) as nvarchar) +
                   REPLICATE(' ', 9 - LEN(CAST(CAST(Cantidad AS decimal(8, 3)) as nvarchar))) + CAST(CAST(Cantidad AS decimal(8, 3)) as nvarchar) +
                   REPLICATE(' ', 10 - LEN(CAST(CAST(Importe AS decimal(9, 2)) as nvarchar))) + CAST(CAST(Importe AS decimal(9, 2)) as nvarchar) +
                   REPLICATE(' ', 3 - LEN(CAST(CAST(Acumulador AS decimal(3, 0)) as nvarchar))) + CAST(CAST(Acumulador AS decimal(3, 0)) as nvarchar)
              WHEN Tipo = 'PERCIIBB' THEN
                   'PRCIB' +
                   '            ' +
                   REPLICATE(' ', 9 - LEN(CAST(CAST(Cantidad AS decimal(8, 3)) as nvarchar))) + CAST(CAST(Cantidad AS decimal(8, 3)) as nvarchar) +
                   REPLICATE(' ', 10 - LEN(CAST(CAST(Importe AS decimal(9, 2)) as nvarchar))) + CAST(CAST(Importe AS decimal(9, 2)) as nvarchar) +
                   REPLICATE(' ', 3 - LEN(CAST(CAST(Acumulador AS decimal(3, 0)) as nvarchar))) + CAST(CAST(Acumulador AS decimal(3, 0)) as nvarchar)
              WHEN Tipo = 'PERCIBAGIP' THEN
                   'PRCIC' +
                   '            ' +
                   REPLICATE(' ', 9 - LEN(CAST(CAST(Cantidad AS decimal(8, 3)) as nvarchar))) + CAST(CAST(Cantidad AS decimal(8, 3)) as nvarchar) +
                   REPLICATE(' ', 10 - LEN(CAST(CAST(Importe AS decimal(9, 2)) as nvarchar))) + CAST(CAST(Importe AS decimal(9, 2)) as nvarchar) +
                   REPLICATE(' ', 3 - LEN(CAST(CAST(Acumulador AS decimal(3, 0)) as nvarchar))) + CAST(CAST(Acumulador AS decimal(3, 0)) as nvarchar)
              WHEN Tipo = 'PERCAPR' THEN
                   'PRCAP' +
                   '            ' +
                   REPLICATE(' ', 9 - LEN(CAST(CAST(Cantidad AS decimal(8, 3)) as nvarchar))) + CAST(CAST(Cantidad AS decimal(8, 3)) as nvarchar) +
                   REPLICATE(' ', 10 - LEN(CAST(CAST(Importe AS decimal(9, 2)) as nvarchar))) + CAST(CAST(Importe AS decimal(9, 2)) as nvarchar) +
                   REPLICATE(' ', 3 - LEN(CAST(CAST(Acumulador AS decimal(3, 0)) as nvarchar))) + CAST(CAST(Acumulador AS decimal(3, 0)) as nvarchar)
              WHEN Tipo = 'VUELTO' THEN
                   'VUELT' +
                   '            ' +
                   '    0.000' +
                   REPLICATE(' ', 10 - LEN(CAST(CAST(Importe AS decimal(9, 2)) as nvarchar))) + CAST(CAST(Importe AS decimal(9, 2)) as nvarchar) +
                   REPLICATE(' ', 3 - LEN(CAST(CAST(Acumulador AS decimal(3, 0)) as nvarchar))) + CAST(CAST(Acumulador AS decimal(3, 0)) as nvarchar)
              WHEN Tipo = 'PAGO' THEN
                   'PAGO ' +
                   REPLICATE('0', 12 - LEN(CAST(CAST(Codigo AS decimal(12, 0)) as nvarchar))) + CAST(CAST(Codigo AS decimal(12, 0)) as nvarchar) +
                   REPLICATE(' ', 9 - LEN(CAST(CAST(Cantidad AS decimal(8, 3)) as nvarchar))) + CAST(CAST(Cantidad AS decimal(8, 3)) as nvarchar) +
                   REPLICATE(' ', 10 - LEN(CAST(CAST(Importe AS decimal(9, 2)) as nvarchar))) + CAST(CAST(Importe AS decimal(9, 2)) as nvarchar) +
                   REPLICATE(' ', 3 - LEN(CAST(CAST(Acumulador AS decimal(3, 0)) as nvarchar))) + CAST(CAST(Acumulador AS decimal(3, 0)) as nvarchar)
              WHEN Tipo = 'OPEN' THEN
                   'OPEN ' +
                   '            ' +
                   '    0.000' +
                   '      0.00' +
                   REPLICATE(' ', 3 - LEN(CAST(CAST(Acumulador AS decimal(3, 0)) as nvarchar))) + CAST(CAST(Acumulador AS decimal(3, 0)) as nvarchar)
              WHEN Tipo = 'V1' THEN
                   'V1   ' +
                   '            ' +
                   REPLICATE(' ', 9 - LEN(CAST(CAST(Cantidad AS decimal(8, 3)) as nvarchar))) + CAST(CAST(Cantidad AS decimal(8, 3)) as nvarchar) +
                   REPLICATE(' ', 10 - LEN(CAST(CAST(Importe AS decimal(9, 2)) as nvarchar))) + CAST(CAST(Importe AS decimal(9, 2)) as nvarchar) +
                   REPLICATE(' ', 3 - LEN(CAST(CAST(Acumulador AS decimal(3, 0)) as nvarchar))) + CAST(CAST(Acumulador AS decimal(3, 0)) as nvarchar)
              WHEN Tipo = 'V2' THEN
                   'V2   ' +
                   '            ' +
                   REPLICATE(' ', 9 - LEN(CAST(CAST(Cantidad AS decimal(8, 3)) as nvarchar))) + CAST(CAST(Cantidad AS decimal(8, 3)) as nvarchar) +
                   REPLICATE(' ', 10 - LEN(CAST(CAST(Importe AS decimal(9, 2)) as nvarchar))) + CAST(CAST(Importe AS decimal(9, 2)) as nvarchar) +
                   REPLICATE(' ', 3 - LEN(CAST(CAST(Acumulador AS decimal(3, 0)) as nvarchar))) + CAST(CAST(Acumulador AS decimal(3, 0)) as nvarchar)
              WHEN Tipo = 'CANCE' THEN
                   'CANCE' +
                   REPLICATE('0', 8 - LEN(CAST(CAST(Codigo AS decimal(8, 0)) as nvarchar))) + CAST(CAST(Codigo AS decimal(8, 0)) as nvarchar) +
                   ' ' +
                   REPLICATE('0', 3 - LEN(CAST(CAST(Cajero AS decimal(3, 0)) as nvarchar))) + CAST(CAST(Cajero AS decimal(3, 0)) as nvarchar) +
                   ' ' +
                   REPLICATE('0', 2 - LEN(CAST(CAST(DATEPART (dd, Fecha) AS decimal(2, 0)) as nvarchar))) + CAST(CAST(DATEPART (dd, Fecha) AS decimal(2, 0)) as nvarchar) +
                   REPLICATE('0', 2 - LEN(CAST(CAST(DATEPART (mm, Fecha) AS decimal(2, 0)) as nvarchar))) + CAST(CAST(DATEPART (mm, Fecha) AS decimal(2, 0)) as nvarchar) +
                   REPLICATE('0', 4 - LEN(CAST(CAST(DATEPART (yyyy, Fecha) AS decimal(4, 0)) as nvarchar))) + CAST(CAST(DATEPART (yyyy, Fecha) AS decimal(4, 0)) as nvarchar) +
                   '      ' +
                   SUBSTRING(Hora, 1, 2) +
                   SUBSTRING(Hora, 4, 2) +
                   REPLICATE(' ', 3 - LEN(CAST(CAST(Acumulador AS decimal(3, 0)) as nvarchar))) + CAST(CAST(Acumulador AS decimal(3, 0)) as nvarchar)
              WHEN Tipo = 'PROMO' THEN
                   'PROMO' +
                   '            ' +
                   REPLICATE(' ', 9 - LEN(CAST(CAST(Cantidad AS decimal(8, 3)) as nvarchar))) + CAST(CAST(Cantidad AS decimal(8, 3)) as nvarchar) +
                   REPLICATE(' ', 10 - LEN(CAST(CAST(Importe AS decimal(9, 2)) as nvarchar))) + CAST(CAST(Importe AS decimal(9, 2)) as nvarchar) +
                   CAST(CAST(Codigo AS decimal(4, 0)) as nvarchar)
              WHEN Tipo = 'RECA G' OR Tipo = 'DESC G' THEN 
                   'PORCE' +
                   '            ' +
                   REPLICATE(' ', 9 - LEN(CAST(CAST(Cantidad AS decimal(8, 3)) as nvarchar))) + CAST(CAST(Cantidad AS decimal(8, 3)) as nvarchar) +
                   REPLICATE(' ', 10 - LEN(CAST(CAST(Importe AS decimal(9, 2)) as nvarchar))) + CAST(CAST(Importe AS decimal(9, 2)) as nvarchar) +
                   REPLICATE(' ', 3 - LEN(CAST(CAST(Acumulador AS decimal(3, 0)) as nvarchar))) + CAST(CAST(Acumulador AS decimal(3, 0)) as nvarchar)
              WHEN Tipo = 'SUBTO' THEN
                   'SUBTO            ' +
                   REPLICATE(' ', 9 - LEN(CAST(CAST(Cantidad AS decimal(8, 3)) as nvarchar))) + CAST(CAST(Cantidad AS decimal(8, 3)) as nvarchar) +
                   REPLICATE(' ', 10 - LEN(CAST(CAST(Importe AS decimal(9, 2)) as nvarchar))) + CAST(CAST(Importe AS decimal(9, 2)) as nvarchar) +
                   REPLICATE(' ', 3 - LEN(CAST(CAST(Acumulador AS decimal(3, 0)) as nvarchar))) + CAST(CAST(Acumulador AS decimal(3, 0)) as nvarchar)
              WHEN Tipo = 'RETIRO' OR Tipo = 'RECIBO' THEN 
                   LEFT(Tipo, 5) +
                   REPLICATE('0', 8 - LEN(CAST(CAST(Codigo AS decimal(8, 0)) as nvarchar))) + CAST(CAST(Codigo AS decimal(8, 0)) as nvarchar) +
                   REPLICATE('0', 3 - LEN(CAST(CAST(Cajero AS decimal(3, 0)) as nvarchar))) + CAST(CAST(Cajero AS decimal(3, 0)) as nvarchar) +
                   REPLICATE('0', 2 - LEN(CAST(CAST(DATEPART (dd, Fecha) AS decimal(2, 0)) as nvarchar))) + CAST(CAST(DATEPART (dd, Fecha) AS decimal(2, 0)) as nvarchar) +
                   REPLICATE('0', 2 - LEN(CAST(CAST(DATEPART (mm, Fecha) AS decimal(2, 0)) as nvarchar))) + CAST(CAST(DATEPART (mm, Fecha) AS decimal(2, 0)) as nvarchar) +
                   REPLICATE('0', 4 - LEN(CAST(CAST(DATEPART (yyyy, Fecha) AS decimal(4, 0)) as nvarchar))) + CAST(CAST(DATEPART (yyyy, Fecha) AS decimal(4, 0)) as nvarchar) +
                   SUBSTRING(Hora, 1, 2) +
                   SUBSTRING(Hora, 4, 2) +
                   REPLICATE(' ', 8 - LEN(CAST(CAST(Importe AS decimal(7, 2)) as nvarchar))) + CAST(CAST(Importe AS decimal(7, 2)) as nvarchar) +
                   REPLICATE(' ', 3 - LEN(CAST(CAST(Acumulador AS decimal(3, 0)) as nvarchar))) + CAST(CAST(Acumulador AS decimal(3, 0)) as nvarchar)
         END AS Linea
FROM     POS_Auditoria
WHERE   (Tipo NOT IN ('SUB F', 'CLCTACTE', 'REP X', 'REP Z', 'REP TUR', 'CONFIR Z', 'CANTIDADTK', 'ULTIMOTK', 'ULTIMAFA', 'PERCEPCION', 'IMPINTERNO', 'TASAIVA', 'UPDATE Z')) AND
         NOT (Tipo = 'PTOSC' AND CodigoInterno = 0) AND
         Fecha = @Fecha AND NroCaja = @NroCaja
ORDER BY Hora, Id
