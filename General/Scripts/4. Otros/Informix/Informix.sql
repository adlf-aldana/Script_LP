/* VERSION DE INFORMIX */
SELECT DBINFO('version', 'full') FROM systables WHERE tabid = 1;

/* ELIMINAR ULTIMO DIGITO */
SELECT substring(gbagenomb FROM 1 FOR (LENGTH(gbagenomb) -1)) FROM gbage WHERE gbagecage = 359160

/* AGREGAR CAMPO  */
ALTER TABLE bgmbg 
ADD bgmbgdes6 char(60)

ALTER TABLE bgmbg 
ADD bgmbgdes7 char(60)

/* ELIMINAR COLUMNA */
select *
FROM prrnv
WHERE prrnvnpre = 10048177

ALTER TABLE prrnv DROP COLUMN prrnvmots
ALTER TABLE prrnv DROP prrnvdess