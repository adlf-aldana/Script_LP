SELECT *
FROM tdmtd 
WHERE tdmtdntrj IN (600008819,         
600008822)

DELETE tdmtd
WHERE tdmtdntrj = 600008822          

INSERT INTO tdmtd (tdmtdntrj,tdmtdtipo,tdmtdcage,tdmtdtitu,tdmtdnomb,tdmtdapel,tdmtdfapt,tdmtdnano,tdmtdfexp,tdmtdfipe,tdmtdctrp,tdmtdttrp,tdmtdctrd,tdmtdttrd,tdmtdcren,tdmtdfreg,tdmtdstat,tdmtdfemb,tdmtdmemb,tdmtdmdeb,tdmtduaut,tdmtdfaut,tdmtdhaut,tdmtduser,tdmtdhora,tdmtdfpro,tdmtdgptj,tdmtdcprp,tdmtdtprp,tdmtdcprd,tdmtdtprd,tdmtdlote,tdmtdcwrp,tdmtdtwrp,tdmtdcwrd,tdmtdtwrd) VALUES ('600008822          ',0,0,NULL,'               ','               ','2021-02-01',4,'2025-01-31',NULL,0,0.00,0,0.00,0,'2021-04-07',99,'2021-04-07',NULL,NULL,NULL,NULL,NULL,'RET','12:25:35','2021-04-07',1,0,0.00,0,0.00,4,0,0.00,0,0.00);

SELECT * 
FROM tdtct 
WHERE tdtctntrj IN (600008819,600008822);

DELETE tdtct
WHERE tdtctntrj = 600008819

INSERT INTO tdtct (tdtctntrj,tdtctncta,tdtctnmod,tdtctprel) VALUES ('600008819          ','3041000102',4,2);
INSERT INTO tdtct (tdtctntrj,tdtctncta,tdtctnmod,tdtctprel) VALUES ('600008819          ','3041000114',4,5);
INSERT INTO tdtct (tdtctntrj,tdtctncta,tdtctnmod,tdtctprel) VALUES ('600008819          ','3051913664',5,1);
INSERT INTO tdtct (tdtctntrj,tdtctncta,tdtctnmod,tdtctprel) VALUES ('600008819          ','3052921034',5,3);
INSERT INTO tdtct (tdtctntrj,tdtctncta,tdtctnmod,tdtctprel) VALUES ('600008819          ','3052921046',5,4);
INSERT INTO tdtct (tdtctntrj,tdtctncta,tdtctnmod,tdtctprel) VALUES ('600008819          ','8051260225',5,6);

SELECT decrypt_char(tdpanpane,"s0ftw4r3_f4ct0ry")
FROM tdpan
WHERE tdpanntrj IN (600008819,         
600008822);

SELECT *--decrypt_char(tdpanpane,"s0ftw4r3_f4ct0ry")
FROM tdpan
WHERE decrypt_char(tdpanpane,"s0ftw4r3_f4ct0ry") = 5242911210088188;