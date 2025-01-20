SELECT *
FROM pfacr;

SELECT *
FROM pfact 
WHERE pfactcage = 77012;

SELECT * 
FROM pfahc;

SELECT * 
FROM pfaic 
WHERE pfaicndep = '300019152800039';

SELECT * 
FROM pfaut 
WHERE pfautcage = 77012;

SELECT *
FROM pfblq;

SELECT *
FROM pfcat;

SELECT * 
FROM pfcer 
WHERE pfcerndep = '300019152800039 ';

SELECT *
FROM pfcon;

SELECT *
FROM pfcrn;

SELECT pfcrtncrt FROM pfcrt;

SELECT *
FROM pfctl;

SELECT *
FROM pfdca;

SELECT *
FROM pfdpi;

SELECT * 
FROM pfdsu 
WHERE pfdsucage = 77012;
-- NIVELES
SELECT *
FROM pfdts;

SELECT *
FROM pfdts_h;

SELECT *
FROM pfedv;

SELECT * 
FROM pfend 
WHERE pfendndep = '300019152800039';

SELECT pfeqitpdp, pfeqitpan FROM pfeqi;

SELECT pferetret, pferetran FROM pfere;

SELECT *
FROM pferr;

SELECT *
FROM pfexc;

SELECT * 
FROM pffdt 
WHERE pffdtndep = '300019152800039';

SELECT *
FROM pffhd;

SELECT * 
FROM pfhdv 
WHERE pfhdvndep = '300019152800039 ';

SELECT * 
FROM pfhtd 
WHERE pfhtdndep = '300019152800039 ';

SELECT *
FROM pfhts
ORDER BY 1;

SELECT *
FROM pfhts
WHERE pfhtscnom = 21306230        

SELECT *
FROM pfhts_h;

SELECT * 
FROM pfigd 
WHERE pfigdndep = 300019152800039 ;

SELECT * 
FROM pfmdp 
WHERE pfmdpcage = 77012;

SELECT * 
FROM pfmdp 
WHERE pfmdpndep = '300019152800039';

SELECT *
FROM pfmdp1;

SELECT * 
FROM pfmdpmig 
WHERE pfmdpndep = '300019152800039 ';

SELECT ndep, resp FROM pfmdptemp;
SELECT *
FROM pfmod;

SELECT *
FROM pfnce;

SELECT pfndpagen, pfndpndep FROM pfndp;

SELECT *
FROM pfnic;

SELECT * 
FROM pfpan;

SELECT *
FROM pfpia;

SELECT * 
FROM pfpjd 
WHERE pfpjdndep = '300019152800039 ';

SELECT * 
FROM pfppg 
WHERE pfppgndep = '300019152800039 ';

SELECT *
FROM pfref;

SELECT * 
FROM pfret 
WHERE pfretndep = '300019152800039 ';

SELECT * 
FROM pfruc 
WHERE pfrucndep = '300019152800039 ';

SELECT * 
FROM pfsld;

SELECT *
FROM pfsol;

SELECT *
FROM pfsuc;

SELECT * 
FROM pftcn 
ORDER BY 3;

SELECT *
FROM pftda;

SELECT *
FROM pftdc;

SELECT *
FROM pftdp;

SELECT *
FROM pftdt;

SELECT *
FROM pfthd;

SELECT *
FROM pftit;

SELECT *
FROM pftre;

SELECT *
FROM pftrn;

SELECT *
FROM pftsa;

SELECT *
FROM pftsh;
SELECT *
FROM pftus;

SELECT *
FROM pfven;

SELECT pfvenndepa, pfvencvena 
FROM pfven_temp
WHERE pfvenndepa = '300019152800039';

SELECT *
FROM pfvia;