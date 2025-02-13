SELECT *
FROM suemp
WHERE suempcemp IN (1355,1820,2031)

UPDATE suemp
SET suempstat=0--1
WHERE suempcemp IN (1355,1820)