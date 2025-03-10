SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[BalanzasArticulos]
AS
SELECT RIGHT('00000' + LTRIM(RTRIM(Articulos.BalCodigo)), 5) AS Numero
	, Articulos.Departamento
	, 1 AS Familia
	, Articulos.DescripcionCorta AS Descripcion
	, RIGHT('00000' + LTRIM(RTRIM(CAST((Articulos.EAN - 200000000000) / 100000 AS INT))), 5) AS Codigo
	, CASE Articulos.Tipo WHEN 'U' THEN 'N' ELSE 'P' END AS Tipo
	, COALESCE(OfertasSucursal.PrecioOferta, OfertasCentral.PrecioOferta, PreciosSucursal.Venta, Articulos.PrecioVenta) AS Precio
	, COALESCE(OfertasSucursal.PrecioOferta, OfertasCentral.PrecioOferta, PreciosSucursal.Venta, Articulos.PrecioVenta) AS Precio2
	, 1 AS Etiqueta
	, Articulos.BalDiasVto AS DiasVencimiento
	, 0 AS Unico
	, 0 AS Negativo
	, 0 AS Abierto
	, CASE WHEN COALESCE(OfertasSucursal.PrecioOferta, OfertasCentral.PrecioOferta, PreciosSucursal.Venta, Articulos.PrecioVenta) < 9999.99 THEN 0
               WHEN COALESCE(OfertasSucursal.PrecioOferta, OfertasCentral.PrecioOferta, PreciosSucursal.Venta, Articulos.PrecioVenta) < 99999.9 THEN 1
               WHEN COALESCE(OfertasSucursal.PrecioOferta, OfertasCentral.PrecioOferta, PreciosSucursal.Venta, Articulos.PrecioVenta) < 999999 THEN 2
          ELSE 0 END AS PrecioAnterior
FROM Articulos
LEFT JOIN (
	SELECT Sucursal
		, ArticuloCodigo
		, Costo
		, Margen
		, Venta
	FROM PreciosSucursales
	WHERE (
			Sucursal = (
				SELECT TOP 1 Sucursal
				FROM Sistema
				)
			)
	) PreciosSucursal
	ON Articulos.Codigo = PreciosSucursal.ArticuloCodigo
LEFT JOIN (
	SELECT Sucursal
		, ArticuloCodigo
		, PrecioOferta
		, Desde
		, Hasta
	FROM Ofertas
	WHERE (convert(NVARCHAR, getdate(), 102) BETWEEN convert(NVARCHAR, Desde, 102) AND convert(NVARCHAR, Hasta, 102))
		AND (Sucursal = 0)
	) OfertasCentral
	ON OfertasCentral.ArticuloCodigo = Articulos.Codigo
LEFT JOIN (
	SELECT Sucursal
		, ArticuloCodigo
		, PrecioOferta
		, Desde
		, Hasta
	FROM Ofertas
	WHERE (convert(NVARCHAR, getdate(), 102) BETWEEN convert(NVARCHAR, Desde, 102) AND convert(NVARCHAR, Hasta, 102))
		AND (
			Sucursal = (
				SELECT TOP 1 Sucursal
				FROM Sistema
				)
			)
	) OfertasSucursal
	ON OfertasSucursal.ArticuloCodigo = Articulos.Codigo
WHERE (Articulos.HabilBalanzas <> 0)
	AND (Articulos.BalCodigo <> 0)
GO
ALTER AUTHORIZATION ON [dbo].[BalanzasArticulos] TO  SCHEMA OWNER 
GO