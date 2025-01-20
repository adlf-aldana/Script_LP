-- New script in PROD_FacturadorBD_MC4.
-- Date: 19 oct 2023
-- Time: 16:03:31
SELECT date(a.created_date) FECHA_FAC,
	a.numero_factura NRO_FAC,
	a.cuf CUF,
	a.numero_documento NRO_DOCUMENTO,
	a.nombre_razon_social RAZON_SOCIAL,	
	a.tipo_factura TIPO_FACTURA,
	a.monto_total_moneda  IMP_DOLARES,
	b.descripcion_sin MONEDA,
	a.tipo_cambio TIPO_CAMBIO,
	a.monto_total IMPORTE_BS,
	a.estado_documento_fiscal ESTADO,
	CASE
		WHEN a.tipo_cambio='6.85' THEN 'COMPRA'
		ELSE 'VENTA' 
	END TIPO_COMPRA_VENTA
FROM sfe_documento_fiscal a, sfe_parametrica_sin b
WHERE date(a.created_date) BETWEEN '2023-09-01' AND '2023-09-30'
--AND a.numero_factura = 2976
AND a.codigo_moneda = b.id 
ORDER BY 2;

SELECT *	
FROM sfe_documento_fiscal
WHERE numero_factura IN (

)
AND created_date >= '2023-10-01'
ORDER BY numero_factura ;

SELECT *	
FROM sfe_documento_fiscal
WHERE codigo_integracion = '6052'
ORDER BY numero_factura ;

SELECT x.* 
FROM public.sfe_parametrica_sin x