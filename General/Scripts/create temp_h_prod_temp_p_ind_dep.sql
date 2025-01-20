unload TO temp_h_pond.txt
SELECT *FROM temp_h_pond;
drop table temp_h_pond;

-- TABLA H, -- 4, POND COLUMA 20, PROD_NO_PROD COLUMNA 25
CREATE TABLE temp_h_pond
(cred char(16) NOT NULL,
pond char(2),
prod smallint);

INSERT INTO temp_h_pond (cred,pond,prod) VALUES ('','',);

------
unload TO temp_p_ind_dep.txt
SELECT *FROM temp_p_ind_dep;
drop table temp_p_ind_dep;

-- TABLA P, -- 4, DEP_INDEP COLUMA 15, COD_CLI COLUMNA 34
CREATE TABLE temp_p_ind_dep
(cred char(16) NOT NULL,
depindep char(1),
codcli integer NOT NULL);

INSERT INTO temp_p_ind_dep (cred,depindep,codcli) VALUES ('','',);

--- dependiente_independiente
(select di.depindep
 from temp_p_ind_dep di
 where substring(cred FROM 1 FOR (LENGTH(di.cred)-1))=b.prmprnpre
 and di.codcli=a.gbagecage) dep_indep
 
 ---- Ponderacion
(select max(po.pond)
 from temp_h_pond po
 where substring(cred FROM 1 FOR (LENGTH(po.cred)-1))=b.prmprnpre)  ponderacion

--- dependiente_independiente
(select di.depindep
 from temp_p_ind_dep di
 where substring(cred FROM 1 FOR (LENGTH(di.cred)-1))=b.prmprnpre
 and di.codcli=a.gbagecage) dep_indep
 
 ---- Ponderacion
(select max(po.pond)
 from temp_h_pond po
 where substring(cred FROM 1 FOR (LENGTH(po.cred)-1))=b.prmprnpre)  ponderacion
 
 
 --------------------------------
