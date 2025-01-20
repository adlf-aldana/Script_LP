-- COMISIONES COMPRA Y VENTA DIVISAS
SELECT 6, "006"||"-"||"000"||"-"||"0001","COMPRA VENTA ME", cjctlcdif FROM cjctl
-- SELECT *FROM cjctl  -- Mant. Parametros Generales - CAM397

UNLOAD TO ferci_divisas.txt
SELECT *FROM ferci WHERE fercicpro LIKE '006-%';
