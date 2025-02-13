SELECT *FROM camca WHERE camcastat = 5;

SELECT *
FROM capig
WHERE capigplaz = 90


SELECT camcancta,abs(camcasact), (SELECT sum(catrnimpo)
							FROM catrn
							WHERE catrnncta = camcancta
							AND catrnstat = 0)
FROM camca
WHERE camcancta IN (9051088226,
9051055881,
9051079294,
9051015748,--
9051260241,
9051261453,
9051258262,
9051252622,
9051043589,
9051260459,
9051256018,
9051262641,
9052039882,
9051066906,
9051077273,
9051080880,
9051066954,
9051090060,
9051048175,
9051043515,
9051022618,--
9051250313,
9051256795,
9051263279,
9051080283,
9051263683,
9051263085,
9051257787,
9051065058,
9051263449,
9051039726,
9051049146,
9051049146,
9051256903,
9051060881,
9051263695,
9051263530,
9051260851,
9051062141,
9051079366,
9051085889,
9051252309,
9051082451,
9051041021,
9051263671,
9051262873,
9051019032,--
9051259773)

SELECT camcancta,abs(camcasact) camca, (SELECT sum(catrnimpo)
							FROM catrn
							WHERE catrnncta = camcancta
							AND catrnstat = 0) catrn
FROM camca
WHERE camcancta IN (9051015748,9051022618,9051019032);

SELECT camcancta,abs(camcasact), (SELECT sum(catrnimpo)
							FROM catrn
							WHERE catrnncta = camcancta
							AND catrnstat = 0) catrn
FROM camca
WHERE camcaplaz = 90
AND camcasact < 0
AND camcastat IN (1,2,3)

SELECT camcancta,abs(camcasact), (SELECT sum(catrnimpo)
							FROM catrn
							WHERE catrnncta = camcancta
							AND catrnstat = 0) catrn
FROM camca
WHERE camcaplaz = 90
AND camcasact < 0
AND camcastat IN (1,2,3)
AND camcasact != (SELECT sum(catrnimpo)
							FROM catrn
							WHERE catrnncta = camcancta
							AND catrnstat = 0)
--camcancta IN (9051015748,9051022618,9051019032);
							
SELECT *FROM camca WHERE camcancta = 9051002894;
SELECT sum(catrnimpo) 
FROM catrn WHERE catrnncta = 9051007934 AND catrnstat = 0;
ORDER BY 2;

SELECT *FROM gbpmt;

UPDATE camca
SET camcasact = (SELECT sum(catrnimpo)
							FROM catrn
							WHERE catrnncta = camcancta
							AND catrnstat = 0)
WHERE camcaplaz = 90
AND camcasact < 0
AND camcastat IN (1,2,3)
AND camcasact != (SELECT sum(catrnimpo)
							FROM catrn
							WHERE catrnncta = camcancta
							AND catrnstat = 0)
							

SELECT *
FROM capig
WHERE capigncta = 9051007934
AND capigstat = 0;

SELECT *FROM camca WHERE camcancta = 3051920851;
SELECT sum(catrnimpo) 
FROM catrn WHERE catrnncta = 3051920851 AND catrnstat = 0
ORDER BY 2;



UPDATE camca
SET camcasact =-8.57
WHERE camcancta =9051015748

UPDATE camca
SET camcasact =-47152.15
WHERE camcancta =9051022618

UPDATE camca
SET camcasact = -2069.22
WHERE camcancta =9051019032

SELECT *FROM camca WHERE camcancta IN (9051015748,9051022618,9051019032);
SELECT sum(catrnimpo) FROM catrn WHERE catrnncta = 9051015748 AND catrnstat = 0;
SELECT sum(catrnimpo) FROM catrn WHERE catrnncta = 9051022618 AND catrnstat = 0;
SELECT sum(catrnimpo) FROM catrn WHERE catrnncta = 9051019032 AND catrnstat = 0;

SELECT *FROM camca WHERE camcancta IN (9051015748,9051022618,9051019032)



UPDATE camca
	SET camcasact = camcasant +(SELECT sum(catrnimpo)
								FROM catrn
								WHERE catrnncta = camcancta
								AND catrnstat = 0)
WHERE camcancta = 9051015748;

UPDATE camca
SET camcasact = camcasant +(SELECT sum(catrnimpo)
								FROM catrn
								WHERE catrnncta = camcancta
								AND catrnstat = 0)
WHERE camcancta = 9051022618;

UPDATE camca
SET camcasact = camcasant +(SELECT sum(catrnimpo)
								FROM catrn
								WHERE catrnncta = camcancta
								AND catrnstat = 0)
WHERE camcancta = 9051019032;



