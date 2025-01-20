select *
from t_report
where report_id = 8;

update t_report
set path_file = '<?xml version="1.0" encoding="UTF-8"?>
<!-- Created with Jaspersoft Studio version 6.12.0.final using JasperReports Library version 6.12.1-ac0eebdb29e4c0985457bab279a6db744d661530  -->
<jasperReport xmlns="http://jasperreports.sourceforge.net/jasperreports" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://jasperreports.sourceforge.net/jasperreports http://jasperreports.sourceforge.net/xsd/jasperreport.xsd" name="Prestamos" pageWidth="595" pageHeight="885" whenNoDataType="AllSectionsNoDetail" columnWidth="555" leftMargin="20" rightMargin="20" topMargin="20" bottomMargin="20" uuid="42c76859-bbf7-4388-901f-d030b43047d2">
	<property name="com.jaspersoft.studio.data.defaultdataadapter" value="Sample DB"/>
	<property name="com.jaspersoft.studio.data.sql.tables" value=""/>
	<style name="Title" fontName="Arial" fontSize="26" isBold="true"/>
	<style name="SubTitle" forecolor="#666666" fontName="Arial" fontSize="18"/>
	<style name="Column header" forecolor="#666666" fontName="Arial" fontSize="12" isBold="true"/>
	<style name="Table">
		<box>
			<pen lineWidth="1.0" lineColor="#000000"/>
			<topPen lineWidth="1.0" lineColor="#000000"/>
			<leftPen lineWidth="1.0" lineColor="#000000"/>
			<bottomPen lineWidth="1.0" lineColor="#000000"/>
			<rightPen lineWidth="1.0" lineColor="#000000"/>
		</box>
	</style>
	<style name="Table 4_TD" mode="Opaque" backcolor="#FFFFFF">
		<box>
			<pen lineWidth="0.5" lineColor="#000000"/>
			<topPen lineWidth="0.5" lineColor="#000000"/>
			<leftPen lineWidth="0.5" lineColor="#000000"/>
			<bottomPen lineWidth="0.5" lineColor="#000000"/>
			<rightPen lineWidth="0.5" lineColor="#000000"/>
		</box>
	</style>
	<style name="Table 5_TH" mode="Opaque" backcolor="#F0F8FF">
		<box>
			<pen lineWidth="0.5" lineColor="#000000"/>
			<topPen lineWidth="0.5" lineColor="#000000"/>
			<leftPen lineWidth="0.5" lineColor="#000000"/>
			<bottomPen lineWidth="0.5" lineColor="#000000"/>
			<rightPen lineWidth="0.5" lineColor="#000000"/>
		</box>
	</style>
	<style name="Table 5_CH" mode="Opaque" backcolor="#BFE1FF">
		<box>
			<pen lineWidth="0.5" lineColor="#000000"/>
			<topPen lineWidth="0.5" lineColor="#000000"/>
			<leftPen lineWidth="0.5" lineColor="#000000"/>
			<bottomPen lineWidth="0.5" lineColor="#000000"/>
			<rightPen lineWidth="0.5" lineColor="#000000"/>
		</box>
	</style>
	<style name="Table 5_TD" mode="Opaque" backcolor="#FFFFFF">
		<box>
			<pen lineWidth="0.5" lineColor="#000000"/>
			<topPen lineWidth="0.5" lineColor="#000000"/>
			<leftPen lineWidth="0.5" lineColor="#000000"/>
			<bottomPen lineWidth="0.5" lineColor="#000000"/>
			<rightPen lineWidth="0.5" lineColor="#000000"/>
		</box>
	</style>
	<style name="Table 4_TH" mode="Opaque" backcolor="#F0F8FF">
		<box>
			<pen lineWidth="0.5" lineColor="#000000"/>
			<topPen lineWidth="0.5" lineColor="#000000"/>
			<leftPen lineWidth="0.5" lineColor="#000000"/>
			<bottomPen lineWidth="0.5" lineColor="#000000"/>
			<rightPen lineWidth="0.5" lineColor="#000000"/>
		</box>
	</style>
	<style name="Table 4_CH" mode="Opaque" backcolor="#CFCFCF">
		<box>
			<pen lineWidth="0.5" lineColor="#000000"/>
			<topPen lineWidth="0.5" lineColor="#000000"/>
			<leftPen lineWidth="0.5" lineColor="#000000"/>
			<bottomPen lineWidth="0.5" lineColor="#000000"/>
			<rightPen lineWidth="0.5" lineColor="#000000"/>
		</box>
	</style>
	<style name="Table_TH" mode="Opaque" backcolor="#F0F8FF">
		<box>
			<topPen lineWidth="0.5" lineColor="#000000"/>
			<bottomPen lineWidth="0.5" lineColor="#000000"/>
		</box>
	</style>
	<style name="Table 1_TH" mode="Opaque" backcolor="#F0F8FF">
		<box>
			<pen lineWidth="0.5" lineColor="#000000"/>
			<topPen lineWidth="0.5" lineColor="#000000"/>
			<leftPen lineWidth="0.5" lineColor="#000000"/>
			<bottomPen lineWidth="0.5" lineColor="#000000"/>
			<rightPen lineWidth="0.5" lineColor="#000000"/>
		</box>
	</style>
	<style name="Table 2_TH" mode="Opaque" backcolor="#F0F8FF">
		<box>
			<pen lineWidth="0.5" lineColor="#000000"/>
			<topPen lineWidth="0.5" lineColor="#000000"/>
			<leftPen lineWidth="0.5" lineColor="#000000"/>
			<bottomPen lineWidth="0.5" lineColor="#000000"/>
			<rightPen lineWidth="0.5" lineColor="#000000"/>
		</box>
	</style>
	<parameter name="P_SIGNATURE" class="java.lang.String" isForPrompting="false"/>
	<queryString>
		<![CDATA[]]>
	</queryString>
	<pageHeader>
		<band height="50">
			<image scaleImage="FillFrame">
				<reportElement x="32" y="-17" width="189" height="67" uuid="4e541b7e-3ebc-4c81-96f3-80228e459efb">
					<property name="com.jaspersoft.studio.unit.width" value="px"/>
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<imageExpression><![CDATA["C:/opt/wildfly-24_onboard/standalone/deployments/files.war/images/logoPromotora.png"]]></imageExpression>
			</image>
		</band>
	</pageHeader>
	<detail>
		<band height="784">
			<property name="com.jaspersoft.studio.unit.height" value="px"/>
			<staticText>
				<reportElement x="41" y="24" width="478" height="22" forecolor="#192F57" uuid="283d6408-df55-449a-a7c1-860408a0574a">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<textElement textAlignment="Center">
					<font fontName="Verdana" size="11" isBold="true"/>
				</textElement>
				<text><![CDATA[CONTRATO DE CUENTA DE CAJA DE AHORRO]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="463" width="480" height="50" forecolor="#192F57" uuid="3e1abe2a-0b6f-440a-bb2c-968666809b5c">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[En caso de que los depósitos se efectúen mediante cheque o cheques de otras entidades de intermediación financiera, el (los) CLIENTE (S) FINANCIERO (S) podrá (n) disponer de esos fondos una vez que se haya acreditado el abono en forma efectiva del importe del o los cheques en su cuenta de caja de ahorro.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="341" width="480" height="72" forecolor="#192F57" uuid="e8730754-5a8b-4882-8c88-8243ff898e39">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>TERCERA: (PLAZO Y VIGENCIA)</b> Se determina que la prestación del servicio, objeto del contrato, es de plazo indefinido; sin embargo, las partes podrán establecer la terminación anticipada, conforme a lo previsto en el presente contrato, Código de Comercio y normativa regulatoria de la Autoridad de Supervisión del Sistema Financiero (ASFI).
El contrato entra en vigencia a partir de la fecha de su suscripción.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="570" width="480" height="39" forecolor="#192F57" uuid="3f801fb9-6c56-4b65-9b91-3cdfd7198429">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>SEXTA: (ADMINISTRACIÓN DE LOS FONDOS)</b> El (los) CLIENTE (S) FINANCIERO (S) podrá (n) administrar los fondos de la cuenta de caja de ahorro a través de la libreta de caja de ahorro, la tarjeta de débito o mediante banca electrónica. ]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="517" width="480" height="50" forecolor="#192F57" uuid="b6a66a0e-4f3c-42e4-8f36-06ff9cbe96fa">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>QUINTA: (RETIROS)</b> El retiro de fondos de la cuenta de caja de ahorro en Puntos de Atención Financiero que no sea el cajero automático, podrá ser efectuado únicamente por el (los) CLIENTE (S) FINANCIERO (S) o por un representante legal.
]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="661" width="480" height="48" forecolor="#192F57" uuid="d34df76d-e143-410a-b791-a7421eaa14dc">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>SEPTIMA: (INTERESES)</b> LA PROMOTORA E.F.V. pagará al (a los) CLIENTE (S) FINANCIERO (S) por la cuenta de caja de ahorro, el interés anual, de acuerdo a tarifario y régimen de tasas de interés reguladas por el Órgano Ejecutivo del nivel central del Estado mediante Decreto Supremo.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="613" width="480" height="47" forecolor="#192F57" uuid="37b2d438-74d8-4997-aff1-b1abb5089815">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Al momento de la apertura de la cuenta de cajas de ahorro y con el primer depósito, la EIF extenderá la libreta de ahorros a nombre del (de los) CLIENTE (S) FINANCIERO (S), que contendrá el Reglamento de Cuentas de Ahorro de <b>LA PROMOTORA EFV</b>.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="710" width="480" height="70" forecolor="#192F57" uuid="453834bf-8e9a-44f6-ba0c-4d9f60684761">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Los intereses serán calculados sobre los saldos efectivamente disponibles en la cuenta de caja de ahorro. Todo interés ganado está sujeto a los impuestos establecidos o los que se determinen por Ley, de acuerdo a las normas y regulaciones tributarias. <b>LA PROMOTORA EFV</b>, realizará por cuenta de la Administración Tributaria el cobro de impuestos establecidos.
]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="419" width="480" height="50" forecolor="#192F57" uuid="9cf29106-790d-4b44-94d8-338bace45c44">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>CUARTA: (DEPÓSITOS)</b> El (los) CLIENTE (S) FINANCIERO (S) o terceras personas podrá (n) efectuar depósitos en la cuenta de caja de ahorro de forma sucesiva en puntos de atención financiero de <b>LA PROMOTORA E.F.V.</b>, la cual generará en todos los casos la constancia del citado depósito.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="216" width="480" height="46" forecolor="#192F57" uuid="0974279b-214c-4ba3-b566-5d990ebf5710">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[El (la) señor (a) <b>P_NombreCliente</b> con documento (s) de identificación N° <b>P_numDocumento</b> mayor (es) de edad y hábil (es) por derecho, en adelante CLIENTE (S) FINANCIERO (S).]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="251" width="480" height="90" forecolor="#192F57" uuid="aaea74b7-d825-49cc-9e73-bb57f576c2db">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>SEGUNDA:	(OBJETO DEL CONTRATO)</b> El presente contrato tiene por objeto establecer las condiciones sobre las cuales <b>LA PROMOTORA EFV</b> prestará a favor del (de los) CLIENTE (S) FINANCIERO (S), el servicio de apertura, recepción y retiro de depósitos y administración de fondos de una cuenta de caja de ahorro en <b>P_tipo_moneda</b>, en puntos de atención financiero o a través de instrumentos electrónicos de pago o banca electrónica, conforme a disposiciones legales y reglamentarias vigentes así como reglamentos y procedimientos de <b>LA PROMOTORA EFV.</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="196" width="480" height="20" forecolor="#192F57" uuid="6c2cc526-6c53-4ef1-8519-007d07083522">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Por otra parte,]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="85" width="480" height="105" forecolor="#192F57" uuid="315b22eb-bcc6-4f17-bea2-27779df3c064">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>PRIMERA:           (PARTES)</b> Celebran el presente contrato, por una parte <b>LA PROMOTORA ENTIDAD FINANCIERA DE VIVIENDA,</b> con domicilio principal en la calle España No. S-0111 de la ciudad de Cochabamba, Número de Identificación Tributaria (NIT) No. 1009387022, con Licencia de Funcionamiento otorgada por la Autoridad de Supervisión del Sistema Financiero ASFI/051/2015 de fecha 18 de noviembre de 2015 y matrícula de comercio otorgada por Fundempresa No. 341747, representada legalmente por las firmas al pie del contrato, en mérito al Poder No. 102/2023, de fecha 16 de Marzo de 2023, otorgado ante la Notaria de Fe Pública No. 30, a cargo de la Dr (a). Maria del Carmen Montaño del Granado; en adelante se denominará <b>“LA PROMOTORA EFV”</b>.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="48" width="480" height="30" forecolor="#192F57" uuid="dacbd4e0-17cf-489d-9eab-c42dc67ac3b7">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9"/>
					<paragraph lineSpacingSize="1.0"/>
				</textElement>
				<text><![CDATA[Conste por el presente documento privado, un contrato de prestación de servicios financieros de Cuenta de Caja de Ahorro, que se celebra de acuerdo a las siguientes cláusulas:]]></text>
			</staticText>
		</band>
		<band height="757">
			<property name="com.jaspersoft.studio.unit.height" value="px"/>
			<staticText>
				<reportElement x="41" y="566" width="480" height="59" forecolor="#192F57" uuid="930d7192-6110-4d55-9f10-25b3355c3477">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA QUINTA: (RETENCIÓN DE FONDOS)</b> En caso de que la Autoridad Competente  comunicará la orden de Autoridad Judicial o Administrativa para proceder a la retención de fondos del (de los) CLIENTE (S) FINANCIERO (S), <b>LA PROMOTORA EFV</b> procederá a dicha retención hasta el límite señalado en la orden respectiva conforme a reglamentación emitida por ASFI.]]></text>
			</staticText>
			<staticText>
				<reportElement x="74" y="134" width="445" height="30" forecolor="#192F57" uuid="4b91fc92-7046-4438-892f-1f9ec5354929">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Comunicar de forma inmediata a <b>LA PROMOTORA EFV</b>, a través de los canales autorizados el extravío sustracción o robo de la (las) tarjetas.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="350" width="480" height="55" forecolor="#192F57" uuid="ba57aed1-680c-4ac5-902b-b4433d785ded">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA SEGUNDA: (ACREDITACIÓN ERRÓNEA)</b> En caso de que <b>LA PROMOTORA EFV</b>, acreditara erróneamente algún monto en la cuenta de Caja de Ahorro del (de los) CLIENTE (S) FINANCIERO (S), ésta podrá revertir el depósito, comunicando al (a los) CLIENTE (S) FINANCIERO (S) el débito efectuado y la razón que motivó el mismo.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="407" width="480" height="54" forecolor="#192F57" uuid="47f4eb8e-85a9-4978-ae0f-c40385a885a0">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA TERCERA: (COMISIONES)</b> La apertura y administración de la cuenta de caja de ahorro no genera comisiones, salvo en el caso de excepción establecido en la Recopilación de Normas para Servicios Financieros.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="453" width="480" height="46" forecolor="#192F57" uuid="4e2d3df8-780c-442e-8dd7-4be3dd7fa851">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA CUARTA: (CLAUSURA Y PRESCRIPCIÓN POR INACTIVIDAD)</b> De conformidad a lo establecido en el artículo 1369 del Código de Comercio, la cuenta de Caja de Ahorro inactiva por más de cinco años será clausurada comunicándose de forma escrita al (a los) CLIENTE (S) FINANCIERO (S) la disponibilidad de su saldo incluyendo el abono de los intereses ganados.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="503" width="480" height="50" forecolor="#192F57" uuid="a5ebff2a-eb40-4b9d-86bb-2072668a96bb">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Si la Caja de Ahorro no registra movimiento alguno en el lapso de 10 años, contando desde el último depósito o retiro, los montos que se encontraban a disposición del (de los) CLIENTE (S) FINANCIERO (S) será (n) transferidos al Tesoro General de la Nación.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="626" width="480" height="60" forecolor="#192F57" uuid="98716430-a09b-4bf1-9cdf-547d29a9ba3f">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA SEXTA (TERMINACIÓN ANTICIPADA)</b> <b>LA PROMOTORA EFV</b>, dará por terminado el presente  contrato por razones justificadas en sus políticas internas, así como por medidas de prevención en materia de legitimación de ganacías ilícitas, financiamiento al terrorismo y financiamiento de la proliferación de armas de destrucción masiva, debiendo comunicar sobre esta decisión al (a los) CLIENTE (S) FINANCIERO (S) con quince (15) días de anticipación.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="289" width="480" height="60" forecolor="#192F57" uuid="6bdcbc7b-c13b-4d4c-a686-cd39193d3a60">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA PRIMERA: (INEMBARGABILIDAD DE CAJAS DE AHORRO DE PERSONAS NATURALES Y LÍMITE DE TAL EFECTO)</b> Los fondos depositados en la cuenta de caja de ahorro serán inembargables, hasta el monto establecido de acuerdo a normativa regulatoria vigente. Dicho límite no alcanza a las obligaciones alimenticias.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="10" width="480" height="50" forecolor="#192F57" uuid="2ae8d47d-cb39-4a40-8a96-4bf2f3182ac3">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>OCTAVA:	(CAPITALIZACIÓN DE INTERESES)</b> Los intereses serán capitalizables según la periodicidad establecida en el Reglamento de Cajas de Ahorro de <b>LA PROMOTORA EFV</b> aprobado por ASFI y disposiciones legales vigentes.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="54" width="480" height="31" forecolor="#192F57" uuid="b51855a9-300d-4420-aa17-8ff3a9d1cc8f">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>NOVENA: (SERVICIOS ADICIONALES)</b> El (los) CLIENTE (S) FINANCIERO (S) por el acceso a la utilización de tarjetas de débito y banca electrónica, debe (n):]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="237" width="480" height="49" forecolor="#192F57" uuid="69816115-f095-4724-b3f6-42bf11f17a86">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA: (MODIFICACIONES UNILATERALES) LA PROMOTORA E.F.V.</b>, no puede modificar unilateralmente los términos y condiciones pactadas en el presente contrato, salvo que dicha modificación beneficie al (a los) CLIENTE (S) FINANCIERO (S).]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="195" width="480" height="36" forecolor="#192F57" uuid="222c63f7-e21e-47ce-b75f-413ef9c3d12b">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>LA PROMOTORA EFV</b>, adopta y asume completa responsabilidad por la seguridad electrónica de sus medios electrónicos a través de los cuales realicen operaciones el (los) CLIENTE (S) FINANCIERO (S).
]]></text>
			</staticText>
			<staticText>
				<reportElement x="74" y="84" width="445" height="30" forecolor="#192F57" uuid="dbcb0599-5faa-463a-850c-605e08021745">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Pagar la tarifa establecida por la emisión de nuevas tarjetas en caso de extravío, sustracción, robo o emisión de tarjetas adicionales.]]></text>
			</staticText>
			<staticText>
				<reportElement x="74" y="114" width="445" height="20" forecolor="#192F57" uuid="cbf343cc-b862-4090-b325-8ed85939e5f6">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Asumir la responsabilidad por el uso del código de identificación personal (PIN) de la (s) tarjeta (s).]]></text>
			</staticText>
			<staticText>
				<reportElement x="74" y="164" width="446" height="28" forecolor="#192F57" uuid="a567a1fa-f6dd-4367-9b3c-3f36a6b8480d">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Utilizar su código de identificación personal (PIN) o códigos fijados por <b>LA PROMOTORA EFV</b>, para consultar la información relativa a sus cuentas de cajas de ahorro.]]></text>
			</staticText>
			<staticText>
				<reportElement x="42" y="114" width="30" height="13" forecolor="#192F57" uuid="dd0d5f21-51bc-44c6-9db1-d997cba0b099">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[b)]]></text>
			</staticText>
			<staticText>
				<reportElement x="42" y="164" width="30" height="13" forecolor="#192F57" uuid="e880cfaf-ddd8-465d-8058-dc064690ff36">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[d)]]></text>
			</staticText>
			<staticText>
				<reportElement x="42" y="134" width="30" height="13" forecolor="#192F57" uuid="76ef3ed3-1ed3-4d61-b247-1c65ab36991f">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[c)]]></text>
			</staticText>
			<staticText>
				<reportElement x="42" y="86" width="30" height="13" forecolor="#192F57" uuid="a85b344b-b840-4499-acb0-b79e48258261">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[a)]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="691" width="480" height="60" forecolor="#192F57" uuid="18b5cbd7-a9fd-44b8-8475-e635ec08fd29">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Por otra parte, el (los) CLIENTE (S) FINANCIERO (S), podrá (n) solicitar a <b>LA PROMOTORA EFV</b> la conclusión del contrato de forma expresa, debiendo la entidad poner a su disposición el saldo de su cuenta, salvo que existan restricciones normativas o de orden legal dispuestas por autoridad competente.]]></text>
			</staticText>
		</band>
		<band height="784">
			<property name="com.jaspersoft.studio.unit.height" value="px"/>
			<staticText>
				<reportElement x="40" y="11" width="480" height="50" forecolor="#192F57" uuid="8ec278dc-ab2a-4895-ba76-a976218b1f86">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA SEPTIMA: (FALLECIMIENTO)</b> En caso de fallecimiento del (de los) CLIENTE (S) FINANCIERO (S) los herederos podrán disponer de los fondos existentes previa presentación de la declaratoria de herederos.]]></text>
			</staticText>
			<staticText>
				<reportElement x="70" y="251" width="450" height="30" forecolor="#192F57" uuid="7fa9fd68-c703-4823-94ef-c771642c7084">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Proporcionar la información requerida por <b>LA PROMOTORA EFV</b> en cumplimiento a lo establecido por la Unidad de Investigación Financiera UIF.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="255" width="30" height="20" forecolor="#192F57" uuid="808cd6a5-87fa-41d7-a2fc-8c5a4b652967">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[a)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="283" width="30" height="20" forecolor="#192F57" uuid="cce4b874-c2e2-492d-a6df-7abeab0451c4">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[b)]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="148" width="450" height="20" forecolor="#192F57" uuid="f1c148db-ff26-4157-8e68-da580c1c80a9">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[A recibir información fidedigna, amplia, íntegra, clara, comprensible, oportuna y accesible.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="134" width="30" height="13" forecolor="#192F57" uuid="d7f3aecb-d56e-4521-a227-c5d7af258d8a">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[a)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="147" width="30" height="13" forecolor="#192F57" uuid="28fc9fa0-a163-487e-b052-67c4dab87d68">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[b)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="160" width="30" height="13" forecolor="#192F57" uuid="51a6c769-2b11-4dff-b8e5-73f8cef6e864">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[c)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="173" width="30" height="13" forecolor="#192F57" uuid="dfb64bf5-6c18-44b5-aaae-773549b9b488">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[d)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="186" width="30" height="13" forecolor="#192F57" uuid="7fe741f7-3347-457f-958e-cab8b9fbfb28">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[e)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="199" width="30" height="13" forecolor="#192F57" uuid="898f8968-6811-41c4-8d8c-bd4b281a5d40">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[f)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="212" width="30" height="13" forecolor="#192F57" uuid="439be0cf-ad4e-4768-9c61-c0801cf8ec06">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[g)]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="336" width="450" height="32" forecolor="#192F57" uuid="479c58c7-03fd-423e-bb30-895048142772">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Exponer al público, las tasas de interés anuales pasivas, mediante pizarras ubicadas en lugares visibles en cada uno de sus PAF u otros medios de difusión.
]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="386" width="30" height="13" forecolor="#192F57" uuid="45882015-1fd0-4e9c-85cd-1f570149302e">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[c)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="336" width="30" height="13" forecolor="#192F57" uuid="e63973e1-3c9c-44f4-bb81-363b646b31e6">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[a)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="361" width="30" height="13" forecolor="#192F57" uuid="c7382e7e-3a88-458e-ab79-8e0c16508b7d">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[b)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="234" width="480" height="24" forecolor="#192F57" uuid="6e63c834-f3f0-4185-badf-4c1f3c54f89d">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>VIGÉSIMA: (OBLIGACIONES DEL CLIENTE FINANCIERO)</b> Son las siguientes: 
]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="315" width="480" height="20" forecolor="#192F57" uuid="a1f0eff9-b7eb-4a43-93c6-ac502b3f8eb7">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>VIGÉSIMA PRIMERA: (OBLIGACIONES DE LA PROMOTORA EFV)</b> Son las siguientes:]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="420" width="480" height="59" forecolor="#192F57" uuid="39af1f4a-acc7-418a-8f58-54e5d04e4068">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>VIGÉSIMA SEGUNDA: (ACEPTACIÓN)</b>. <b>LA PROMOTORA EFV</b> y el (los) CLIENTE (S) FINANCIERO (S), dan su plena conformidad con todas las cláusulas del presente contrato que surtirá efectos sin necesidad de reconocimiento de firmas y rúbricas, estampando sus firmas, en señal de aceptación.
]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="57" width="480" height="44" forecolor="#192F57" uuid="8e59e3e1-8564-4238-98c1-aac3270396ef">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA OCTAVA: (DOMICILIO ESPECIAL)</b> Todo aviso, notificación y en general toda comunicación escrita emitida por <b>LA PROMOTORA EFV</b>, será remitida a la última dirección que esté registrada en <b>LA PROMOTORA EFV</b>.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="102" width="480" height="34" forecolor="#192F57" uuid="9e191476-7e4f-470e-93a6-d1bbfea8cac0">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA NOVENA: (DERECHOS DEL CLIENTE FINANCIERO)</b> El (Los) CLIENTE (S) FINANCIERO (S) tienen derecho a:]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="361" width="450" height="28" forecolor="#192F57" uuid="1a47a714-d4bb-4978-b0be-7dec5775cda2">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[A requerimiento de la UIF, recabar y entregar información sobre las actividades comerciales y financieras del (de los) CLIENTE (S) FINANCIERO (S).]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="386" width="450" height="30" forecolor="#192F57" uuid="4747791e-6ad7-4792-83ac-37334a63d66a">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[A solicitud del (de los) CLIENTE (S) FINANCIERO (S), emitir mensualmente un extracto de movimiento de su Cuenta de Caja de Ahorro, sin costo. ]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="282" width="450" height="30" forecolor="#192F57" uuid="125e5e3b-dafb-43ef-b5b9-c579cb9aa848">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Dar aviso oportunamente y por escrito a <b>LA PROMOTORA EFV</b> sobre cualquier cambio de domicilio.]]></text>
			</staticText>
			<staticText>
				<reportElement x="70" y="212" width="450" height="18" uuid="5fdd0371-8311-4f9c-b4af-aecbdceddd76">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Otros derechos reconocidos por disposiciones legales y reglamentarias.]]></text>
			</staticText>
			<staticText>
				<reportElement x="70" y="199" width="450" height="20" forecolor="#192F57" uuid="ba28ada7-f7f2-42a6-8183-94fd37024470">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[A la terminación anticipada del presente contrato.]]></text>
			</staticText>
			<staticText>
				<reportElement x="70" y="173" width="450" height="16" forecolor="#192F57" uuid="82e5ab96-de33-4704-b4fc-17fee487238d">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[A la confidencialidad salvo excepciones contenidas en la Ley.]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="134" width="450" height="14" forecolor="#192F57" uuid="3228e11b-ecd5-494b-851c-b6a0227c1071">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Trato equitativo, sin discriminación por razones de edad, género, raza, religión o identidad cultural.]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="186" width="450" height="20" forecolor="#192F57" uuid="620f6bb2-1b3d-47e3-9461-93ca0983d143">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[A efectuar consultas, peticiones y solicitudes.]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="160" width="450" height="18" forecolor="#192F57" uuid="687120de-eb59-45a4-ae38-e9c8f5b16776">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Formular reclamos a través de los canales correspondientes.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="475" width="480" height="20" forecolor="#192F57" uuid="f682ade5-bcdb-4580-8afb-4f4ebe9ec263">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>P_localidad, P_FechaLiteral</b>.
]]></text>
			</staticText>
			<image scaleImage="FillFrame">
				<reportElement x="40" y="619" width="214" height="97" uuid="3bd5a236-2b3d-4498-b38e-bd0e5ff8a0ef">
					<property name="com.jaspersoft.studio.unit.width" value="px"/>
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<imageExpression><![CDATA["C:/opt/wildfly-24_onboard/standalone/deployments/files.war/images/signOneshot.png"]]></imageExpression>
			</image>
			<staticText>
				<reportElement x="40" y="726" width="214" height="20" forecolor="#192F57" uuid="39f9f776-d4a9-4b8e-bcfd-3c99309ceb87">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>P_NombreCliente</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="746" width="213" height="20" forecolor="#192F57" uuid="91a79dc5-2e9b-43bc-a0e9-e90501f2f663">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[C.I. N° <b>P_numDocumento</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="305" y="746" width="213" height="20" forecolor="#192F57" uuid="a4591528-7ab7-4f13-8422-8cc898f09d44">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[C.I. N° <b>3754171 CB</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="305" y="726" width="213" height="20" forecolor="#192F57" uuid="352f0c45-f22b-4e48-891b-ae630034a1eb">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>RAUL PABLO RODRIGUEZ SALAZAR</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="305" y="712" width="213" height="20" forecolor="#192F57" uuid="057b3f5b-652f-47f9-8959-e36b2f260083">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Times New Roman" size="11" isBold="false"/>
				</textElement>
				<text><![CDATA[_______________________________________]]></text>
			</staticText>
			<image scaleImage="FillFrame">
				<reportElement x="306" y="618" width="213" height="97" uuid="5e0efbc0-7c9e-4f7c-9ba0-f9a9a9435c44">
					<property name="com.jaspersoft.studio.unit.width" value="px"/>
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<imageExpression><![CDATA["C:/opt/wildfly-24_onboard/standalone/deployments/files.war/images/signPromotora.png"]]></imageExpression>
			</image>
		</band>
		<band height="784">
			<staticText>
				<reportElement x="38" y="73" width="480" height="17" forecolor="#192F57" uuid="38e47c09-c168-49e6-9f37-cf0648b43d04">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9"/>
				</textElement>
				<text><![CDATA[_______________________________________________________________________________________]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="95" width="480" height="50" forecolor="#192F57" uuid="787fd0c0-4c04-4a2d-b5c4-170bfd7db832">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Por el presente documento, el (los) CLIENTE (S) FINANCIERO (S) descrito (s) el contrato principal, de manera voluntaria manifiesta su voluntad de afiliar su CUENTA DE CAJA DE AHORRO a un plan de tasa de interés diferenciado, conforme las condiciones siguientes:]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="245" width="480" height="50" forecolor="#192F57" uuid="830d4bd7-68de-4f07-a29f-cac54c4d7a95">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>SEGUNDA. - OBJETO:</b> El (los) CLIENTE (S) FINANCIERO (S) de forma voluntaria solicita afiliar la cuenta descrita en la cláusula primera a la campaña con plan de tasa de interés diferenciado, bajo las condiciones estipuladas en el presente documento.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="295" width="480" height="60" forecolor="#192F57" uuid="d6343f44-add3-4073-a136-b6974d0685ab">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>TERCERA. - PLAZO:</b> Se determina que la prestación del servicio, objeto del contrato es de plazo indefinido; sin embargo, las partes podrán establecer la terminación anticipada, conforme a lo previsto en el presente documento, Código de Comercio y normativa regulatoria de la Autoridad de Supervisión del Sistema Financiero (ASFI).]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="515" width="480" height="48" forecolor="#192F57" uuid="5d64a11e-8830-4587-8364-dea1f8fa0583">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>SEXTA.- CONFORMIDAD:</b> El (los) CLIENTE (S) FINANCIERO (S) expresamente manifiesta (n) su conformidad a las condiciones precedentes que le permiten beneficiarse con la tasa correspondiente al Plan de Ahorros al que se afilia.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="435" width="480" height="60" forecolor="#192F57" uuid="d0873f31-89bc-4297-9152-939453975362">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>QUINTA. - INTERÉS:</b> El interés a ser pagado por “LA PROMOTORA” E.F.V. a favor del (los) CLIENTE (S) FINANCIERO (S), dependerá de los saldos que éste mantuviera en la cuenta de caja de ahorro afiliada y del plan al que se encuentre afiliado, aplicando las tasas definidas en tarifario de <b>“LA PROMOTORA” E.F.V.</b> para cada plan de ahorros.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="195" width="480" height="50" forecolor="#192F57" uuid="2c3b02ec-870f-4dc6-8330-61eae42b2ae3">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>“LA PROMOTORA EFV”</b>, mantiene distintos planes promocionales de tasa de interés que permiten al (a los) CLIENTE (S) FINANCIERO (S) tener un mayor interés y beneficios por sus ahorros, otorgando una tasa de interés mayor por un periodo de tiempo limitado y bajo determinadas condiciones.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="69" width="478" height="22" forecolor="#192F57" uuid="9b4324fc-d552-4057-afbe-c2c17eda9cdb">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<textElement textAlignment="Center">
					<font fontName="Verdana" size="9" isBold="true"/>
				</textElement>
				<text><![CDATA[ANEXO  I]]></text>
			</staticText>
			<staticText>
				<reportElement x="76" y="31" width="400" height="17" forecolor="#192F57" uuid="79f074e2-10af-4331-a5d9-75846ded764a">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9"/>
				</textElement>
				<text><![CDATA[_______________________________________________________________________]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="355" width="480" height="20" forecolor="#192F57" uuid="b2913405-0f8a-4bf1-be6f-7462b17f9f0b">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Las condiciones de tasa de interés diferenciado entran en vigor a partir de la afiliación. ]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="495" width="480" height="20" forecolor="#192F57" uuid="90e2f8f3-a371-4784-9bb2-ea4583d5b6ca">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[El interés será abonado de forma mensual sobre el saldo promedio al cierre del mes anterior al pago.]]></text>
			</staticText>
			<staticText>
				<reportElement x="39" y="51" width="480" height="22" forecolor="#192F57" uuid="e2c342bc-65da-4a7b-87e7-6eb4b1317105">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<textElement textAlignment="Center">
					<font fontName="Verdana" size="9" isBold="true"/>
				</textElement>
				<text><![CDATA[PLAN DE TASA DE INTERÉS DIFERENCIADO “EFICIENTE”]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="145" width="480" height="56" forecolor="#192F57" uuid="65078d72-094e-436e-b41e-61c7aef8d216">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>PRIMERA. - ANTECEDENTES:</b> El (los) CLIENTE (S) FINANCIERO (S) a la fecha, mantiene(n) en <b>“LA PROMOTORA” E.F.V.</b> la cuenta de caja de ahorro en <b>P_tipo_moneda</b>  N°<b>P_cuentaCore</b>, misma que recibe un interés mensual de acuerdo a la tasa estipulada en Tarifario.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="374" width="480" height="60" forecolor="#192F57" uuid="80829e54-17e6-438b-9c00-1c24a2ff6db1">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>CUARTA. - CONDICIONES:</b> Se deja claramente establecido que para acceder al beneficio de la campaña plan de tasa de interés diferenciado, el (los) CLIENTE (S) FINANCIERO (S) debe (n) tener abierta en <b>“LA PROMOTORA” E.F.V.</b>, a la fecha de suscripción del presente contrato, una cuenta de caja de ahorros en <b>P_tipo_moneda</b>.]]></text>
			</staticText>
		</band>
		<band height="784">
			<staticText>
				<reportElement x="41" y="118" width="480" height="29" forecolor="#192F57" uuid="d2d2bd85-2c30-4e56-8224-260f5f6fc806">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[La caja de ahorro <b>EFICIENTE</b> ha sido creada con el objetivo de rentabilizar sus ahorros.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="204" width="480" height="20" forecolor="#192F57" uuid="44dc1b21-6f39-425b-9998-8acadbf27fe2">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Tasa: 4%]]></text>
			</staticText>
			<staticText>
				<reportElement x="42" y="54" width="479" height="22" forecolor="#192F57" uuid="125206a8-c47f-47e0-8337-0eb2ea23f36f">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<textElement textAlignment="Center">
					<font fontName="Verdana" size="9" isBold="true"/>
				</textElement>
				<text><![CDATA[ANEXO  II]]></text>
			</staticText>
			<staticText>
				<reportElement x="81" y="30" width="400" height="17" forecolor="#192F57" uuid="d9af6274-c171-4913-8d6d-e18f210e43ad">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9"/>
				</textElement>
				<text><![CDATA[_______________________________________________________________________]]></text>
			</staticText>
			<staticText>
				<reportElement x="81" y="68" width="400" height="17" forecolor="#192F57" uuid="940ddcf6-9a86-48bd-97b2-74d688d477b7">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Times New Roman" size="11"/>
				</textElement>
				<text><![CDATA[_______________________________________________________________________]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="98" width="480" height="19" forecolor="#192F57" uuid="adc33939-9d3c-4fb5-8e1e-99e4fe0c267f">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>1.-ANTECEDENTES</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="161" width="480" height="19" forecolor="#192F57" uuid="929aa37b-64bb-499a-a312-30d999491963">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>2.- CONDICIONES COMERCIALES</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="39" y="291" width="480" height="19" forecolor="#192F57" uuid="7e7259a7-6f8d-41bd-9646-5bd09455312c">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>3.-BENEFICIOS</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="184" width="480" height="20" forecolor="#192F57" uuid="573e3b69-6eb6-4d3d-b790-42ad6d19b88c">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Caja de ahorro en bolivianos]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="224" width="480" height="20" forecolor="#192F57" uuid="27977efc-8a24-4a54-8afb-441bfaee5f66">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Monto mínimo de apertura: 10.000 Bs.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="244" width="480" height="20" forecolor="#192F57" uuid="5bbcbaf5-a43c-475d-a1c4-0194c101562d">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Pignoración: 5.000 Bs.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="264" width="480" height="20" forecolor="#192F57" uuid="1f8589de-4153-4ab5-8755-c0524e49a1fe">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Límites de retiros: 2 retiros al mes ]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="334" width="480" height="20" forecolor="#192F57" uuid="a6258833-c714-4114-8bd6-f2c54bd8f0c4">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Acceso a Tarjeta de crédito]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="314" width="480" height="20" forecolor="#192F57" uuid="657af8a9-7cef-4eb1-b04f-215cf9f5bdce">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Descuentos en comercios afiliados]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="354" width="480" height="20" forecolor="#192F57" uuid="4e8cff80-afd7-41bf-ba09-5a94fcb521a0">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Rentabilizar sus ahorros sin inmovilizar todos sus recursos]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="708" width="214" height="20" uuid="aff4fc5f-f5de-4779-a77b-b7d5cb8ef43b">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Times New Roman" size="11" isBold="false"/>
				</textElement>
				<text><![CDATA[_______________________________________]]></text>
			</staticText>
			<staticText>
				<reportElement x="305" y="708" width="213" height="20" uuid="de77dfd0-b677-40bd-936c-076cba8fc4df">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Times New Roman" size="11" isBold="false"/>
				</textElement>
				<text><![CDATA[_______________________________________]]></text>
			</staticText>
			<image scaleImage="FillFrame">
				<reportElement x="40" y="615" width="214" height="97" uuid="7f9d30f7-675c-4985-8384-1e58f4a66fdf">
					<property name="com.jaspersoft.studio.unit.width" value="px"/>
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<imageExpression><![CDATA["C:/opt/wildfly-24_onboard/standalone/deployments/files.war/images/signOneshot.png"]]></imageExpression>
			</image>
			<image scaleImage="FillFrame">
				<reportElement x="305" y="614" width="213" height="97" uuid="7b1726ff-5a98-495d-b786-71f0fcd4033e">
					<property name="com.jaspersoft.studio.unit.width" value="px"/>
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<imageExpression><![CDATA["C:/opt/wildfly-24_onboard/standalone/deployments/files.war/images/signPromotora.png"]]></imageExpression>
			</image>
			<staticText>
				<reportElement x="41" y="742" width="213" height="20" forecolor="#192F57" uuid="64145e95-756a-42a9-8f67-c2a555e39534">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[C.I. N° <b>P_numDocumento</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="722" width="214" height="20" forecolor="#192F57" uuid="d93ae3f2-475b-476d-be56-57403b5319ce">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>P_NombreCliente</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="305" y="722" width="213" height="20" forecolor="#192F57" uuid="d6ea0b00-5866-4c28-a55f-375c3f9778c9">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>RAUL PABLO RODRIGUEZ SALAZAR</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="305" y="742" width="213" height="20" forecolor="#192F57" uuid="9057b67d-2c13-4379-a159-3ddade636a8c">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[C.I. N° <b>3754171 CB</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="575" width="480" height="20" forecolor="#192F57" uuid="9c760920-60a0-4c37-bacc-29998a0d3a32">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>P_localidad, P_FechaLiteral</b>.
]]></text>
			</staticText>
		</band>
	</detail>
	<pageFooter>
		<band height="11"/>
	</pageFooter>
</jasperReport>'
where report_id = 8;