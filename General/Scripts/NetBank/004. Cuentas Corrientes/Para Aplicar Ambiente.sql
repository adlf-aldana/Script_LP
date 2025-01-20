-- ELIMINAR Y CREAR NUEVO INDICE
drop index cctpg_00;
create unique index cctpg_00 ON cctpg (cctpgcpig, cctpgcmon, cctpgtpgr);

-- LIMPIEZA MENU CUENTAS CORRIENTES CAJA
SELECT *
FROM admdt
WHERE admdtmodn = 6
AND admdtmprn = 16

DELETE admdt
WHERE admdtmodn = 6
AND admdtmprn = 16

load FROM admdt_caja_Contact.txt INSERT INTO admdt

INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (6,16,1,'Pago de Cheques                         ','fglgo /backup/bexe/cct330               ',NULL,'1',1,'cct330                                                                                              ','PHP/cct330.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (6,16,2,'Deposito de Efectivo Bs.                ','fglgo /backup/bexe/cct332               ',NULL,'1',1,'cct332                                                                                              ','PHP/CCT332.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (6,16,3,'Deposito de Efectivo $us.               ','fglgo /backup/bexe/cct333               ',NULL,'1',1,'cct333                                                                                              ','PHP/CCT333.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (6,16,4,'Deposito Chq.Propios Bs.                ','fglgo /backup/bexe/cct336               ',NULL,'1',1,'cct336                                                                                              ','PHP/CCT336.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (6,16,5,'Deposito Chq.Propios $us.               ','fglgo /backup/bexe/cct337               ',NULL,'1',1,'cct337                                                                                              ','PHP/CCT337.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (6,16,8,'Dep.Chq.Ajenos Bs.F.Hora                ','fglgo /backup/bexe/cc342                ',NULL,'1',1,'cc342                                                                                               ',NULL);
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (6,16,9,'Dep.Chq.Ajenos $us.F.Hora               ','fglgo /backup/bexe/cc343                ',NULL,'1',1,'cc343                                                                                               ',NULL);
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (6,16,10,'Deposito Cheques de Gerencia            ','fglgo /backup/bexe/cgt332               ',NULL,'1',1,'cgt332                                                                                              ',NULL);
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (6,16,99,'Volver al Menu Anterior                 ',NULL,NULL,'1',NULL,NULL,NULL);


-- LIMPIEZA MENU CUENTAS CORRIENTES
SELECT *
FROM admdt
WHERE admdtmodn = 4

DELETE admdt
WHERE admdtmodn = 4

load FROM admdt_Contact.txt INSERT INTO admdt

INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,1,1,'Debitos/Creditos                        ','fglgo /backup/bexe/cct320               ','                                        ','1',1,'cct320                                                                                              ','PHP/cct320.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,1,2,'Traspasos (Clientes)                    ','fglgo /backup/bexe/cct348               ','                                        ','1',1,'cct348                                                                                              ','PHP/cct348.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,1,3,'Certificacion de Cheques                ','fglgo /backup/bexe/cct329               ','                                        ','1',1,'cct329                                                                                              ','PHP/CCT329.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,1,4,'Venta de Chequeras                      ','fglgo /backup/bexe/cct327               ','                                        ','1',1,'cct327                                                                                              ','PHP/cct327.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,1,5,'Cheques Recibidos en Camara             ','fglgo /backup/bexe/cct331               ','                                        ','1',1,'cct331                                                                                              ','PHP/cct331.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,1,7,'Liberi. Depositos p/Confirmar           ','fglgo /backup/bexe/cct338               ','                                        ','1',1,'cct338                                                                                              ','PHP/cct338.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,1,8,'Pignoracion de Fondos                   ','fglgo /backup/bexe/cct363               ','                                        ','1',1,'cct363                                                                                              ','PHP/cct363.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,1,9,'Cheques Rechazados en Camara            ','fglgo /backup/bexe/cc310                ','                                        ','1',1,'cc310                                                                                               ','PHP/cct310.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,1,10,'Cambios de Estados Avances              ','fglgo /backup/bexe/cc346                ','                                        ','1',1,'cct346                                                                                              ','PHP/cct346.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,1,11,'Traspaso                                ','fglgo /backup/bexe/cct321               ','                                        ','1',1,'cct321                                                                                              ','PHP/cct321.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,1,13,'Rechazo Cheques Ajenos                  ','fglgo /backup/bexe/cct386               ','                                        ','1',1,'cct386                                                                                              ','PHP/cct386.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,1,15,'Debitos con Factura                     ','fglgo /backup/bexe/cct356               ',NULL,'1',1,'cct356                                                                                              ','PHP/cct356.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,1,16,'Despignoracion de Fondos                ','fglgo /backup/bexe/cct356               ',NULL,'1',1,'cct364                                                                                              ','PHP/cct364.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,1,99,'Volver al Menu Anterior                 ','                                        ','                                        ','1',1,'                                                                                                    ','                                        ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,2,1,'Maestro de Cuentas Corrientes           ','fglgo /backup/bexe/cc305                ','                                        ','1',1,'ccm305                                                                                              ','PHP/ccm305.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,2,2,'Avances Contratados                     ','fglgo /backup/bexe/cct316               ','                                        ','1',1,'cct316                                                                                              ','PHP/cct316.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,2,3,'Avances Eventuales                      ','fglgo /backup/bexe/cct317               ','                                        ','1',1,'cct317                                                                                              ','PHP/cct317.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,2,4,'Bloqueo/Habilitacion de Cuentas         ','fglgo /backup/bexe/cc323                ','                                        ','1',1,'ccm323                                                                                              ','PHP/CCM323.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,2,5,'Habilitacion de Cheques                 ','fglgo /backup/bexe/cc361                ','                                        ','1',1,'ccm361                                                                                              ','PHP/CCM361.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,2,6,'Cert. Insuficiencia de fondos           ','fglgo /backup/bexe/cc328                ','                                        ','1',1,'cct328                                                                                              ','PHP/cct328.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,2,7,'Cuentas INTERCHEQUE                     ','fglgo /backup/bexe/cc306                ','                                        ','1',1,'ccm306                                                                                              ','PHP/ccm306.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,2,8,'Consulta de Saldos                      ','fglgo /backup/bexe/cc315                ','                                        ','1',1,'ccc315                                                                                              ','PHP/ccc315.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,2,10,'Consulta de Cheques                     ','fglgo /backup/bexe/cc537                ','                                        ','1',1,'ccr537                                                                                              ','PHP/ccr537.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,2,12,'Consulta Trans.Avances                  ','fglgo /backup/bexe/cc539                ','                                        ','1',1,'ccr539                                                                                              ','PHP/ccr539.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,2,13,'Cambios Responsable Avances             ','fglgo /backup/bexe/cc314                ','                                        ','1',1,'ccm314                                                                                              ','PHP/CCM314.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,2,14,'Mantenim. Otros Titulares               ','fglgo /backup/bexe/cc325                ','                                        ','1',1,'ccm325                                                                                              ','PHP/CCM325.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,2,16,'Consulta de Ctas Ctes                   ','fglgo /backup/bexe/cc600                ','                                        ','1',1,'ccc600                                                                                              ','PHP/ccc600.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,2,17,'Carga ASCII ctas.clausuradas            ','fglgo /backup/bexe/ccm001               ',NULL,'1',1,'ccm001                                                                                              ','PHP/ccm001.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,2,18,'Carga ASCII ctas.rehabilitadas          ','fglgo /backup/bexe/ccm002               ',NULL,'1',1,'ccm002                                                                                              ','PHP/ccm002.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,2,19,'Proc. Rehabilitacion Ctas ASFI          ','fglgo /backup/bexe/ccm003               ',NULL,'1',1,'ccm003                                                                                              ','PHP/ccm003.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,2,20,'Carga ASCII ctas.retiradas              ','fglgo /backup/bexe/ccm004               ',NULL,'1',1,'ccm004                                                                                              ','PHP/ccm004.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,2,21,'Proc. Clausura Ctas.ASFII               ','fglgo /backup/bexe/ccm005               ',NULL,'1',1,'ccm005                                                                                              ','PHP/ccm005.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,2,22,'Genera ASCII ctas. Clausuradas          ','fglgo /backup/bexe/ccr117               ',NULL,'1',1,'ccr117                                                                                              ','PHP/ccr117.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,2,23,'CAMBIO DE TIPO DE CUENTA                ',NULL,NULL,'1',1,'cc384                                                                                               ','PHP/cct384.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,2,99,'Volver al Menu Anterior                 ','                                        ','                                        ','1',1,'                                                                                                    ','                                        ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,3,1,'Listados de Saldos                      ','fglgo /backup/bexe/cc505                ','                                        ','1',1,'ccr505                                                                                              ','PHP/ccr505.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,3,2,'Listados de Saldos Sobregirados         ','fglgo /backup/bexe/cc521                ','                                        ','1',1,'ccr521                                                                                              ','PHP/ccr521.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,3,3,'Extracto                                ','fglgo /backup/bexe/cct582               ','                                        ','1',1,'cct582                                                                                              ','PHP/cct582.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,3,4,'Detalle de Fondos Pignorados            ','fglgo /backup/bexe/cc511                ','                                        ','1',1,'ccr511                                                                                              ','PHP/ccr511.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,3,5,'Estado de Avances                       ','fglgo /backup/bexe/cc522                ','                                        ','1',1,'ccr522                                                                                              ','PHP/ccr522.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,3,6,'Detalle Debitos/Creditos                ','fglgo /backup/bexe/cc526                ','                                        ','1',1,'ccr526                                                                                              ','PHP/ccr526.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,3,7,'Resumen Debitos/Creditos                ','fglgo /backup/bexe/cc525                ','                                        ','1',1,'ccr525                                                                                              ','PHP/ccr525.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,3,8,'Catalogo de Cuentas                     ','fglgo /backup/bexe/cc507                ','                                        ','1',1,'ccr507                                                                                              ','PHP/ccr507.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,3,9,'RC-IVA sin retencion                    ','fglgo /backup/bexe/cc516                ','                                        ','1',1,'ccr516                                                                                              ','PHP/ccr516.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,3,10,'RC-IVA con retencion                    ','fglgo /backup/bexe/cc517                ','                                        ','1',1,'ccr517                                                                                              ','PHP/ccr517.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,3,11,'Catalogo Ctas Ctes p/Fecha              ','fglgo /backup/bexe/cc542                ','                                        ','1',1,'ccr542                                                                                              ','PHP/ccr542.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,3,14,'List.de Clausuras y Rehabilit.          ','fglgo /backup/bexe/cc583                ','                                        ','1',1,'ccr583                                                                                              ','PHP/ccr583.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,3,15,'Clientes por Agencia                    ','fglgo /backup/bexe/cc564                ','                                        ','1',1,'ccr564                                                                                              ','PHP/ccr564.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,3,16,'Extracto Mensual Ctas Ctes.             ','fglgo /backup/bexe/cc510                ',NULL,'1',1,'cc510                                                                                               ','PHP/ccr510.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,3,17,'Listado Rev. Ctas Ctes.                 ','fglgo /backup/bexe/cc585                ',NULL,'1',1,'cc585                                                                                               ','PHP/ccr585.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,3,18,'Cheques por Estado                      ','fglgo /backup/bexe/ccr118               ',NULL,'1',1,'ccr118                                                                                              ','PHP/ccr118.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,3,19,'Estado Gral. De Avances                 ','fglgo /backup/bexe/cc538                ',NULL,'1',1,'cc538                                                                                               ','PHP/ccr538.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,3,20,'Venta de Chequeras                      ','fglgo /backup/bexe/ccr125               ',NULL,'1',1,'ccr125                                                                                              ','PHP/ccr125.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,3,99,'Volver al Menu Anterior                 ','                                        ','                                        ','1',1,'                                                                                                    ','                                        ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,4,1,'Cheques recibidos en Camara             ','fglgo /backup/bexe/cc518                ','                                        ','1',1,'ccr518                                                                                              ','PHP/ccr518.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,4,2,'Cheques Certf. no Cobrados              ','fglgo /backup/bexe/cc519                ','                                        ','1',1,'ccr519                                                                                              ','PHP/ccr519.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,4,3,'Detalle de Chqs. env. a Camara          ','fglgo /backup/bexe/cc508                ','                                        ','1',1,'ccr508                                                                                              ','PHP/ccr508.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,4,4,'Resumen de Chqs. env. a Camara          ','fglgo /backup/bexe/cc509                ','                                        ','1',1,'ccr509                                                                                              ','PHP/ccr509.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,4,5,'Detalle de Transacciones                ','fglgo /backup/bexe/cc515                ','                                        ','1',1,'ccr515                                                                                              ','PHP/ccr515.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,4,6,'Resumen de Transacciones                ','fglgo /backup/bexe/cc514                ','                                        ','1',1,'ccr514                                                                                              ','PHP/ccr514.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,4,7,'Detalle de Cheques Rechazados           ','fglgo /backup/bexe/cc534                ','                                        ','1',1,'ccr534                                                                                              ','PHP/ccr534.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,4,8,'Emision Debitos/Creditos                ','fglgo /backup/bexe/cc523                ','                                        ','1',1,'ccr523                                                                                              ','PHP/ccr523.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,4,9,'Planilla Camara de Comensacion          ','fglgo /backup/bexe/cc540                ','                                        ','1',1,'ccr540                                                                                              ','PHP/ccr540.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,4,10,'Avances por Of.Credito                  ','fglgo /backup/bexe/cc541                ','                                        ','1',1,'ccr541                                                                                              ','PHP/ccr541.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,4,11,'Cuentas sin REg. de Firmas              ','fglgo /backup/bexe/cc547                ','                                        ','1',1,'ccr547                                                                                              ','PHP/ccr547.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,4,12,'Resumen Trans. por Usuario              ','fglgo /backup/bexe/cc565                ','                                        ','1',1,'ccr565                                                                                              ','PHP/ccr565.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,4,14,'Extracto (ASCII)                        ','fglgo /backup/bexe/cc549                ','                                        ','1',1,'ccr549                                                                                              ','PHP/ccr549.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,4,15,'Historico de Firmas                     ','fglgo /backup/bexe/ccr116               ',NULL,'1',1,'ccr116                                                                                              ','PHP/ccr116.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,4,16,'Cheq.Rechaz. X Insuf de Fondos          ','fglgo /backup/bexe/ccr103               ',NULL,'1',1,'ccr103                                                                                              ','PHP/ccr103.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,4,17,'Detalle Fondos Despignorado             ','fglgo /backup/bexe/ccr100               ',NULL,'1',1,'ccr100                                                                                              ','PHP/ccr100.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,4,99,'Volver al Menu Anterior                 ','                                        ','                                        ','1',1,'                                                                                                    ','                                        ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,5,1,'Detalle Contable                        ','fglgo /backup/bexe/cc512                ','                                        ','1',1,'ccr512                                                                                              ','PHP/ccr512.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,5,2,'Resumen Contable                        ','fglgo /backup/bexe/cc513                ','                                        ','1',1,'ccr513                                                                                              ','PHP/ccr513.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,5,3,'Cuadre Contable de Saldos               ','fglgo /backup/bexe/cc524                ','                                        ','1',1,'ccr524                                                                                              ','PHP/ccr524.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,5,5,'Detalle Contable por Tipo               ','fglgo /backup/bexe/cc533                ','                                        ','1',1,'ccr533                                                                                              ','PHP/ccr533.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,5,6,'Mayores de Cuenta                       ','fglgo /backup/bexe/cc550                ','                                        ','1',1,'ccr550                                                                                              ','PHP/ccr550.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,5,7,'Impresion de Asientos                   ','fglgo /backup/bexe/cc527                ','                                        ','1',1,'ccr527                                                                                              ','PHP/ccr527.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,5,99,'Volver al Menu Anterior                 ','                                        ','                                        ','1',1,'                                                                                                    ','                                        ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,6,1,'Extracto                                ','fglgo /backup/bexe/cc570                ','                                        ','1',1,'ccr570                                                                                              ','PHP/ccr570.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,6,2,'Emision Debitos/Creditos                ','fglgo /backup/bexe/cc574                ','                                        ','1',1,'ccr574                                                                                              ','PHP/ccr574.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,6,99,'Volver al Menu Anterior                 ','                                        ','                                        ','1',1,'                                                                                                    ','                                        ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,7,1,'Cierre Diario                           ','fglgo /backup/bexe/cc350                ','                                        ','1',1,'ccp350                                                                                              ','PHP/ccp350.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,7,2,'Posteo Contable                         ','fglgo /backup/bexe/cc398                ','                                        ','1',1,'ccp398                                                                                              ','PHP/ccp398.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,7,3,'Liber.Dep.Cheqs,Ajenos                  ','fglgo /backup/bexe/cc352                ','                                        ','1',1,'ccp352                                                                                              ','PHP/ccp352.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,7,4,'Generacion de promedios                 ','fglgo /backup/bexe/cc804                ','                                        ','1',1,'ccp804                                                                                              ','PHP/ccp804.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,7,5,'Capitaliz. Interes Mensual              ','fglgo /backup/bexe/cc347                ','                                        ','1',1,'ccp347                                                                                              ','PHP/ccp347.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,7,6,'Rever. Capit. Interes Mensual           ','fglgo /backup/bexe/cc341                ','                                        ','1',1,'ccp341                                                                                              ','PHP/ccp341.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,7,7,'Cobro Mant. de Cuenta Mensual           ','fglgo /backup/bexe/cc344                ','                                        ','1',1,'ccp344                                                                                              ','PHP/ccp344.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,7,8,'Habilitacion de Modulo                  ','fglgo /backup/bexe/cc390                ','                                        ','1',1,'ccp390                                                                                              ','PHP/ccp390.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,7,9,'Deveng. Prod. Avances                   ','fglgo /backup/bexe/cc353                ','                                        ','1',1,'ccp353                                                                                              ','PHP/ccp353.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,7,10,'Manten. Tasas Preferenciales            ','fglgo /backup/bexe/cc318                ','                                        ','1',1,'ccm318                                                                                              ','PHP/ccm318.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,7,11,'Inmovilizacion de Cuentas               ','fglgo /backup/bexe/cc360                ','                                        ','1',1,'ccp360                                                                                              ','PHP/ccp360.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,7,12,'Capitalizacion Intereses Diario         ','fglgo /backup/bexe/cc370                ',NULL,'1',1,'cc370                                                                                               ','PHP/ccp370.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,7,13,'Cierre de Cuentas                       ','fglgo /backup/bexe/cc387                ',NULL,'1',1,'cc387                                                                                               ','PHP/ccp387.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,7,14,'Rev.Capitalizacion Cierre Cta.          ','fglgo /backup/bexe/cc388                ',NULL,'1',1,'cc388                                                                                               ','PHP/ccp388.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,7,15,'Cierre de Ctas. Ctes. TGN               ','fglgo /backup/bexe/cc382                ',NULL,'1',1,'cc382                                                                                               ','PHP/ccp382.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,7,99,'Volver al Menu Anterior                 ','                                        ','                                        ','1',1,'                                                                                                    ','                                        ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,8,1,'Mant. Cargos parametros                 ','fglgo /backup/bexe/cc319                ','                                        ','1',1,'ccm319                                                                                              ','PHP/ccm319.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,8,2,'Tipos de Movimiento                     ','fglgo /backup/bexe/cc302                ','                                        ','1',1,'ccm302                                                                                              ','PHP/ccm302.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,8,3,'Tipos de Ctas. Ctes.                    ','fglgo /backup/bexe/cc301                ','                                        ','1',1,'ccm301                                                                                              ','PHP/ccm301.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,8,4,'Tipos de Pignoraciones                  ','fglgo /backup/bexe/cc304                ','                                        ','1',1,'ccm304                                                                                              ','PHP/ccm304.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,8,5,'Tipos de Chequeras                      ','fglgo /backup/bexe/cc308                ','                                        ','1',1,'ccm308                                                                                              ','PHP/ccm308.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,8,6,'Niveles de Tasas de Interes             ','fglgo /backup/bexe/cc307                ','                                        ','1',1,'ccm307                                                                                              ','PHP/ccm307.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,8,7,'Motivos de Bloqueo                      ','fglgo /backup/bexe/cc303                ','                                        ','1',1,'ccm303                                                                                              ','PHP/ccm303.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,8,8,'Mant. Parametros Especiales             ','fglgo /backup/bexe/cc313                ','                                        ','1',1,'ccm313                                                                                              ','PHP/ccm313.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,8,9,'Mant. Parametros Generales              ','fglgo /backup/bexe/cc397                ','                                        ','1',1,'ccp397                                                                                              ','PHP/CCP397.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,8,10,'Listados de conceptos                   ','fglgo /backup/bexe/cc500                ','                                        ','1',1,'ccr500                                                                                              ','PHP/ccr500.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,8,11,'Listados Tipos de Movimiento            ','fglgo /backup/bexe/cc502                ','                                        ','1',1,'ccr502                                                                                              ','PHP/ccr502.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,8,12,'Listados Tipos de Ctas. Ctes            ','fglgo /backup/bexe/cc501                ','                                        ','1',1,'ccr501                                                                                              ','PHP/ccr501.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,8,13,'Listado Tipos de Pignoracion            ','fglgo /backup/bexe/cc504                ','                                        ','1',1,'ccr504                                                                                              ','PHP/ccr504.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,8,14,'Listado Motivos de Bloqueo              ','fglgo /backup/bexe/cc503                ','                                        ','1',1,'ccr503                                                                                              ','PHP/ccr503.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,8,15,'Mantenimiento Conceptos                 ','fglgo /backup/bexe/cc300                ',NULL,'1',1,'cc300                                                                                               ','PHP/ccm300.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,8,99,'Volver al Menu Anterior                 ','                                        ','                                        ','1',1,'                                                                                                    ','                                        ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,9,2,'Asignacion Tipo Movimiento              ','fglgo /backup/bexe/cc339                ','                                        ','1',1,'ccm339                                                                                              ','PHP/CCM339.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (4,9,99,'Volver al Menu Anterior                 ','                                        ','                                        ','1',1,'                                                                                                    ','                                        ');


SELECT *FROM admpr
WHERE admprmodn = 4

DELETE admpr
WHERE admprmodn = 4

load FROM admpr_Contact.txt INSERT INTO admpr

INSERT INTO admpr (admprmodn,admprmprn,admprdesc,admprnimg) VALUES (4,1,'Transacciones                           ',NULL);
INSERT INTO admpr (admprmodn,admprmprn,admprdesc,admprnimg) VALUES (4,2,'Procesos Usuales                        ',NULL);
INSERT INTO admpr (admprmodn,admprmprn,admprdesc,admprnimg) VALUES (4,3,'Reportes                                ',NULL);
INSERT INTO admpr (admprmodn,admprmprn,admprdesc,admprnimg) VALUES (4,4,'Reportes Diarios                        ',NULL);
INSERT INTO admpr (admprmodn,admprmprn,admprdesc,admprnimg) VALUES (4,5,'Reportes Contables                      ',NULL);
INSERT INTO admpr (admprmodn,admprmprn,admprdesc,admprnimg) VALUES (4,7,'Procesos Especiales                     ',NULL);
INSERT INTO admpr (admprmodn,admprmprn,admprdesc,admprnimg) VALUES (4,8,'Parametros                              ',NULL);
INSERT INTO admpr (admprmodn,admprmprn,admprdesc,admprnimg) VALUES (4,9,'Autorizaciones                          ',NULL);
INSERT INTO admpr (admprmodn,admprmprn,admprdesc,admprnimg) VALUES (4,99,'Volver al Menu Anterior                 ',NULL);


/* PARAMETROS */
-- MOTIVOS DE BLOQUEO
SELECT *
FROM ccblq

DELETE ccblq

load FROM ccblq_Contact.txt INSERT INTO ccblq

INSERT INTO ccblq (ccblqcblq,ccblqdesc) VALUES (1,'ACTIVA                                                                                                                  ');
INSERT INTO ccblq (ccblqcblq,ccblqdesc) VALUES (2,'INMOVILIZADA                                                                                                            ');
INSERT INTO ccblq (ccblqcblq,ccblqdesc) VALUES (3,'CLAUSURADA                                                                                                              ');
INSERT INTO ccblq (ccblqcblq,ccblqdesc) VALUES (4,'CERRADA                                                                                                                 ');
INSERT INTO ccblq (ccblqcblq,ccblqdesc) VALUES (5,'BLOQUEO TEMPORAL                                                                                                        ');
INSERT INTO ccblq (ccblqcblq,ccblqdesc) VALUES (6,'BLOQUEO TOTAL                                                                                                           ');


-- CAPITALIZACION EN TIPOS DE CUENTAS CORRIENTES 
SELECT *
FROM cccca

DELETE cccca

load FROM cccca_Contact.txt INSERT INTO cccca

INSERT INTO cccca (ccccatpcc,ccccadesc,ccccacapb,ccccacapd,ccccaretb,ccccaretd,ccccauser,ccccahora,ccccafpro) VALUES (1,'PERSONAS NATURALES                      ','41101101        ','41101201        ','24203101        ','24203201        ','RET','11:12:06','2022-08-26');
INSERT INTO cccca (ccccatpcc,ccccadesc,ccccacapb,ccccacapd,ccccaretb,ccccaretd,ccccauser,ccccahora,ccccafpro) VALUES (2,'PERSONAS JURIDICAS                      ','41101101        ','41101201        ','24203101        ','24203201        ','RET','11:12:09','2022-08-26');


-- CARGOS CUENTAS CORRIENTES
SELECT *
FROM cccgp

DELETE cccgp

load FROM cccgp_Contact.txt INSERT INTO cccgp

INSERT INTO cccgp (cccgpccrg,cccgpdesc,cccgptpcg,cccgpdias,cccgpttrn,cccgpfapl,cccgpbapl,cccgpfcob,cccgpcmon,cccgpmont,cccgpcctb,cccgpadic,cccgpmiva) VALUES (1,'SEGURO DE DESGRAVAMEN MN .85% ',5,NULL,2,4,2,2,1,0.850000,'14208101        ',NULL,'N');


-- CONCEPTOS
SELECT *
FROM cccon

DELETE cccon

load FROM cccon_Contact.txt INSERT INTO cccon

INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (1,0,'TIPOS DE MOVIMIENTO                     ','     ',0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (1,1,'DEBITOS                                 ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (1,2,'CREDITOS                                ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (1,3,'TRASPASOS                               ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (1,6,'AVANCES                                 ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (1,7,'CAMBIOS DE ESTADO                       ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (1,8,'PIGNORACION DE FONDOS                   ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (1,10,'TRANSACCIONES ESPECIALES                ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (1,11,'PAGO DE CHEQUES SUCURSALES Y CORRESP.   ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (1,15,'TRANSACCIONES ELECTRON                  ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (1,16,'TRASACCIONES AVANCES                    ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (1,20,'INTERESES SOBREGIRO                     ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (1,21,'CARGOS SOBREGIRO                        ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (1,22,'GARANTIAS                               ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (1,23,'AVANCES CUENTAS CORRIENTES              ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (1,40,'DEBITO CON EMISION DE FACTURA           ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (1,50,'TRANSACCIONES CAJA                      ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (1,51,'TRANSACCIONES CAJA DE AHORRO            ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (1,52,'TRANSACCION SERVICIOS INSTITUCIONES     ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (1,53,'TRANSACCION BOLETAS DE GARANTIA         ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (1,54,'TRANSACCIONES AVALES BANCARIOS          ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (1,55,'TRANSACCION COBRANZA                    ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (1,56,'OPERACIONES ACREDITIVOS DE IMPORTACION  ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (1,57,'TRANSACCIONES DE GIROS                  ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (1,58,'TRANSACCION DE D.P.F.                   ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (1,59,'TRANSACCIONES DE CHEQUES DE GERENCIA    ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (1,63,'ADELANTO DE EFECTIVO TARJ.CREDITO       ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (1,64,'COBRO DE COMISIONES                     ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (1,70,'PRESTAMOS COMERCIALES                   ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (1,80,'TRANSFERENCIA A/DE OTROS BANCOS OFFICE  ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (1,85,'RECAUDACION/DEVOLUCION POR ACH          ','     ',0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (1,99,'TRASPASOS BANCA POR INTERNET            ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (2,0,'STATUS USO                              ','     ',0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (2,1,'TODO USO                                ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (2,2,'SOLO DEPOSITO                           ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (2,3,'SOLO RETIRO                             ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (3,0,'MANEJO                                  ','     ',0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (3,1,'INDIVIDUAL                              ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (3,2,'CONJUNTA                                ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (3,3,'ALTERNA                                 ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (4,0,'STATUS DE LA CUENTA                     ','     ',0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (4,1,'ACTIVA                                  ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (4,2,'INACTIVA                                ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (4,3,'CLAUSURADA                              ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (4,4,'CERRADA                                 ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (4,5,'LIQUIDADA                               ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (4,6,'BLOQUEO TEMPORAL                        ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (5,0,'STATUS CHEQUES                          ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (5,1,'HABILITADO                              ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (5,2,'RESERVADO                               ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (5,3,'CERTIFICADO                             ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (5,4,'EXTRAVIADO O ROBADO                     ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (5,5,'RECHAZADO EN CAMARA                     ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (5,6,'CHEQUE CERTFICADO DEVUELTO              ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (5,7,'NO HABILITADO                           ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (5,8,'PAGADO                                  ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (5,9,'ANULADO                                 ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (6,0,'MOTIVOS RECHAZO DE CHEQUES              ','     ',0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (2,6,'1131                                    ',NULL,9);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (3,6,'132132123131313                         ',NULL,9);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (6,1,'RECHAZO POR FALTA DE FONDOS             ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (6,2,'RECHAZO POR CHEQUE MAL GIRADO           ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (6,3,'RECHAZO POR CHEQUE EN MAL ESTADO        ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (6,4,'RECHAZO POR FALTA DE FIRMAS             ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (6,5,'CUENTA CERRADA                          ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (6,6,'FALTA FIRMA DE ENDOSO                   ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (6,7,'NO CORRESPONDE A LA PLAZA               ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (6,8,'FECHA CADUCA                            ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (6,9,'RETENCION JUDICIAL                      ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (6,10,'ALTERACION DE DOCUMENTO                 ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (6,11,'FALTA DE SELLO DE CAMARA                ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (6,12,'FIRMA NO REGISTRADA DEL GIRADOR         ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (7,0,'VIA INGRESO DE CHEQUES                  ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (7,1,'PAGADO                                  ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (7,2,'CAMARA                                  ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (7,3,'DEPOSITO                                ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (8,0,'ESTADOS CARTERA                         ','     ',0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (8,1,'AUTORIZADO Y NO DESEMBOLSADO            ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (8,2,'VIGENTE                                 ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (8,3,'VIGENTE LARGO PLAZO                     ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (8,4,'ATRASADO                                ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (8,5,'VENCIDO                                 ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (8,6,'EJECUCION                               ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (8,7,'CASTIGO                                 ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (8,9,'CANCELADO                               ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (9,0,'TIPOS DE DEPOSITOS                      ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (9,1,'EFECTIVO                                ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (9,2,'CHEQUES AJENOS                          ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (9,3,'CHEQUES PROPIOS                         ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (9,4,'CHEQUES AJENOS FUERA DE HORA            ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (10,0,'TIPOS DE AVANCE                         ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (10,1,'AVANCES CONTRATADOS                     ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (10,2,'AVANCES EVENTUALES                      ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (11,0,'TIPOS DE RESPONSABILIDAD                ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (11,1,'RESPONSABILIDAD DIRECTA                 ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (11,2,'RESPONSABILIDAD INDIRECTA               ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (12,0,'TIPOS DE CARGOS                         ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (12,1,'CARGOS GENERALES                        ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (12,2,'CARGOS PENALES                          ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (12,3,'CARGOS JUDICIALES                       ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (12,4,'CARGOS ESPECIALES                       ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (12,5,'CARGOS GENERALES PERSONAL NATURAL       ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (12,6,'CARGOS PENALES CORRIENTES               ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (12,8,'CARGOS PENALES ANTERIORES               ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (13,0,'FACTORES DE APLICACION                  ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (13,1,'MONTO FIJO                              ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (13,2,'PORCENTAJE                              ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (13,3,'PORCENTAJE EN RELACION AL TIEMPO        ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (13,4,'PORCENTAJE DESDE LA ULTIMA TRANSACCION  ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (14,0,'BASE DE APLICACION                      ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (14,2,'SOBRE EL SALDO DEL CREDITO              ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (15,0,'FORMAS DE COBRO                         ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (15,1,'UNA SOLA VEZ                            ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (15,2,'EN CADA OPERACION                       ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (16,0,'TIPOS DE TRANSACCION CARTERA            ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (16,1,'DESEMBOLSO                              ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (16,2,'PAGO                                    ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (17,0,'TIPOS DE CAPITALIZACION                 ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (17,1,'PROMEDIO MENSUAL - ABONO FIN DE MES     ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (17,2,'CAPITALIZACION DIARIA - ABONO DIARIO    ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (18,0,'TIPOS DE TASA                           ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (18,1,'TASA EN BASE A RANGOS                   ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (18,2,'TASA FIJA                               ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (20,0,'VALORES CARTERA                         ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (20,1,'CAPITAL                                 ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (20,2,'INTERES                                 ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (21,0,'TIPOS GLOSA EXTRACTO                    ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (21,1,'BANCO                                   ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (21,2,'casilla interna                         ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (21,3,'casilla externa                         ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (21,4,'Domicilio                               ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (21,5,'Agencia                                 ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (22,0,'TIPOS DE CHEQUE                         ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (22,1,'NORMAL                                  ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (22,2,'VISADO                                  ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (22,3,'GERENCIA                                ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (30,0,'MOTIVO DE APERTURA                      ','     ',0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (30,1,'TRANSACCIONES EN GRAL                   ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (30,2,'PAGO DE HABERES / JUBILACION            ','PHJ  ',0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (30,3,'PAGO DE EXPENSAS                        ','PDE  ',0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (30,4,'ADMINISTRACION DE CREDITOS              ','ADC  ',0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (30,5,'ADMINISTRACION DE RECURSOS              ','ADR  ',0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (30,6,'GIROS Y REMESAS                         ','GYR  ',0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (30,7,'GARANTIAS                               ','GAR  ',0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (51,0,'CAMBIOS DE ESTADO                       ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (51,1,'CAMBIO DE TIPO DE CUENTA                ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (3,4,'NUEVO MANEJO                            ','NM   ',9);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (2,4,'NUEVO USO                               ','D    ',9);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (3,5,'PRUEBA                                  ',NULL,9);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (2,5,'PRUEBA                                  ',NULL,9);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (6,13,'CUENTA CLAUSURADA                       ',NULL,0);
INSERT INTO cccon (ccconpref,ccconcorr,cccondesc,ccconabre,ccconmrcb) VALUES (6,14,'POR ORDEN DE NO PAGO                    ',NULL,0);


-- PARAMETROS GENERALES
SELECT *
FROM ccctl

DELETE ccctl

load FROM ccctl_Contact.txt INSERT INTO ccctl

INSERT INTO ccctl (ccctlndoc,ccctlncta,ccctlfulp,ccctlnmes,ccctldpsm,ccctlcdpc,ccctlcadc,ccctlcdif,ccctlctra,ccctlfulc,ccctlfanc,ccctlfucm,ccctlfacm,ccctlntra,ccctltasb,ccctltasd,ccctltano,ccctlctgd,ccctlctga,ccctlcpvg,ccctlcpvn,ccctlcpv2,ccctlcpej,ccctlpdvg,ccctlpdvn,ccctlpdv2,ccctlpdej,ccctlipvg,ccctlipvn,ccctlipv2,ccctlipej,ccctlsdvg,ccctlsdvn,ccctlsdv2,ccctlsdej,ccctlsavg,ccctlsavn,ccctlsav2,ccctlsaej,ccctldeje,ccctlfcia,ccctlfcie,ccctlfucp,ccctlfacp,ccctlpeja,ccctlvfir,ccctlccas,ccctlpcas,ccctlicas,ccctlsdca,ccctlsaca,ccctlkrec,ccctlkare,ccctliccg,ccctliacg,ccctltcvp,ccctlnser) VALUES (504254,3,'1993-12-31',NULL,730,'24201M01        ','21104M01        ','54201M01        ',NULL,'2021-02-28','2021-02-28','2021-09-30','2005-08-31',326283,24.000,24.000,360,'64101M01        ','74101M01        ','13102M01        ','13102M01        ','13302M01        ','13402M01        ','13801M52        ','13801M52        ','13803M52        ','13804M52        ','51302M52        ','51302M52        ','51501M52        ','51601M52        ','86601M01        ','86601M01        ','86603M01        ','86604M01        ','96601M01        ','96601M01        ','96603M01        ','96604M01        ',90,'2021-09-17','2021-09-16','2021-09-18','2021-09-17','N','N','13904M01        ','43401M01        ','43401M01        ','86501M01        ','96501M01        ','53101M02        ',NULL,'53102M02        ',NULL,0.00000,4);

-- NIVELES DE TASA DE INTERES
SELECT *
FROM ccniv

DELETE ccniv

load FROM ccniv_contact.txt INSERT INTO ccniv

INSERT INTO ccniv (ccnivtpcc,ccnivcmon,ccnivran1,ccnivran2,ccnivtasa) VALUES (1,2,0.00,999999999.00,0.050);
INSERT INTO ccniv (ccnivtpcc,ccnivcmon,ccnivran1,ccnivran2,ccnivtasa) VALUES (2,1,0.00,999999999.00,2.000);
INSERT INTO ccniv (ccnivtpcc,ccnivcmon,ccnivran1,ccnivran2,ccnivtasa) VALUES (2,2,0.00,999999999.00,0.050);
INSERT INTO ccniv (ccnivtpcc,ccnivcmon,ccnivran1,ccnivran2,ccnivtasa) VALUES (1,1,0.00,9999999999.00,2.000);

-- TIPOS DE PIGNORACION
SELECT *
FROM cctpg

DELETE cctpg 

load FROM cctpg_Contact.txt INSERT INTO cctpg

INSERT INTO cctpg (cctpgcpig,cctpgdesc,cctpgcmon,cctpgctbz,cctpgctbl,cctpgtpgr) VALUES (10,'MONTO MINIMO PERSONA NATURAL MN         ',1,'N',NULL,30);
INSERT INTO cctpg (cctpgcpig,cctpgdesc,cctpgcmon,cctpgctbz,cctpgctbl,cctpgtpgr) VALUES (10,'MONTO MINIMO PERSONA JURIDICA MN        ',1,'N',NULL,40);
INSERT INTO cctpg (cctpgcpig,cctpgdesc,cctpgcmon,cctpgctbz,cctpgctbl,cctpgtpgr) VALUES (10,'MONTO MINIMO PERSONA NATURAL ME         ',2,'N',NULL,30);
INSERT INTO cctpg (cctpgcpig,cctpgdesc,cctpgcmon,cctpgctbz,cctpgctbl,cctpgtpgr) VALUES (10,'MONTO MINIMO PERSONA JURIDICA ME        ',2,'N',NULL,40);
INSERT INTO cctpg (cctpgcpig,cctpgdesc,cctpgcmon,cctpgctbz,cctpgctbl,cctpgtpgr) VALUES (20,'RETENCION JUDICIAL PERSONA NATURAL MN   ',1,'S','21401130',30);
INSERT INTO cctpg (cctpgcpig,cctpgdesc,cctpgcmon,cctpgctbz,cctpgctbl,cctpgtpgr) VALUES (20,'RETENCION JUDICIAL PERSONA JURIDICA MN  ',1,'N',NULL,40);
INSERT INTO cctpg (cctpgcpig,cctpgdesc,cctpgcmon,cctpgctbz,cctpgctbl,cctpgtpgr) VALUES (20,'RETENCION JUDICIAL PERSONA NATURAL ME   ',2,'S','21401230',30);
INSERT INTO cctpg (cctpgcpig,cctpgdesc,cctpgcmon,cctpgctbz,cctpgctbl,cctpgtpgr) VALUES (20,'RETENCION JUDICIAL PERSONA JURIDICA ME  ',2,'N',NULL,40);
INSERT INTO cctpg (cctpgcpig,cctpgdesc,cctpgcmon,cctpgctbz,cctpgctbl,cctpgtpgr) VALUES (30,'SERIEDAD DE PROPUESTA P. NATURAL MN     ',1,'N',NULL,30);
INSERT INTO cctpg (cctpgcpig,cctpgdesc,cctpgcmon,cctpgctbz,cctpgctbl,cctpgtpgr) VALUES (30,'SERIEDAD DE PROPUESTA P. JURIDICA MN    ',1,'N',NULL,40);
INSERT INTO cctpg (cctpgcpig,cctpgdesc,cctpgcmon,cctpgctbz,cctpgctbl,cctpgtpgr) VALUES (30,'SERIEDAD DE PROPUESTA P. NATURAL ME     ',2,'N',NULL,30);
INSERT INTO cctpg (cctpgcpig,cctpgdesc,cctpgcmon,cctpgctbz,cctpgctbl,cctpgtpgr) VALUES (30,'SERIEDAD DE PROPUESTA P. JURIDICA ME    ',2,'N',NULL,40);
INSERT INTO cctpg (cctpgcpig,cctpgdesc,cctpgcmon,cctpgctbz,cctpgctbl,cctpgtpgr) VALUES (40,'CUMPLIMIENTO CONTRATO P. NATURAL MN     ',1,'N',NULL,30);
INSERT INTO cctpg (cctpgcpig,cctpgdesc,cctpgcmon,cctpgctbz,cctpgctbl,cctpgtpgr) VALUES (40,'CUMPLIMIENTO CONTRATO P. JURIDICA MN    ',1,'N',NULL,40);
INSERT INTO cctpg (cctpgcpig,cctpgdesc,cctpgcmon,cctpgctbz,cctpgctbl,cctpgtpgr) VALUES (40,'CUMPLIMIENTO CONTRATO P. NATURAL ME     ',2,'N',NULL,30);
INSERT INTO cctpg (cctpgcpig,cctpgdesc,cctpgcmon,cctpgctbz,cctpgctbl,cctpgtpgr) VALUES (40,'CUMPLIMIENTO CONTRATO P. JURIDICA ME    ',2,'N',NULL,40);

-- TIPOS DE CUENTAS CORRIENTES 
SELECT *
FROM cctcc

DELETE cctcc

load FROM cctcc_Contact.txt INSERT INTO cctcc

INSERT INTO cctcc (cctcctpcc,cctccdesc,cctccctab,cctccctad,cctccctsb,cctccctsd,cctccctcb,cctccctcd,cctccavib,cctccavid,cctccavmb,cctccavmd,cctcctmcb,cctcctmcd,cctcctcap,cctccsmib,cctccsmid,cctccctau,cctccctsu,cctccctcu,cctccimab,cctccimad,cctcctpgr,cctccctrb,cctccctrd,cctccctru) VALUES (1,'PERSONAS NATURALES                      ','21101130        ','21101230        ','21102130        ','21102230        ','21402130        ','21402230        ',0.00,10.00,0.00,30.00,0.000,40.000,2,0.00,20.00,NULL,NULL,NULL,0.00,0.00,30,'21401130        ','21401230        ',NULL);
INSERT INTO cctcc (cctcctpcc,cctccdesc,cctccctab,cctccctad,cctccctsb,cctccctsd,cctccctcb,cctccctcd,cctccavib,cctccavid,cctccavmb,cctccavmd,cctcctmcb,cctcctmcd,cctcctcap,cctccsmib,cctccsmid,cctccctau,cctccctsu,cctccctcu,cctccimab,cctccimad,cctcctpgr,cctccctrb,cctccctrd,cctccctru) VALUES (2,'PERSONAS JURIDICAS                      ','21101140        ','21101240        ','21102140        ','21102240        ','21402140        ','21402240        ',0.00,0.00,0.00,0.00,0.000,0.000,2,0.00,0.00,NULL,NULL,NULL,0.00,0.00,40,'21401140        ','21401240        ',NULL);

-- TIPOS DE CHEQUES
SELECT *
FROM cctch 

DELETE cctch

load FROM cctch_Contact.txt INSERT INTO cctch

INSERT INTO cctch (cctchcant,cctchcmon,cctchdesc,cctchimpt) VALUES (20,1,'CHEQUERA DE 20 CHEQUES M.N.   ',100.00);
INSERT INTO cctch (cctchcant,cctchcmon,cctchdesc,cctchimpt) VALUES (25,1,'CHEQUERA DE 25 CHEQUES M.N.   ',60.00);
INSERT INTO cctch (cctchcant,cctchcmon,cctchdesc,cctchimpt) VALUES (25,2,'CHEQUERAS DE 25 CHEQUES M.E.  ',10.00);
INSERT INTO cctch (cctchcant,cctchcmon,cctchdesc,cctchimpt) VALUES (50,1,'CHEQUERAS DE 50 CHEQUES M.N.  ',120.00);
INSERT INTO cctch (cctchcant,cctchcmon,cctchdesc,cctchimpt) VALUES (50,2,'CHEQUERAS DE 50 CHEQUES M.E.  ',20.00);
INSERT INTO cctch (cctchcant,cctchcmon,cctchdesc,cctchimpt) VALUES (152,1,'CHEQUERAS DE 152 CHEQUES M.N. ',350.00);
INSERT INTO cctch (cctchcant,cctchcmon,cctchdesc,cctchimpt) VALUES (20,2,'CHEQUERA DE 20 CHEQUES M.N.   ',20.00);

-- TIPOS DE MOVIMIENTO
SELECT *
FROM cctmv

DELETE cctmv

load FROM cctmv_Contact.txt INSERT INTO cctmv

INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (1,1,'CARGO OPERACIONES CONTABILIDAD          ','18307107        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (1,2,'CARGO RETIROS C.C. C/CHEQUES            ','18307111        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (1,3,'CARGO OPERACIONES CONTABILIDAD CLIENTE  ','18307107        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (1,5,'CARGO POR RESOLUCIONES DE DIRECTORIO    ','18307107        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (1,6,'TRANSAC. ATM-REVERTIDA                  ','18307107        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (1,7,'RETIRO EN CHEQUE                        ','18307107        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (1,8,'NOTA DE DEBITO                          ','18307107        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (1,9,'OPERACIONES VARIAS                      ','18307107        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (1,30,'TRANSFERENCIAS ACH DEB                  ','24405M50        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (1,31,'COMISIONES ACH DEB                      ','54105M05        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (1,40,'EMISION EXTRACTO CUENTA DE AHORRO       ','18307107        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (1,41,'EMISION TARJETA DEBITO ADICIONAL        ','54501M02        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (1,42,'REPOSICION DE TARJETA DE DEBITO         ','54501M02        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (1,43,'PAGO DE SERVICIOS (COMISION)            ','18307107        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (1,100,'RETENCIONES JUDICIALES                  ','18307107        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (2,1,'ABONO OPERACIONES CONTABILIDAD          ','18307107        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (2,2,'ABONO CONTABILIDAD CLIENTE              ','18307107        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (2,3,'NOTA DE CREDITO                         ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (2,20,'TELECEL BPI                             ','24405117        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (2,21,'NUEVATEL BPI                            ','24405115        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (2,22,'ENTEL BPI                               ','24405111        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (2,30,'TRANSFERENCIAS ACH CRE                  ','24405M50        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (2,99,'ABONO POR TRASPASO DE SISTEMA           ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (2,100,'SUSPENSION RET. JUDICIALES              ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (3,1,'TRASPASOS ENTRE CTA CORRIENTE BXI       ','18307107        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (3,2,'TRASPASO ENTRE CTA.CTE-CAJA AHORRO BXI  ','18307107        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (3,3,'TRASPASO ENTRE CTA CORRIENTE PROPIAS-BXI','18307107        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (3,4,'TRASPASO CTA.CTE-CTA.AHORRO PROPIAS-BXI ','18307107        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (3,5,'TRASPASO CTA CORRIENTE AJENA-BXI        ','18307107        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (3,6,'TRASPASO CTA.CTE-CTA.AHORRO AJENA-BXI   ','18307107        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (6,1,'ABONO POR SOBREGIRO CT.                 ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (6,2,'ABONO POR SOBREGIRO EV.                 ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (6,3,'CARGO POR SOBREGIRO CT.                 ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (6,4,'CARGO POR SOBREGIRO EV.                 ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (7,1,'CAMBIOS DE ESTADO                       ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (7,2,'CAMBIO DE ESTADO AVANCES                ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (10,1,'INTERESES GANADOS                       ','41101M01        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (10,2,'RETENCION DE IMPUESTOS IVA              ','24203101        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (10,3,'CARGO POR VENTA DE CHEQUERA             ','54103M01        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (10,4,'CERTIFICACION DE CHEQUE                 ','54103M02        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (10,5,'PAGO DE CHEQUES CAMARA P/BANCO          ','18307131        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (10,6,'LIBERACION DE DEPOSITOS CHQ/AJENOS      ','21104M01        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (10,7,'CARGO MANTENIMIENTO CUENTA              ','54103M03        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (10,8,'RECHAZO CHQS CAMARA                     ','18307131        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (10,9,'ANULACION CHQ.CERTIFICADO               ','21105M01        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (10,11,'CTAS.CTES.INMOV.POR PRESCRIPCION        ','22111M03        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (10,15,'CARGO MTTO. CUENTA REZAGADOS            ','54103M03        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (10,20,'TRANSFERENCIA A TERCEROS                ','24199M01        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (10,21,'ABONO TRASFERENCIA ACH                  ','24199M01        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (11,3,'CHEQUE PAGADO SUC. LA PAZ               ','18308M01        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (11,4,'CHEQUE PAGADO SUC. SCZ.                 ','18308M02        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (11,5,'CHEQUE PAGADO SUC. CBBA.                ','18308M03        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (11,11,'REVERSION CHEQUE VISADO                 ','18307117        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (15,1,'DEBITO POR RETIRO ATM-PROPIO            ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (15,2,'DEBITO POR RETIRO POS-PROPIO            ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (15,3,'DEBITO POR COMPRA P.O.S-PROPIO          ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (15,4,'DEBITO POR RETIRO ATM-VISA              ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (15,5,'DEBITO POR RETIRO POS-VISA              ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (15,6,'DEBITO POR COMPRA P.O.S-VISA            ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (15,7,'DEBITO POR RETIRO ATM-RED               ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (15,8,'DEBITO POR RETIRO ATM-REDBANK           ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (15,9,'DEBITO POR TRANSAC.NO FINANC.           ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (15,12,'CGO.X NO DISP. O POR LIMITE             ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (15,13,'TRANSACCIONES SMS                       ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (15,20,'CGO.X RET.EFEC. ATM-PROPIO              ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (15,21,'CGO.X RET.EFEC. POS-PROPIO              ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (15,22,'CGO.X COMPRA P.O.S-PROPIO               ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (15,23,'CGO.X RET.EFEC. ATM-VISA                ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (15,24,'CGO.X RET.EFEC. POS-VISA                ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (15,25,'CGO.X COMPRA P.O.S-VISA                 ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (15,26,'CGO.X RET.EFEC. ATM-RED                 ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (15,27,'CGO.X RET.EFEC. ATM-REDBANK             ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (15,28,'CGO.X TRANS.NO FINANCIERAS              ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (15,29,'CGO.X TRANS.SMS                         ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (15,54,'PAGO MINIMO DE TARJETA DE CREDITO       ','18307125        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (16,1,'DEVOL.POR RETIRO ATM-PROPIO             ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (16,2,'DEVOL.POR RETIRO POS-PROPIO             ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (16,3,'DEVOL.POR COMPRA P.O.S-PROPIO           ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (16,4,'DEVOL.POR RETIRO ATM-VISA               ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (16,5,'DEVOL.POR RETIRO POS-VISA               ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (16,6,'DEVOL.POR COMPRA P.O.S-VISA             ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (16,7,'DEVOL.POR RETIRO ATM-RED                ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (16,8,'DEVOL.POR RETIRO ATM-REDBANK            ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (16,13,'REVERSION TRANSACCIONES SMS             ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (16,20,'DEVOL.CGO.RET.EFEC. ATM-PROPIO          ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (16,21,'DEVOL.CGO.RET.EFEC. POS-PROPIO          ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (16,22,'DEVOL.CGO.COMPRA P.O.S-PROPIO           ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (16,23,'DEVOL.CGO.RET.EFEC. ATM-VISA            ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (16,24,'DEVOL.CGO.RET.EFEC. POS-VISA            ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (16,25,'DEVOL.CGO.COMPRA P.O.S-VISA             ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (16,26,'DEVOL.CGO.RET.EFEC. ATM-RED             ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (16,27,'DEVOL.CGO.RET.EFEC. ATM-REDBANK         ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (16,28,'DEVOL.CGO.TRANS.NO FINANCIERAS          ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (20,2,'INTERESES SOBREGIRO                     ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (21,1,'SEGURO DE DESGRAVAMEN MN .85%           ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (21,2,'REHAB. CUENTA CLAUSURADA                ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (21,3,'PENALES DE 1 A 30 DIAS                  ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (21,4,'PENALES DE 31 A 60 DIAS                 ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (21,5,'PENALES DE 61 A 90 DIAS                 ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (21,6,'PENALES MAYORES A 90 DIAS               ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (21,10,'GASTOS JUDICIALES M/N                   ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (21,16,'COMISION SOBREGIRO EVENTUAL             ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (21,17,'CERTIFICACION DE CHEQUES M.N.           ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (21,18,'EMISION CHQ. DE GERENCIA M.N.           ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (21,19,'EMIS.CHQ. DE GERENCIA M.E.              ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (21,97,'SEGURO DE VIDA                          ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (40,1,'CARGO MANT.CUENTA                       ','54105M16        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (40,2,'COMIS.P/GIROS EXTERIOR                  ','54105M01        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (40,3,'COMIS.TRASPASOS/EMISION CHEQUES         ','54105M02        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (40,4,'COMIS.P/RECHAZO CHEQUE                  ','54105M10        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (40,5,'COMIS.EMISION CHEQUE DE GERENCIA        ','54105M13        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (40,6,'COMIS.CHEQUES CERTIFICADOS              ','54107M01        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (40,7,'COMIS.EMISION RESUMEN TARJ.CREDITO      ','54115102        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (40,8,'COMIS.MANTENIM.CUENTA TARJ.CREDITO      ','54115103        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (40,9,'COMIS.REPOSICION TARJETA CREDITO        ','54115104        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (40,10,'COMIS.REPOSICION PIN TARJETA CREDITO    ','54115105        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (40,11,'COMIS.INCREM.TEMPORAL TARJETA CREDITO   ','54115106        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (40,12,'COMIS.P/SOBREGIRO TARJETA DE CREDITO    ','54115107        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (40,13,'COMIS.TARJETA CREDITO ADICIONAL         ','54115108        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (40,14,'COMIS.AVANCE EFECTIVO                   ','54115124        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (40,15,'COMISIONES VARIAS                       ','54199M01        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (40,16,'COMIS.P/COBRO SERVICIOS                 ','54199M02        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (40,17,'COMIS.P/COBRO SERV.COLEGIOS             ','54199M04        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (40,18,'COMIS.P/AP.LINEA CREDITO                ','54199M06        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (40,19,'REPOS.FORM.P/DESMB./AMORTZ.MN           ','54501M01        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (40,20,'VENTA CHEQUERA                          ','54501M03        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (40,21,'REHAB. CUENTA CLAUSURADA                ','54505M13        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (40,22,'ALQUILER CAJAS DE SEGURIDAD             ','54503M01        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (40,23,'ING.SERVICIOS ADICIONALES               ','54505M01        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (40,24,'INGRESOS P/FULL SERVICE                 ','54505102        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (40,25,'INGRESO POR FOTOCOPIAS                  ','54505M04        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (40,26,'CERTIFICACIONES Y LEGALIZACIONES        ','54505M06        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (40,27,'EMISION ESTADO DE CUENTA                ','54505M08        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (40,28,'TARJETA DE DEBITO                       ','54505M09        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (40,29,'HABILITACION CTA.CTE.                   ','54505M13        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (40,30,'DEVOL.CHEQUES SIN FONDOS (CAJAS)        ','54505M14        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (40,31,'COMIS.EMISION BOLETA GARANTIA           ','51901M01        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (40,32,'COMIS.RE-EMISION BOLETA GARANTIS        ','54199M01        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (40,33,'COMIS.LIP                               ','54105M11        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (40,34,'COMISION ACH                            ','54105M12        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (50,1,'DEPOSITO DE EFECTIVO                    ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (50,2,'PAGO DE CHEQUES                         ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (50,3,'DEPOSITO CHEQUES OTROS BANCOS LOCALES   ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (50,4,'DEPOSITO CHEQUES DEL MISMO BANCO        ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (50,20,'IMPTO. A LAS TRANSACC.(ITF)             ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (50,21,'REV.IMPTO. A LAS TRANSACC.(ITF)         ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (51,20,'IMPTO. A LAS TRANSACC.(ITF)             ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (51,21,'*REV* ITF                               ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (52,1,'FACTURACION A TERCEROS                  ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (53,1,'COBROS POR CARGOS DE BOLETAS            ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (53,2,'PAGOS DE BOLETAS DE GARANTIAS           ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (53,3,'COBRANZA DE CREDITOS BOLETAS DE GARANTIA',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (53,6,'PREPAGO DE BOLETA                       ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (54,1,'COBROS POR CARGOS DE AVALES BANCARIOS   ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (54,2,'PAGO DE AVALES BANCARIOS                ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (54,3,'COBRANZA DE CREDITO AVALES BANCARIOS    ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (55,1,'COBRANZA DOCUMENTOS                     ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (55,2,'LIQUIDACION DOCUMENTOS                  ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (56,1,'OPERACIONES ACREDITIVOS DE IMPORTACION  ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (56,2,'OPERACIONES ACREDITIVOS (CREDITOS)      ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (57,1,'DEBITO POR ENVIO DE GIRO                ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (57,2,'ABONO POR GIRO RECIBIDO                 ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (57,4,'ABONO POR GIRO RECIBIDO EXT.            ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (58,1,'APERTURA DE D.P.F.                      ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (58,2,'LIQUIDACION DE CAPITAL E INTERES D.P.F. ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (58,3,'LIQUIDACION DE INTERES D.P.F.           ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (58,4,'AUMENTO DE CAPITAL D.P.F.               ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (58,5,'DISMINUCION DE CAPITAL D.P.F.           ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (58,6,'ABONO AUTOM. DE INTERES                 ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (59,1,'DEBITO POR EMISION CHQ.GERENCIA         ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (59,2,'ABONO POR DEPOSITO CHQ.GERENCIA         ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (61,1,'DESEMB.DOC.DESC.                        ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (61,2,'COBRO DOC.DESC                          ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (64,1,'CARGO P/EXTRACTO CTAS.CTES.             ','54505M08        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (64,2,'COMISION CERTIF. DE CHEQUES             ','54107M01        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (64,3,'CARGO P/ EXTRACTO CAJA DE AHORROS       ','54505M08        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (64,4,'COMISION EMISION CHQ.GERENCIA           ','54105M13        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (64,5,'COMISION RETIRO MENOR A 100             ','54103M04        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (64,6,'COMIS.DEPOSITOS P/CONFIRMAR             ','54103M04        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (64,8,'COMIS.CHQS.RECHAZADOS                   ','54105M10        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (64,9,'COMIS.AVANCE CONTRATADO                 ','54103M04        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (64,10,'COMIS.AVANCE EVENTUAL                   ','54103M04        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (64,11,'COMIS.BLOQUEO DE CUENTA                 ','54103M04        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (64,12,'COMIS.ANULACION DE CHEQUE               ','54105M10        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (64,13,'COMIS.HABILITACION DE CUENTA            ','54103M04        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (64,14,'COMIS.HABILITAC.DE CHEQUE               ','54105M10        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (64,15,'COMIS.INMOVILIZ.DE CUENTA               ','54103M04        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (64,18,'CARGO.EMISION TARJ.DEBITO               ','54505M09        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (64,19,'COMIS.TARJ.ADICIONALES                  ','54505M09        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (64,20,'COMIS.RENOVA.TARJETA                    ','54505M09        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (64,21,'COMIS.BLOQ/HABIL.DE TARJETA             ','54505M09        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (64,30,'COMIS.INSUFICIENCIA DE FONDOS           ','54103M04        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (64,51,'CARGO  EXTRACTO RECHAZO DE CEQUES       ','54505M08        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (66,1,'DEBITO REVERSION REMESA FAMILIAR        ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (66,2,'ABONO REMESA FAMILIAR                   ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (70,0,'PRESTAMOS COMERCIALES                   ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (70,1,'DESEMBOLSO DE PRESTAMOS                 ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (70,2,'COBRO DE PRESTAMO                       ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (70,3,'DESMBOLSO PREeSTAMOS CAJA               ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (70,4,'COBRO EFECTIVO                          ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (70,5,'DEBITO ATUOMATICO(PRESTAMOS)            ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (70,6,'DEBITO AUTOMATICO(SOLUZIONA)            ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (71,1,'DESEMBOLSO PREST. DE CONSUMO            ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (71,2,'COBRO PREST.DE CONSUMO                  ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (80,1,'TRANSF. BANCO MERCANTIL                S','11201101        ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (81,1,'PAGO DE COBRANZA EN ADMINISTRACION      ',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (81,2,'ABONO POR ADELANTO EN TARJETA DE CREDITO',NULL,NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (85,0,'RECAUDACION/DEVOLUCION POR ACH          ',NULL,0);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (85,1,'INGRESO COMISION ACH                    ','                ',0);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (85,2,'EGRESO COMISION ACH                     ',NULL,0);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (85,3,'PREDESEMBOLSO PRESTAMO ACH              ',NULL,0);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (85,4,'DEVOLUCION DE EXCEDENTE                 ',NULL,0);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (99,1,'TRASPASOS CC-CC BANCA POR INTERNET      ','                ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (99,2,'TRASPASOS CC-CA BANCA POR INTERNET      ','                ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (99,3,'PAGO PLANILLA AFP                       ','                ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (99,4,'PAGO BOA                                ','                ',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) VALUES (99,5,'PAGO DE IMPUESTO                        ',NULL,NULL);


-- CONCEPTO 6 MOTIVO DE RECHAZO - GLOSA CHEQUES RECHAZADOS EN CAMARA
SELECT *
FROM ccglo

INSERT INTO ccglo (ccglopref,ccglocorr,ccgloglos) VALUES (6,1,'                                                                                                                                                      ');
INSERT INTO ccglo (ccglopref,ccglocorr,ccgloglos) VALUES (6,2,'                                                                                                                                                      ');
INSERT INTO ccglo (ccglopref,ccglocorr,ccgloglos) VALUES (6,3,'                                                                                                                                                      ');
INSERT INTO ccglo (ccglopref,ccglocorr,ccgloglos) VALUES (6,4,'                                                                                                                                                      ');
INSERT INTO ccglo (ccglopref,ccglocorr,ccgloglos) VALUES (6,5,'                                                                                                                                                      ');
INSERT INTO ccglo (ccglopref,ccglocorr,ccgloglos) VALUES (6,6,'                                                                                                                                                      ');
INSERT INTO ccglo (ccglopref,ccglocorr,ccgloglos) VALUES (6,7,'                                                                                                                                                      ');
INSERT INTO ccglo (ccglopref,ccglocorr,ccgloglos) VALUES (6,8,'                                                                                                                                                      ');
INSERT INTO ccglo (ccglopref,ccglocorr,ccgloglos) VALUES (6,9,'                                                                                                                                                      ');
INSERT INTO ccglo (ccglopref,ccglocorr,ccgloglos) VALUES (6,10,'                                                                                                                                                      ');
INSERT INTO ccglo (ccglopref,ccglocorr,ccgloglos) VALUES (6,11,'                                                                                                                                                      ');
INSERT INTO ccglo (ccglopref,ccglocorr,ccgloglos) VALUES (6,12,'                                                                                                                                                      ');
INSERT INTO ccglo (ccglopref,ccglocorr,ccgloglos) VALUES (6,13,'                                                                                                                                                      ');
INSERT INTO ccglo (ccglopref,ccglocorr,ccgloglos) VALUES (6,14,'                                                                                                                                                      ');
