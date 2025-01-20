-- Reporte que contiene informaci�n contable
select a.cndtrcnta cta_ctble,
	trim(a.cndtrglos) glosa,
	a.cndtrfdoc fecha,
	round(a.cndtrimpi, 2) importe,
	a.cndtrcmon mon,
	a.cndtrcamb tipo_cambio
from cndtr a
where a.cndtrfdoc between '2021-10-01' and '2021-12-01' 
and a.cndtrmrcb=0
order by 3,1,2;

/* OBTENER CUENTA CON SALDOS DE CONTAbilidad*/
select cnsldcnta[1,6] CtaCtble,
        sum(cnsldsldb) Saldo
from cnsld
where cnsldfpro='2022-03-31'
group by CtaCtble
order by 1;

/* saldos desde detalle de transacciones */
select cndtrcnta[1,6] CtaCtble,
       sum(cndtrimpi)
from cndtr
where year(cndtrfdoc)=2022
and cndtrfdoc<='2022-03-31'
group by CtaCtble
order by CtaCtble;

SELECT * FROM cnplc WHERE cnplccnta LIKE '2140610%';
SELECT * FROM cnpnt;
SELECT * FROM cnrfi;
SELECT * FROM cnsld;

-- SUMATORIA CONTABLE
SELECT sum (a.cndtrimpi)
FROM cndtr a
WHERE cndtrcnta LIKE 138551;

-- SUMATORIA MODULO
SELECT sum(catcnimpi) 
FROM catcn 
WHERE catcncctb = 22111101
AND catcnftra >= '2022-04-01';