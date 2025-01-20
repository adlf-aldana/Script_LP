SELECT *
FROM tecon
ORDER BY 1,2

unload TO tecon_antes.txt
SELECT *
FROM tecon
WHERE teconcorr IN (100,101,102,
103,104,105,106,
107,108,109,110)
ORDER BY 1,2,3;

SELECT *
FROM tecon
WHERE teconcorr=100;

UPDATE tecon
SET tecondesc = 'Orden creada sin autorizacion'
WHERE teconcorr=100;

SELECT *
FROM tecon
WHERE teconcorr=101;

UPDATE tecon
SET tecondesc = 'Orden autorizada no Enviada'
WHERE teconcorr=101;

SELECT *
FROM tecon
WHERE teconcorr=102;

UPDATE tecon
SET tecondesc = 'Orden recibida por la cámara'
WHERE teconcorr=102;

SELECT *
FROM tecon
WHERE teconcorr=103;

UPDATE tecon
SET tecondesc = 'Orden aprobada por destinatario'
WHERE teconcorr=103;

SELECT *
FROM tecon
WHERE teconcorr=104;

UPDATE tecon
SET tecondesc = ''
WHERE teconcorr=104;

110        Orden entregada al cliente ACH
104        Orden debitada ó procesada
105        Orden rechazada por destinatario 
106        Orden despignorada por rechazo destinatario
109        Orden rechazada 5A / Mensaje 1B 
107        Orden despignorada por rechazo 5A
108       Orden respuesta desconocida mantiene pignoración

SELECT *
FROM tecon
WHERE teconcorr=105;
SELECT *
FROM tecon
WHERE teconcorr=106;
SELECT *
FROM tecon
WHERE teconcorr=107;
SELECT *
FROM tecon
WHERE teconcorr=108;
SELECT *
FROM tecon
WHERE teconcorr=109;
SELECT *
FROM tecon
WHERE teconcorr=110;