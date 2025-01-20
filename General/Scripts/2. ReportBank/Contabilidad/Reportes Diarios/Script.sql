select a.ipimeftra FECHA_FAC,
	a.ipimenfac NRO_FAC,
	a.ipimenord NRO_AUTORIZACION,
	a.ipimenruc NIT_PROV, 
	a.ipimenomb NOMBRE_Y_O_RAZON_SOC,
	a.ipimedope TIPO_TRANSACCION,
	a.ipimeimon IMP_DOLARES,
	a.ipimecmon MONEDA,
	a.ipimetcam TIPO_CAMBIO,
	round((a.ipimeimon*a.ipimetcam),2)IMPORTE_BS,
	a.ipimecctl CODIGO_CONTROL,
	decode(ipimetcam,'6.85','COMPRA','VENTA') TIPO_COMPRA_VENTA
from ipime a
where a.ipimeftra between '{ini}' and '{fin}'
and a.ipimemrcb=0
--and a.ipfcvnfac in (4134)
UNION 
select a.ipfcvftra FECHA_FAC,a.ipfcvnfac NRO_FAC,a.ipfcvnord NRO_AUTORIZACION,
	   a.ipfcvnruc NIT_PROV, a.ipfcvnomb NOMBRE_Y_O_RAZON_SOC,a.ipfcvdope TIPO_TRANSACCION,a.ipfcvimon IMP_DOLARES,a.ipfcvcmon MONEDA,a.ipfcvtcam TIPO_CAMBIO,
	   round((a.ipfcvimon*a.ipfcvtcam),2)IMPORTE_BS,a.ipfcvcctl CODIGO_CONTROL, decode(ipfcvtcam,'6.85','COMPRA','VENTA') TIPO_COMPRA_VENTA
from ipfcv a
where a.ipfcvftra between '{ini}' and '{fin}'
and a.ipfcvmrcb=0
--and a.ipfcvnfac in (4134)
ORDER BY 1,2