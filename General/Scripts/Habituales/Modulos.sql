/* MODULOS CERRADOS/ABIERTOS */
/** CAJAS **/
select *
from cjctl a
--para abrir
update cjctl a
set a.cjctlfcie=NULL;
--para cerrar
update cjctl a
set a.cjctlfcie=(select b.gbpmtfdia
                 from gbpmt b);
/** CAJA DE AHORRO **/
select *
from cactl a
--para abrir
update cactl a
set a.cactlfcie=NULL;
--para cerrar
update cactl a
set a.cactlfcie=(select b.gbpmtfdia
                 from gbpmt b);
/** DPF's **/
select *
from pfctl a;
--para abrir
update pfctl a
set a.pfctlfcie=NULL;
--para cerrar
update pfctl a
set a.pfctlfcie=(select b.gbpmtfdia
                 from gbpmt b);