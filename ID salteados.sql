WITH SecuenciaNumerada AS (
    SELECT
        id,
        ROW_NUMBER() OVER (ORDER BY id) AS NumeroFila
    FROM
        pos_auditoria
    WHERE
        id >= 130 -- Modifica este valor según tus necesidades
        -- Agrega otras condiciones para Fecha y NroCaja aquí
        -- Ejemplo: AND Fecha >= '2024-01-01' AND NroCaja = 1
)
SELECT
    MAX(id) AS UltimoIdSinSalto
FROM
    SecuenciaNumerada
GROUP BY
    id - NumeroFila
HAVING
    COUNT(*) > 1;