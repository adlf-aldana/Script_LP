/*
||Campo|Req.|Nombre de Campo|Tipo de Campo|Descripción|Observaciones||

||1|*|CodigoRegistro|numerico (12,0)|Codigo de registro|Asignar por
defecto un correlativo o el valor cero. Un cliente puede tener varias referencias||

||2|*|CodigoCliente|numerico (10,0)|Número único del cliente en la entidad|
|Debe coincidir con el indicado para el cliente en el archivo cli_tbl_clientes.||

||3|*|EmpresaReferencia|varchar(50)|Razon social de la empresa de la referencia.||

||4|*|Observaciones|varchar(254)|Observaciones de la referencia.
Si no se dispone del dato, asignar por defecto el valor: blanco||

||5|*|EstadoRegistro|char(1)|Estado del registro|V=Vigente / B=Dado de baja||

||6|*|FechaUltimaActualizacion|smalldatetime|Fecha de ultima actualizacion del registro	Ver Hoja Ejemplo||

||7|*|FechaUltimaTransferencia|smalldatetime|Fecha de ultima transferencia del registro
|Repetir el mismo valor que el campo FechaUltimaActualizacion (campo anterior)||

||8|*|CodOficinaUltAct|numerico (3,0)|Codigo de oficina que realizo la ultima actualizacion del registro
|Asignar por defecto el valor 100||

||9|*|CodUsuarioUltAct|numerico (3,0)|Codigo del usuario que realizo la ultima actualizacion del registro|
Asignar por defecto el valor 100||
*/
SELECT 
    row_number() OVER() CODIGOREGISTRO,--1
    gbagecage CODCLIENTE,--2
    gbragnomb EMPRESAREFERENCIA,--3
    '' OBSERVACIONES,--4
    DECODE(gbagestat, 1, 'V', 'B') ESTADOREGISTRO,--5
    DECODE(gbdacfuad, null, gbagefmod, gbdacfuad) FECHAULTIMAACTUALIZACION,--6
    DECODE(gbdacfuad, null, gbagefmod, gbdacfuad) FECHAULTIMATRANSFERENCIA,--7
    100 CODOFICINAULTACT,--8
    100 CODUSUARIOULTACT--9
FROM prmpr 
    INNER JOIN gbage ON gbagecage = prmprcage
    INNER JOIN gbdac ON gbdaccage = gbagecage
    INNER JOIN gbrag ON gbragcage = prmprcage AND gbragtrag=2 AND gbragmrcb=0
--    LEFT JOIN gbcon ON gbconpfij = 76 AND gbconcorr = gbdacciun
--    LEFT JOIN gbprf ON gbprfprof = gbageprof
where prmprnmod=50
order by 1;


select *from gbrag
TRIM((select s.gbragnomb
      from gbrag s
      where s.gbragcage=a.gbagecage
      and s.gbragitem=m.gbragitem
      and s.gbragmrcb=0
      and s.gbragtrag=1)) ref_pers,TRIM((select t.gbragnomb
                                         from gbrag t
							             where t.gbragcage=a.gbagecage
							             and t.gbragitem=n.gbragitem
							             and t.gbragmrcb=0
							             and t.gbragtrag=2)) ref_comer,TRIM((select u.gbragnomb
                                                           	                 from gbrag u
															                 where u.gbragcage=a.gbagecage
														                     and u.gbragitem=o.gbragitem
														                     and u.gbragmrcb=0
														                     and u.gbragtrag=3)) ref_banc,