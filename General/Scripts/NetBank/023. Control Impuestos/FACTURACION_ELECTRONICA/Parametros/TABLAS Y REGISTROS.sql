-- AMB: BANKING
-- 1er envio 24/02/2023

-- TABLA DE CATALOGO DE PRODUCTOS
SELECT *
FROM fecps

insert into fecps (fecpsnnit, fecpscimp, fecpsdesc, fecpscaco) values ('1009387022','71190','OTROS SERVICIOS DE INTERMEDIACIÓN FINANCIERA, EXCEPTO LOS SERVICIOS DE LA BANCA DE INVERSIÓN, SERVICIOS DE SEGUROS Y SERVICIOS DE PENSIONES',661900);
insert into fecps (fecpsnnit, fecpscimp, fecpsdesc, fecpscaco) values ('1009387022','99100','OTROS PRODUCTOS O SERVICIOS ALCANZADOS POR EL IVA',661900);
insert into fecps (fecpsnnit, fecpscimp, fecpsdesc, fecpscaco) values ('1009387022','711909','OTROS SERVICIOS DE INTERMEDIACIÓN FINANCIERA, EXCEPTO LOS SERVICIOS DE LA BANCA DE INVERSIÓN, SERVICIOS DE SEGUROS Y SERVICIOS DE PENSIONES IMPORTADO',661900);
insert into fecps (fecpsnnit, fecpscimp, fecpsdesc, fecpscaco) values ('1009387022','991009','OTROS PRODUCTOS O SERVICIOS ALCANZADOS POR EL IVA IMPORTADO',661900);
insert into fecps (fecpsnnit, fecpscimp, fecpsdesc, fecpscaco) values ('1009387022','71592','SERVICIOS DE CAMBIO DE DIVISAS',640001);
insert into fecps (fecpsnnit, fecpscimp, fecpsdesc, fecpscaco) values ('1009387022','715929','SERVICIOS DE CAMBIO DE DIVISAS IMPORTADO',640001);

-- TABLA DE CATALOGOS
SELECT *
FROM fepsi

LOAD FROM fepsi.unl INSERT INTO fepsi;

--------------------------------------
SELECT *FROM fecdf
DROP TABLE fecdf
CREATE table fecdf
    (
    fecdfnnit char(15) ,                       {  }
    fecdfcdse smallint ,                       {  }
    fecdfcsuc smallint ,                       {  }
    fecdfgest smallint ,                       {  }
    fecdfcorr dec(15,0) ,                      {  }
    fecdffulf date                             {  }
    );
--------------------------------------
SELECT *FROM fechastc
CREATE table fechastc
    (
    fechastc  date ,                           {  }
    marcatc   smallint ,                       {  }
    reprotc   smallint                         {  }
    );
   
SELECT *FROM fecon
CREATE table fecon
    (
    feconpref integer not null ,               {  }
    feconcorr integer not null ,               {  }
    fecondesc char(250) not null ,             {  }
    feconabre char(200) ,                      {  }
    feconmrcb smallint not null                {  }
    );
--------------------------------------
SELECT *FROM fecpr ORDER BY 1,2

CREATE table fecpr
    (
    fecprncod varchar(12) ,                    {  }
    fecprdesc char(250) ,                      {  }
    fecprcctb char(8)                          {  }
    );
--------------------------------------   
SELECT *FROM fecps
CREATE table fecps
    (
    fecpsnnit char(15) not null ,              {  }
    fecpscimp char(15) not null ,              {  }
    fecpsdesc char(250) not null ,             {  }
    fecpscaco integer not null                 {  }
    );

 create unique index fecps_01 on fecps  (fecpsnnit,fecpscimp);
-------------------------------------
SELECT *FROM fedat
CREATE table fedat
    (
    fedattipo smallint not null ,              {  }
    fedatntra integer not null ,               {  }
    fedattdoi smallint not null ,              {  }
    fedatcomp char(10) ,                       {  }
    fedatmrev smallint not null ,              {  }
    fedatcdse smallint not null ,              {  }
    fedatcley integer not null ,               {  }
    fedatcpai smallint not null ,              {  }
    fedatnmes smallint not null ,              {  }
    fedatnano smallint not null ,              {  }
    fedatnest char(90) ,                       {  }
    fedatmrcb smallint not null                {  }
    );

 create unique index fedat_01 on fedat  (fedattipo,fedatntra);
------------------------------------
SELECT *FROM fedco
CREATE table fedco
    (
    fedconnit char(15) not null ,              {  }
    fedconomb char(250) not null ,             {  }
    fedcotipo smallint not null ,              {  }
    fedcofife date                             {  }
    );

 create unique index fedco_01 on fedco  (fedconnit)
 ------------------------------------
SELECT *FROM fedfe
CREATE table fedfe
    (
    fedfeiddf int8 ,                               {  }
    fedfeitem integer ,                        {  }
    fedfeaeco integer ,                        {  }
    fedfecpsi integer ,                        {  }
    fedfecpro varchar(50) ,                    {  }
    fedfedesc varchar(200) not null ,          {  }
    fedfecant dec(20,5) ,                      {  }
    fedfeumed smallint ,                       {  }
    fedfepuni dec(20,5) ,                      {  }
    fedfemdes dec(20,5) ,                      {  }
    fedfestot dec(20,5) not null ,             {  }
    fedfecdtr smallint ,                       {  }
    fedfenser varchar(50) ,                    {  }
    fedfeimei varchar(50) ,                    {  }
    fedfectha smallint ,                       {  }
    fedfecnan varchar(100) ,                   {  }
    fedfecdia smallint ,                       {  }
    fedfemice integer ,                        {  }
    fedfeaciv dec(14,2) ,                      {  }
    fedfepnic dec(14,2) ,                      {  }
    fedfeaesp smallint ,                       {  }
    fedfeapor dec(14,2) ,                      {  }
    fedfemaes dec(14,2) ,                      {  }
    fedfemicp integer ,                        {  }
    fedfecnic smallint ,                       {  }
    fedfeporc integer ,                        {  }
    fedfeespe varchar(50) ,                    {  }
    fedfeedet varchar(150) ,                   {  }
    fedfenqso smallint ,                       {  }
    fedfeemed varchar(150) ,                   {  }
    fedfename varchar(200) ,                   {  }
    fedfenifm varchar(20) ,                    {  }
    fedfenofm varchar(20) ,                    {  }
    fedfefmed integer ,                        {  }
    fedfepdid varchar(20) ,                    {  }
    fedfenaci varchar(20) ,                    {  }
    fedfemrcb smallint ,                       {  }
    fedfestat smallint                         {  }
    );

 create unique index fedfe_01 on fedfe  (fedfeiddf,fedfeitem);
---------------------------------------------------
SELECT *FROM fedse
CREATE table fedse
    (
    fedsecodi smallint not null ,              {  }
    fedsedesc char(40) not null ,              {  }
    fedsetdof smallint not null ,              {  }
    fedsetitu char(100) not null ,             {  }
    fedsesubt char(100) not null ,             {  }
    fedsecley integer not null ,               {  }
    fedsestat smallint not null                {  }
    );

 create unique index fedse_01 on fedse  (fedsecodi);
---------------------------------------------------
SELECT *FROM fefan
CREATE table fefan
    (
    fefannnit char(15) not null ,              {  }
    fefannfac dec(15,0) not null ,             {  }
    fefanftra date not null ,                  {  }
    fefancmot smallint not null ,              {  }
    fefanstat smallint not null ,              {  }
    fefanuser char(3) not null ,               {  }
    fefanhora char(8) not null ,               {  }
    fefanfpro date not null                    {  }
    );
---------------------------------------------------
SELECT *FROM fehfe
CREATE table fehfe
    (
    fehfeiddf serial8 ,                               {  }
    fehfenemi int8 ,                               {  }
    fehfersem varchar(200) not null ,          {  }
    fehfemuni varchar(200) not null ,          {  }
    fehfetelf varchar(100) ,                   {  }
    fehfenfac int8 ,                               {  }
    fehfenacf varchar(100) ,                   {  }
    fehfenncd int8 ,                               {  }
    fehfefefa varchar(30) ,                    {  }
    fehfemtor dec(14,2) ,                      {  }
    fehfemtde dec(14,2) ,                      {  }
    fehfemdcd dec(14,2) ,                      {  }
    fehfemecd dec(14,2) ,                      {  }
    fehfeccuf varchar(100) ,                   {  }
    fehfecufd varchar(100) ,                   {  }
    fehfecsuc integer not null ,               {  }
    fehfedire varchar(200) not null ,          {  }
    fehfecpve integer ,                        {  }
    fehfefemi varchar(30) ,                    {  }
    fehfersoc varchar(200) ,                   {  }
    fehfectdi smallint not null ,              {  }
    fehfendoc varchar(20) ,                    {  }
    fehfecomp varchar(20) ,                    {  }
    fehfeccli varchar(100) not null ,          {  }
    fehfecmpa smallint ,                       {  }
    fehfentar int8 ,                               {  }
    fehfemtot dec(20,5) ,                      {  }
    fehfemtsi dec(14,2) ,                      {  }
    fehfemgca dec(14,2) ,                      {  }
    fehfedadi dec(14,2) ,                      {  }
    fehfecafc varchar(20) ,                    {  }
    fehfecmon smallint ,                       {  }
    fehfetcam dec(20,5) ,                      {  }
    fehfemtmo dec(20,5) ,                      {  }
    fehfemdpb varchar(100) ,                   {  }
    fehfeinad varchar(100) ,                   {  }
    fehfeleye varchar(200) ,                   {  }
    fehfeusua varchar(100) not null ,          {  }
    fehfecdse smallint not null ,              {  }
    fehfeciud varchar(100) ,                   {  }
    fehfezona varchar(100) ,                   {  }
    fehfenmed varchar(100) ,                   {  }
    fehfefreg date ,                           {  }
    fehfehora varchar(8) ,                     {  }
    fehfegest varchar(16) ,                    {  }
    fehfemmes varchar(16) ,                    {  }
    fehfenest varchar(200) ,                   {  }
    fehfeteve varchar(100) ,                   {  }
    fehfeleve varchar(100) ,                   {  }
    fehfefeve date ,                           {  }
    fehfeaeve varchar(100) ,                   {  }
    fehfensal varchar(20) ,                    {  }
    fehfedsal varchar(150) ,                   {  }
    fehfemser varchar(100) ,                   {  }
    fehfedoco varchar(150) ,                   {  }
    fehfedico varchar(150) ,                   {  }
    fehfenpre varchar(100) ,                   {  }
    fehfemtaf dec(20,5) ,                      {  }
    fehfemled dec(14,2) ,                      {  }
    fehfel317 dec(14,2) ,                      {  }
    fehfemtoj dec(14,2) ,                      {  }
    fehfemtsl dec(14,2) ,                      {  }
    fehfemdes dec(20,5) ,                      {  }
    fehfepfac varchar(50) ,                    {  }
    fehfecpai smallint ,                       {  }
    fehfepveh varchar(16) ,                    {  }
    fehfetenv varchar(16) ,                    {  }
    fehfemice dec(16,0) ,                      {  }
    fehfemtpo dec(14,2) ,                      {  }
    fehfenpro varchar(50) ,                    {  }
    fehfenrle varchar(50) ,                    {  }
    fehfecpag smallint ,                       {  }
    fehfepent varchar(16) ,                    {  }
    fehfechue smallint ,                       {  }
    fehfechab smallint ,                       {  }
    fehfecmay smallint ,                       {  }
    fehfecmen smallint ,                       {  }
    fehfefiho varchar(16) ,                    {  }
    fehfenotu varchar(20) ,                    {  }
    fehfersot varchar(50) ,                    {  }
    fehfe1886 varchar(50) ,                    {  }
    fehfeckwh dec(16,2) ,                      {  }
    fehfecmcu dec(16,2) ,                      {  }
    fehfedley dec(16,2) ,                      {  }
    fehfemdtd dec(16,2) ,                      {  }
    fehfetase dec(16,2) ,                      {  }
    fehfetalu dec(16,2) ,                      {  }
    fehfeansi dec(16,2) ,                      {  }
    fehfeopni dec(16,2) ,                      {  }
    fehfeidca dec(20,5) ,                      {  }
    fehfemtpu dec(16,2) ,                      {  }
    fehfeomon dec(16,2) ,                      {  }
    fehfeinco varchar(50) ,                    {  }
    fehfeincd varchar(50) ,                    {  }
    fehfepdes varchar(50) ,                    {  }
    fehfeldes varchar(50) ,                    {  }
    fehfecgna varchar(50) ,                    {  }
    fehfegnfo dec(16,2) ,                      {  }
    fehfetffr dec(16,2) ,                      {  }
    fehfetgin dec(16,2) ,                      {  }
    fehfemode dec(16,2) ,                      {  }
    fehfecgin varchar(200) ,                   {  }
    fehfepvbr dec(16,2) ,                      {  }
    fehfegtfr dec(16,2) ,                      {  }
    fehfesfro dec(16,2) ,                      {  }
    fehfemtfr dec(16,2) ,                      {  }
    fehfemsin dec(16,2) ,                      {  }
    fehferemi varchar(50) ,                    {  }
    fehfecons varchar(50) ,                    {  }
    fehfelapu varchar(50) ,                    {  }
    fehfeidbd varchar(50) ,                    {  }
    fehfemrcb smallint ,                       {  }
    fehfestat smallint ,                       {  }
    fehfecsta varchar(10) ,                    {  }
    fehfecres varchar(10) ,                    {  }
    fehfetres varchar(200) ,                   {  }
    fehfeifee varchar(20) ,                    {  }
    fehfecont smallint ,                       {  }
    fehfelote smallint ,                       {  }
    fehfeidlo smallint ,                       {  }
    fehfeufac smallint ,                       {  }
    fehfectip integer ,                        {  }
    fehfemodn dec(2,0) ,                       {  }
    fehfenopr dec(16,0) ,                      {  }
    fehfentra integer ,                        {  }
    fehfefsta date ,                           {  }
    fehfeusrr varchar(3) ,                     {  }
    fehfesest smallint ,                       {  }
    fehfescre integer ,                        {  }
    fehfeslme varchar(200) ,                   {  }
    fehfesfre date ,                           {  }
    fehfeshre char(8) ,                        {  }
    fehfesler varchar(200) ,                   {  }
    fehfesval smallint ,                       {  }
    fehfestva smallint ,                       {  }
    fehfepnfe smallint ,                       {  }
    fehfepnfc integer ,                        {  }
    fehfepnft varchar(200) ,                   {  }
    fehfevfva date ,                           {  }
    fehfevfco date ,                           {  }
    fehfevhva char(8) ,                        {  }
    fehfevhco char(8) ,                        {  }
    fehfeecdf smallint ,                       {  }
    fehfecedo integer ,                        {  }
    fehfecsis varchar(50) ,                    {  }
    fehfectio smallint ,                       {  }
    fehfetcof dec(20,5) ,                      {  }
    fehfegesc varchar(16) ,                    {  }
    fehfecmot smallint ,                       {  }
    fehfefuli smallint ,                       {  }
    fehfeevid integer ,                        {  }
    fehfeccon varchar(100)                     {  }
    );

 create unique index fehfe_00 on fehfe  (fehfeiddf);
--------------------------------------------------
SELECT *FROM felvt

DROP TABLE felvt

CREATE table felvt
    (
    felvtnnit char(15) not null ,              {  }
    felvtpnfa dec(15,0) ,                      {  }
    felvtnfac dec(15,0) not null ,             {  }
    felvtccuf varchar(100) ,                   {  }
    felvtcdse smallint not null ,              {  }
    felvtftra date not null ,                  {  }
    felvthtra char(8) not null ,               {  }
    felvttdoc smallint not null ,              {  }
    felvtnruc char(15) ,                       {  }
    felvtcomp char(5) ,                        {  }
    felvtnomb char(150) ,                      {  }
    felvtnauc char(30) ,                       {  }
    felvtemai char(500) ,                      {  }
    felvtnufg int8 ,                               {  }
    felvtimpt dec(14,2) not null ,             {  }
    felvtiice dec(14,2) not null ,             {  }
    felvtiehd dec(14,2) not null ,             {  }
    felvtexen dec(14,2) not null ,             {  }
    felvtsiva dec(14,2) not null ,             {  }
    felvtideb dec(14,2) not null ,             {  }
    felvttiva dec(7,3) not null ,              {  }
    felvtuneg smallint not null ,              {  }
    felvtcloc smallint ,                       {  }
    felvtmodn smallint ,                       {  }
    felvtnopr dec(16,0) ,                      {  }
    felvtntra integer ,                        {  }
    felvtstat smallint not null ,              {  }
    felvtfsta date not null ,                  {  }
    felvtmvta smallint ,                       {  }
    felvtsimp char(1) not null ,               {  }
    felvtilot char(1) not null ,               {  }
    felvtuser char(3) ,                        {  }
    felvthora char(8) ,                        {  }
    felvtfpro date ,                           {  }
    felvtita0 dec(14,2) not null ,             {  }
    felvtidbr dec(14,2) not null ,             {  }
    felvtibon dec(14,2) not null ,             {  }
    felvtgfac smallint not null ,              {  }
    felvtsenv smallint not null                {  }
    );

 create index felvt_01 on felvt  (felvtccuf);
 create index felvt_02 on felvt  (felvtnnit,felvtftra);
 create index felvt_03 on felvt  (felvtnnit,felvtnfac);
 create index felvt_04 on felvt  (felvtnnit,felvtmodn,felvtnopr,felvtntra);
----------------------------------------------------------
SELECT *FROM fenta
CREATE table fenta
    (
    fentannit char(15) not null ,              {  }
    fentannta dec(15,0) not null ,             {  }
    fentafuli smallint ,                       {  }
    fentaccuf char(100) ,                      {  }
    fentacafc char(100) ,                      {  }
    fentatdoc smallint not null ,              {  }
    fentacdse smallint not null ,              {  }
    fentaftra date not null ,                  {  }
    fentahtra char(8) not null ,               {  }
    fentatdoi smallint not null ,              {  }
    fentanruc char(15) ,                       {  }
    fentacomp char(5) ,                        {  }
    fentanomb char(150) ,                      {  }
    fentanauc char(30) ,                       {  }
    fentaemai char(500) ,                      {  }
    fentanufg int8 ,                               {  }
    fentaimpt dec(14,2) not null ,             {  }
    fentaiice dec(14,2) not null ,             {  }
    fentaiehd dec(14,2) not null ,             {  }
    fentaneto dec(14,2) not null ,             {  }
    fentaifis dec(14,2) not null ,             {  }
    fentativa dec(7,3) not null ,              {  }
    fentauneg smallint not null ,              {  }
    fentacloc smallint ,                       {  }
    fentamorg smallint ,                       {  }
    fentatorg integer ,                        {  }
    fentastat smallint not null ,              {  }
    fentafsta date not null ,                  {  }
    fentacufo char(100) ,                      {  }
    fentanfao dec(15,0) not null ,             {  }
    fentamoro smallint ,                       {  }
    fentatoro integer ,                        {  }
    fentandev integer ,                        {  }
    fentauser char(3) ,                        {  }
    fentahora char(8) ,                        {  }
    fentafpro date ,                           {  }
    fentasimp char(1) not null ,               {  }
    fentasenv smallint not null                {  }
    );
--------------------------------------------------------
SELECT *FROM fepff
CREATE table fepff
    (
    fepfffini date ,                           {  }
    fepffucli smallint ,                       {  }
    fepffmffa smallint ,                       {  }
    fepffccef smallint ,                       {  }
    fepffmoco smallint                         {  }
    );
-------------------------------------------------------
SELECT *FROM fepsi
CREATE table fepsi
    (
    fepsitipo smallint not null ,              {  }
    fepsicimp char(20) not null ,              {  }
    fepsidesc char(400) not null               {  }
    );

 create unique index fepsi_01 on fepsi  (fepsitipo,fepsicimp);
-------------------------------------------------------
SELECT *FROM ferci
DROP TABLE  ferci 
CREATE table ferci
    (
    fercinnit char(15) not null ,              {  }
    fercicpro char(15) not null ,              {  }
    fercicimp char(20) not null                {  }
    );

 create unique index ferci_01 on ferci  (fercinnit,fercicpro);
--------------------------------------------------------
SELECT *FROM feres
CREATE table feres
    (
    feresnemi int8 ,                               {  }
    feresccuf varchar(100) not null ,          {  }
    feresifee varchar(200) not null ,          {  }
    feresiddf int8 ,                               {  }
    feresfemi varchar(30) ,                    {  }
    feresctip integer ,                        {  }
    ferescdse smallint ,                       {  }
    feresoper smallint ,                       {  }
    feresmoda smallint ,                       {  }
    feresform smallint ,                       {  }
    ferescodi varchar(100) ,                   {  }
    ferescrec integer ,                        {  }
    feresdesc varchar(200) ,                   {  }
    feresslme varchar(200)                     {  }
    );
SELECT *FROM ferfp
CREATE table ferfp
    (
    ferfpnmod smallint not null ,              {  }
    ferfpnvia smallint not null ,              {  }
    ferfpcimp char(20) not null                {  }
    );

 create unique index ferfp_01 on ferfp  (ferfpnmod,ferfpnvia);
---------------------------------------------------------
SELECT *FROM fersi
CREATE table fersi
    (
    fersitipo smallint not null ,              {  }
    fersiccon smallint not null ,              {  }
    fersicimp char(20) not null                {  }
    );
----------------------------------------------------
SELECT *FROM fersu
CREATE table fersu
    (
    fersunnit dec(15,0) not null ,             {  }
    fersunsuc smallint not null ,              {  }
    fersunofi smallint                         {  }
    );
-----------------------------------------------------
SELECT *FROM fesrl
CREATE table fesrl
    (
    fesrltabl char(5) ,                        {  }
    fesrlcorr dec(20,0)                        {  }
    );
----------------------------------------------------
SELECT *FROM fesuc
CREATE table fesuc
    (
    fesucnsuc smallint not null ,              {  }
    fesucnomb char(60) not null ,              {  }
    fesucdire char(120) not null ,             {  }
    fesuctelf char(60) ,                       {  }
    fesucdalc char(120) ,                      {  }
    fesuclgar char(60) ,                       {  }
    fesuccres integer ,                        {  }
    fesucnres char(40) ,                       {  }
    fesucndid char(15) ,                       {  }
    fesuccorg char(3) ,                        {  }
    fesucdpto char(120) ,                      {  }
    fesucnnit dec(15,0) not null               {  }
    );

 create unique index fesuc_00 on fesuc  (fesucnnit,fesucnsuc);
--------------------------------------------------------
SELECT *FROM fetem
CREATE table fetem
    (
    fetemntra dec(20,0) ,                      {  }
    fetemnfac dec(20,0) ,                      {  }
    fetemnomb char(60) ,                       {  }
    fetemnruc char(15) ,                       {  }
    fetemtdid smallint ,                       {  }
    fetemndid char(20) ,                       {  }
    fetemtper smallint ,                       {  }
    fetemtlfn char(20) ,                       {  }
    fetemmail char(50) ,                       {  }
    fetemstat char(1) ,                        {  }
    fetemuser char(3) ,                        {  }
    fetemhora char(8) ,                        {  }
    fetemfpro date ,                           {  }
    fetemcomp char(2) ,                        {  }
    fetemexte char(2) ,                        {  }
    fetemtage smallint ,                       {  }
    fetemcage integer                          {  }
    );
------------------------------------------------------
SELECT *FROM fevdf
CREATE table fevdf
    (
    fevdfnatr smallint ,                       {  }
    fevdfdesc char(50) ,                       {  }
    fevdfvald char(100)                         {  }
    );