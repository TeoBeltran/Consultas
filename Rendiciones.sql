SELECT NroCaja, SUM(Importe) FROM POS_Auditoria 
WHERE Fecha = '20-12-2024'
AND Tipo IN ('Pago','Vuelto')
AND TipoCbte NOT IN ('CB','CA')
GROUP BY NroCaja
ORDER BY NroCaja

