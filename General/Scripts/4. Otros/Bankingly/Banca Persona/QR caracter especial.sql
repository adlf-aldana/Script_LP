-- QR Nombre caracter especial
-- user: luisoscar
-- pass: Clave123*
--  pin: 123456
-- cod_user: 
SELECT *
FROM gbage
WHERE gbagenomb LIKE '%LUIS%OSCAR%'

-- user: juan.luizaga
-- pass: Clave123*
--  pin: 123456

SELECT *
FROM tetrn 
WHERE tetrnftra BETWEEN '2023-09-20' AND '2023-09-20'
--AND tetrnnvia = 3051920851          
ORDER BY tetrnhora 