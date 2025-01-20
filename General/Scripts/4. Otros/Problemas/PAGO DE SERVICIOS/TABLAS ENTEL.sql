create table fabuf 
  (
    fabufcbuf serial not null ,          --Codigo buffer
    fabufcide varchar(30),               --Codigo Identificador
    fabufdesc lvarchar(32000),  --Descripcion Valores de Entel
    fabuffcon date,                            --Fecha consulta
    fabufhora char(8),                       --Hora Consulta
    fabufstat smallint,                       --Estado
    fabufseid varchar(10),               --Service ID
    fabuftico varchar(10)  --Tipo Codigo
  );

Alter Table fabuf add (fabufseid VARCHAR(10))
Alter Table fabuf add ( fabuftico VARCHAR(10))

create table fatmp 
(
fatmpcage int,                                  --Codigo de Agenda del cliente
fatmpntel varchar (200)                --Numero de telefono (Puede ser Correo electronico o identificador alfanumerico)
)

SELECT *FROM fadfa
create table fadfa
(
fadfauser varchar(100),                                --usuario
fadfantel varchar (200), -- Numero de Telefono asociado
fadfatdoc smallint,                          -- tipo de documento de identidad
fadfandoc varchar (100),              -- numero de documento de indentidad
fadfacomp varchar (10),               -- Complemento de documento de identidad solo si tdoc = 1 para todos los otros casos nulo
fadfanomb varchar (200),            -- Nombre / Razon Social
fadfaemai varchar (200),              -- Email
fadfatref varchar (10)                    -- telefono de referencia entel
)
create unique index fadfa_00 on fadfa (fadfauser, fadfantel) ;

SELECT *FROM fapas
create table fapas 
  (
    fapascint serial not null ,
    fapasnfac varchar(50),
    fapascpro integer,
    fapasntra varchar(50),
    fapasnomb varchar(100),
    fapasncon varchar(50),
    fapascage varchar(30),
    fapasndoc varchar(20),
    fapasfech varchar(10),
    fapasmpag decimal(20,5),
    fapasdfac byte,
    fapascimp integer,
    fapashora char(8)

  );

create table faede
(
faedettra varchar(50), -- Prepago-Postpago
faedentra varchar(50), --               numero de transacción
faedeciud varchar(10), --               ciudadField 
faededpto varchar(10), --             departamentoField
faededsuc varchar(200), --             Direccion sucursal
faedelote varchar(100), --             loteField
faedenren varchar(100), --           numeroRentaField
faedeimpo varchar(50), --             importeField
faedefech varchar(50), --              fechaField
faedehora varchar(50), --              horaField
faedetpag varchar(100), --            tipoPagoField
faedecnta varchar(20), --              cuentaField
faedersoc varchar(200), --              razonSocialField
faedennit varchar(20), --               nitField
faedetdoc varchar(10), --               tipoDocumento
faedecomp varchar(5), --              Complemento
faedeemai varchar(200), --           email
faedetref varchar(15), --                 Telefonoreferencia
--Actualizar datos y Rellenar campos despues de completado el pago
faedeperi varchar(50), --               periodoField
faededopr varchar(100), --            dosificacionPrepagoField  
faedestat varchar(5), --  estadoField -- odatosEntradaPago.transaccion P Pagada R Revertida A Anulada.
faedeoper varchar(100) --            operadorField
);
ALTER TABLE faede LOCK MODE(ROW);
