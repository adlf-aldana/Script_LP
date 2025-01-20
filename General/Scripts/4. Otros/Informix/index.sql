-- BUSQUEDA INDEX
SELECT idxname, idxtype 
FROM sysindexes 
WHERE tabid = (SELECT tabid FROM systables WHERE tabname = 'NOMBRE_DE_TABLA');