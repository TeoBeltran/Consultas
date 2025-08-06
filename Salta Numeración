WITH NumeracionOrdenada AS (
    SELECT 
        Puntoventa,
        Numero,
        Tipo,
        Fecha,
        LAG(Numero) OVER (PARTITION BY Puntoventa ORDER BY Numero) AS NumeroAnterior
    FROM Comprobantes
    WHERE Puntoventa = 19 AND Tipo = 'ta' AND Fecha >= '01-07-2025'
)
SELECT 
    Puntoventa,
    Numero,
    Tipo,
    Fecha,
    CASE 
        WHEN NumeroAnterior IS NOT NULL AND Numero > NumeroAnterior + 1 THEN 'Sí' 
        ELSE 'No' 
    END AS SalteoNumeracion
FROM NumeracionOrdenada
ORDER BY Numero
