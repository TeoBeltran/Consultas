Si ConfirmaFacturacion = 0 - > Pide Siempre
Si ConfirmaFacturacion = 1 y Pide / No Pide = 0 - > Pregunta
Si ConfirmaFacturacion = 1 y Pide / No pide <> 0 -> Cumple el Pide / No pide



Configuración de Cantidad Pide y Cantidad No Pide.

Si es una moneda seteada en el campo Pos_Config.MonedasNoPide Ej:(1,2,10,12): Pide según Cantidad Pide o Cantidad No Pide
Si es Nota de Crédito : Pide siempre
Si el Cliente FC es distinto a Pos_Config.ClienteDefectoFC : Pide siempre

Cantidad Pide = 0 y Cantidad No Pide = 0 : Pide siempre
Cantidad Pide = 1 y Cantidad No Pide = 0 : Pide siempre
Cantidad Pide = 0 y Cantidad No Pide = 1 : No Pide siempre
Cantidad Pide = 1 y Cantidad No Pide = 1 : Pide uno y No pide uno
Cantidad Pide = 2 y Cantidad No Pide = 3 : Pide dos y No pide tres

La configuración anterior es válida tanto para los campos Pos_Config.CantidadPide, Pos_Config.CantidadNoPide; así como para los campos de la tabla RangosPideNoPide.CantPide y RangosPideNoPide.CantNoPide

Si no existen rangos para una hora se tomaran los valores de los campos Pos_Config.CantidadPide, Pos_Config.CantidadNoPide. Caso contrario de los campos de la tabla RangosPideNoPide.CantPide y RangosPideNoPide.CantNoPide
