select *
from t_report
where report_id = 3;

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
				<reportElement x="40" y="20" width="479" height="22" forecolor="#192F57" uuid="80006b8d-8ece-46c0-936f-59190de9a59b">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<textElement textAlignment="Center">
					<font fontName="Verdana" size="11" isBold="true"/>
				</textElement>
				<text><![CDATA[CONTRATO DE CUENTA DE CAJA DE AHORRO]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="462" width="480" height="50" forecolor="#192F57" uuid="e46f4789-6bc4-4485-9d4f-575a5fb1a1df">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[En caso de que los depósitos se efectúen mediante cheque o cheques de otras entidades de intermediación financiera, el (los) CLIENTE (S) FINANCIERO (S) podrá (n) disponer de esos fondos una vez que se haya acreditado el abono en forma efectiva del importe del o los cheques en su cuenta de caja de ahorro.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="344" width="480" height="72" forecolor="#192F57" uuid="8ebaa73b-0f7f-4e2a-8d1e-96d1ff7578b9">
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
				<reportElement x="41" y="565" width="480" height="39" forecolor="#192F57" uuid="d705ab1f-8d37-4de2-b558-4f3c15766bb3">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>SEXTA: (ADMINISTRACIÓN DE LOS FONDOS)</b> El (los) CLIENTE (S) FINANCIERO (S) podrá (n) administrar los fondos de la cuenta de caja de ahorro a través de la libreta de caja de ahorro, la tarjeta de débito o mediante banca electrónica. ]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="257" width="480" height="90" forecolor="#192F57" uuid="bd3370ec-60c6-4236-844e-0fa2a3f4536a">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>SEGUNDA:	(OBJETO DEL CONTRATO)</b> El presente contrato tiene por objeto establecer las condiciones sobre las cuales <b>LA PROMOTORA EFV</b> prestará a favor del (de los) CLIENTE (S) FINANCIERO (S), el servicio de apertura, recepción y retiro de depósitos y administración de fondos de una cuenta de caja de ahorro en <b>P_tipo_moneda</b>, en puntos de atención financiero o a través de instrumentos electrónicos de pago o banca electrónica, conforme a disposiciones legales y reglamentarias vigentes así como reglamentos y procedimientos de <b>LA PROMOTORA EFV.</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="216" width="480" height="46" forecolor="#192F57" uuid="75404ed7-7dd4-4d9b-822e-9f4b3ce2f5d6">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[El (la) señor (a) <b>P_NombreCliente</b> con documento (s) de identificación N° <b>P_numDocumento</b> mayor (es) de edad y hábil (es) por derecho, en adelante CLIENTE (S) FINANCIERO (S).]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="513" width="480" height="50" forecolor="#192F57" uuid="7d7960a4-0e9f-4d8c-b616-36c37f47b1d1">
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
				<reportElement x="41" y="661" width="480" height="48" forecolor="#192F57" uuid="ba065f1d-e311-48fa-8a5e-e934eea15349">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>SEPTIMA: (INTERESES) LA PROMOTORA EFV</b> pagará al (a los) CLIENTE (S) FINANCIERO (S) por la cuenta de caja de ahorro, el interés anual, de acuerdo a tarifario y régimen de tasas de interés reguladas por el Órgano Ejecutivo del nivel central del Estado mediante Decreto Supremo.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="613" width="480" height="47" forecolor="#192F57" uuid="5cfd3f55-4a39-4440-87e1-cbc1abf47081">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Al momento de la apertura de la cuenta de cajas de ahorro y con el primer depósito, la EIF extenderá la libreta de ahorros a nombre del (de los) CLIENTE (S) FINANCIERO (S), que contendrá el Reglamento de Cuentas de Ahorro de <b>LA PROMOTORA EFV</b>.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="417" width="480" height="50" forecolor="#192F57" uuid="6f92e91e-4b80-4b20-b85e-83bf38e51182">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>CUARTA: (DEPÓSITOS)</b> El (los) CLIENTE (S) FINANCIERO (S) o terceras personas podrá (n) efectuar depósitos en la cuenta de caja de ahorro de forma sucesiva en puntos de atención financiero de <b>LA PROMOTORA EFV</b>, la cual generará en todos los casos la constancia del citado depósito.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="706" width="480" height="70" forecolor="#192F57" uuid="421a55a1-c4ce-41d1-966c-d61b1f9daa9f">
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
				<reportElement x="40" y="192" width="480" height="20" forecolor="#192F57" uuid="1e3875e7-375c-4c4a-8f23-63dd168bbf6c">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Por otra parte,]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="85" width="480" height="105" forecolor="#192F57" uuid="285e1e59-ae7f-4a96-81c6-e6cec0d74c25">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>PRIMERA:           (PARTES)</b> Celebran el presente contrato, por una parte <b>LA PROMOTORA ENTIDAD FINANCIERA DE VIVIENDA,</b> con domicilio principal en la calle España No. S-0111 de la ciudad de Cochabamba, Número de Identificación Tributaria (NIT) No. 1009387022, con Licencia de Funcionamiento otorgada por la Autoridad de Supervisión del Sistema Financiero ASFI/051/2015 de fecha 18 de noviembre de 2015 y matrícula de comercio otorgada por Fundempresa No. 341747, representada legalmente por las firmas al pie del contrato, en mérito al Poder No. 102/2023, de fecha 16 de Marzo de 2023, otorgado ante la Notaria de Fe Pública No. 30, a cargo de la Dr (a). Maria del Carmen Montaño del Granado; en adelante se denominará <b>“LA PROMOTORA EFV”</b>.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="48" width="480" height="30" forecolor="#192F57" uuid="8c45bc56-92b8-4944-ba67-77cd941ea260">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9"/>
				</textElement>
				<text><![CDATA[Conste por el presente documento privado, un contrato de prestación de servicios financieros de Cuenta de Caja de Ahorro, que se celebra de acuerdo a las siguientes cláusulas:]]></text>
			</staticText>
		</band>
		<band height="757">
			<property name="com.jaspersoft.studio.unit.height" value="px"/>
			<staticText>
				<reportElement x="41" y="563" width="480" height="59" forecolor="#192F57" uuid="730071a5-f413-4a89-8195-be2059f47f28">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA QUINTA: (RETENCIÓN DE FONDOS)</b> En caso de que la Autoridad Competente  comunicará la orden de Autoridad Judicial o Administrativa para proceder a la retención de fondos del (de los) CLIENTE (S) FINANCIERO (S), <b>LA PROMOTORA EFV</b> procederá a dicha retención hasta el límite señalado en la orden respectiva conforme a reglamentación emitida por ASFI.]]></text>
			</staticText>
			<staticText>
				<reportElement x="74" y="134" width="445" height="30" forecolor="#192F57" uuid="0c9f706e-0f5c-4ede-a8c3-1e687f2660ac">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Comunicar de forma inmediata a <b>LA PROMOTORA EFV</b>, a través de los canales autorizados el extravío sustracción o robo de la (las) tarjetas.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="350" width="480" height="55" forecolor="#192F57" uuid="2d12a670-4405-439a-9b1f-801e577d3565">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA SEGUNDA: (ACREDITACIÓN ERRÓNEA)</b> En caso de que <b>LA PROMOTORA EFV</b>, acreditara erróneamente algún monto en la cuenta de Caja de Ahorro del (de los) CLIENTE (S) FINANCIERO (S), ésta podrá revertir el depósito, comunicando al (a los) CLIENTE (S) FINANCIERO (S) el débito efectuado y la razón que motivó el mismo.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="407" width="480" height="54" forecolor="#192F57" uuid="0fe663c3-cde9-4910-a7ca-8c50fd4041e9">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA TERCERA: (COMISIONES)</b> La apertura y administración de la cuenta de caja de ahorro no genera comisiones, salvo en el caso de excepción establecido en la Recopilación de Normas para Servicios Financieros.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="453" width="480" height="46" forecolor="#192F57" uuid="feb54d44-1828-44d2-ab5c-0f22653b9724">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA CUARTA: (CLAUSURA Y PRESCRIPCIÓN POR INACTIVIDAD)</b> De conformidad a lo establecido en el artículo 1369 del Código de Comercio, la cuenta de Caja de Ahorro inactiva por más de cinco años será clausurada comunicándose de forma escrita al (a los) CLIENTE (S) FINANCIERO (S) la disponibilidad de su saldo incluyendo el abono de los intereses ganados.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="504" width="480" height="50" forecolor="#192F57" uuid="c0dcccbc-0dcd-4339-b3db-2bc7f9a5fc75">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Si la Caja de Ahorro no registra movimiento alguno en el lapso de 10 años, contando desde el último depósito o retiro, los montos que se encontraban a disposición del (de los) CLIENTE (S) FINANCIERO (S) será (n) transferidos al Tesoro General de la Nación.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="625" width="480" height="60" forecolor="#192F57" uuid="b70aabe2-ec89-4187-b404-959de2ace149">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA SEXTA (TERMINACIÓN ANTICIPADA)</b> <b>LA PROMOTORA EFV</b>, dará por terminado el presente  contrato por razones justificadas en sus políticas internas, así como por medidas de prevención en materia de legitimación de ganacías ilícitas, financiamiento al terrorismo y financiamiento de la proliferación de armas de destrucción masiva, debiendo comunicar sobre esta decisión al (a los) CLIENTE (S) FINANCIERO (S) con quince (15) días de anticipación.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="691" width="480" height="60" forecolor="#192F57" uuid="b85cba57-4ae4-4c5e-aed6-04b9bcaed06e">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Por otra parte, el (los) CLIENTE (S) FINANCIERO (S), podrá (n) solicitar a <b>LA PROMOTORA EFV</b> la conclusión del contrato de forma expresa, debiendo la entidad poner a su disposición el saldo de su cuenta, salvo que existan restricciones normativas o de orden legal dispuestas por autoridad competente.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="289" width="480" height="60" forecolor="#192F57" uuid="69f5079b-bd50-46b1-be34-b873feb1f684">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA PRIMERA: (INEMBARGABILIDAD DE CAJAS DE AHORRO DE PERSONAS NATURALES Y LÍMITE DE TAL EFECTO)</b> Los fondos depositados en la cuenta de caja de ahorro serán inembargables, hasta el monto establecido de acuerdo a normativa regulatoria vigente. Dicho límite no alcanza a las obligaciones alimenticias.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="10" width="480" height="50" forecolor="#192F57" uuid="6dfcd61a-b119-4e84-8dc3-bb54e50bb7a0">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>OCTAVA:	(CAPITALIZACIÓN DE INTERESES)</b> Los intereses serán capitalizables según la periodicidad establecida en el Reglamento de Cajas de Ahorro de <b>LA PROMOTORA EFV</b> aprobado por ASFI y disposiciones legales vigentes.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="54" width="480" height="31" forecolor="#192F57" uuid="96de8d6b-06e9-48a4-849f-953c26abac78">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>NOVENA: (SERVICIOS ADICIONALES)</b> El (los) CLIENTE (S) FINANCIERO (S) por el acceso a la utilización de tarjetas de débito y banca electrónica, debe (n):]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="237" width="480" height="49" forecolor="#192F57" uuid="885dec8b-93e7-404b-af4e-c24f314ad6bc">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA: (MODIFICACIONES UNILATERALES) LA PROMOTORA EFV</b>, no puede modificar unilateralmente los términos y condiciones pactadas en el presente contrato, salvo que dicha modificación beneficie al (a los) CLIENTE (S) FINANCIERO (S).]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="195" width="480" height="36" forecolor="#192F57" uuid="9267d455-1641-4e99-9d5b-8110eef85c4c">
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
				<reportElement x="74" y="84" width="445" height="30" forecolor="#192F57" uuid="9bea0c06-e8ff-4b9b-a8ca-02f7b22d7ebf">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Pagar la tarifa establecida por la emisión de nuevas tarjetas en caso de extravío, sustracción, robo o emisión de tarjetas adicionales.]]></text>
			</staticText>
			<staticText>
				<reportElement x="74" y="114" width="445" height="20" forecolor="#192F57" uuid="9fbc97f8-0628-437d-b27a-c809f5f4e5ea">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Asumir la responsabilidad por el uso del código de identificación personal (PIN) de la (s) tarjeta (s).]]></text>
			</staticText>
			<staticText>
				<reportElement x="74" y="164" width="446" height="28" forecolor="#192F57" uuid="a4cf2128-04c8-45c6-a2b0-c76a6474fc26">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Utilizar su código de identificación personal (PIN) o códigos fijados por <b>LA PROMOTORA EFV</b>, para consultar la información relativa a sus cuentas de cajas de ahorro.]]></text>
			</staticText>
			<staticText>
				<reportElement x="42" y="114" width="30" height="13" forecolor="#192F57" uuid="48b7b33e-fae8-4eb6-955a-a666c9a109a5">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[b)]]></text>
			</staticText>
			<staticText>
				<reportElement x="42" y="164" width="30" height="13" forecolor="#192F57" uuid="35d89a8b-d234-4821-ac6d-f74c8ebbd4a9">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[d)]]></text>
			</staticText>
			<staticText>
				<reportElement x="42" y="134" width="30" height="13" forecolor="#192F57" uuid="959a82c1-e63e-409e-9315-367f101e4f92">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[c)]]></text>
			</staticText>
			<staticText>
				<reportElement x="42" y="86" width="30" height="13" forecolor="#192F57" uuid="3a564c91-ccfa-44bb-91d4-f0059f48956b">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[a)]]></text>
			</staticText>
		</band>
		<band height="776">
			<property name="com.jaspersoft.studio.unit.height" value="px"/>
			<staticText>
				<reportElement x="40" y="14" width="480" height="50" forecolor="#192F57" uuid="6f19e1ef-a759-45b5-9cab-a4c8e86657b7">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA SEPTIMA: (FALLECIMIENTO)</b> En caso de fallecimiento del (de los) CLIENTE (S) FINANCIERO (S) los herederos podrán disponer de los fondos existentes previa presentación de la declaratoria de herederos.]]></text>
			</staticText>
			<staticText>
				<reportElement x="70" y="256" width="450" height="54" forecolor="#192F57" uuid="f69cab99-4710-4f12-9afe-cc803c3457f8">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Proporcionar la información requerida por <b>LA PROMOTORA EFV</b> en cumplimiento a lo establecido por la Unidad de Investigación Financiera UIF.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="258" width="30" height="20" forecolor="#192F57" uuid="5770c210-a034-4adb-b0b1-623d4b885bc0">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[a)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="287" width="30" height="20" forecolor="#192F57" uuid="0ab69c38-3fb1-4639-b270-61737724fa16">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[b)]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="144" width="450" height="20" forecolor="#192F57" uuid="5ebcc272-6bba-4055-b7ae-e9e761592f9e">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[A recibir información fidedigna, amplia, íntegra, clara, comprensible, oportuna y accesible.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="130" width="30" height="13" forecolor="#192F57" uuid="75f58c0d-c052-4f16-a70a-82c7dc550264">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[a)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="143" width="30" height="13" forecolor="#192F57" uuid="fac815e3-cafd-4ae6-94e2-37382869da37">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[b)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="156" width="30" height="13" forecolor="#192F57" uuid="b237b01d-ede3-4470-9983-3eafb6fd702d">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[c)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="169" width="30" height="13" forecolor="#192F57" uuid="4cccbdb6-7c55-4d0c-8de7-dfa6ad2413e3">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[d)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="182" width="30" height="13" forecolor="#192F57" uuid="e96f9b00-2091-4df9-84fc-e7ebc6dd5a4d">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[e)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="195" width="30" height="13" forecolor="#192F57" uuid="28da8bcf-19e6-400b-aef3-6be9e258d4c0">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[f)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="208" width="30" height="13" forecolor="#192F57" uuid="b1e73115-518e-42da-8c91-03b2f5e4bd00">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[g)]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="346" width="450" height="32" forecolor="#192F57" uuid="904dae43-e56f-4a0d-8a25-b2642286abe3">
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
				<reportElement x="40" y="403" width="30" height="13" forecolor="#192F57" uuid="2930f66b-29d6-4831-b117-42018f1ee44c">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[c)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="346" width="30" height="13" forecolor="#192F57" uuid="78898118-3754-486c-bbba-c1ea70350d35">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[a)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="375" width="30" height="13" forecolor="#192F57" uuid="80c06ed5-d857-4d4e-9f3b-7ed83ba45ddc">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[b)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="235" width="480" height="24" forecolor="#192F57" uuid="9d2ddb75-3194-4b72-9afc-3c19ff7d9225">
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
				<reportElement x="40" y="325" width="480" height="20" forecolor="#192F57" uuid="8e3ac628-d8bd-4ab0-9631-d842799185c9">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>VIGÉSIMA PRIMERA: (OBLIGACIONES DE LA PROMOTORA E.F.V.)</b> Son las siguientes:]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="441" width="480" height="59" forecolor="#192F57" uuid="382f877d-68b9-4865-998c-1a61940838a3">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>VIGÉSIMA SEGUNDA: (ACEPTACIÓN)</b>. LA PROMOTORA EFV y el (los) CLIENTE (S) FINANCIERO (S), dan su plena conformidad con todas las cláusulas del presente contrato que surtirá efectos sin necesidad de reconocimiento de firmas y rúbricas, estampando sus firmas, en señal de aceptación.
]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="57" width="480" height="40" forecolor="#192F57" uuid="9f6743e3-14dd-4ef0-901c-78ec1bd69e9e">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA OCTAVA: (DOMICILIO ESPECIAL)</b> Todo aviso, notificación y en general toda comunicación escrita emitida por <b>LA PROMOTORA EFV</b>, será remitida a la última dirección que esté registrada en <b>LA PROMOTORA EFV</b>.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="100" width="480" height="34" forecolor="#192F57" uuid="83d63805-ccf8-469e-84ab-cbafd64f5bbd">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA NOVENA: (DERECHOS DEL CLIENTE FINANCIERO)</b> El (Los) CLIENTE (S) FINANCIERO (S) tienen derecho a:]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="375" width="450" height="28" forecolor="#192F57" uuid="1437072f-22b5-49d8-ad4a-21bebec08439">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[A requerimiento de la UIF, recabar y entregar información sobre las actividades comerciales y financieras del (de los) CLIENTE (S) FINANCIERO (S).]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="404" width="450" height="30" forecolor="#192F57" uuid="4c3f4baa-351e-4686-adbe-6df5dd94bdef">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[A solicitud del (de los) CLIENTE (S) FINANCIERO (S), emitir mensualmente un extracto de movimiento de su Cuenta de Caja de Ahorro, sin costo. ]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="288" width="450" height="30" forecolor="#192F57" uuid="75e179bf-93ae-4bda-ae19-f2e2630a4d12">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Dar aviso oportunamente y por escrito a <b>LA PROMOTORA EFV</b> sobre cualquier cambio de domicilio.]]></text>
			</staticText>
			<staticText>
				<reportElement x="70" y="208" width="450" height="18" forecolor="#192F57" uuid="0545a3cb-2eda-487b-b6ba-46b81bf2873d">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Otros derechos reconocidos por disposiciones legales y reglamentarias.]]></text>
			</staticText>
			<staticText>
				<reportElement x="70" y="195" width="450" height="20" forecolor="#192F57" uuid="4bb4787f-eb19-41bb-8961-0fece60c326b">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[A la terminación anticipada del presente contrato.]]></text>
			</staticText>
			<staticText>
				<reportElement x="70" y="169" width="450" height="16" forecolor="#192F57" uuid="8de05e09-f57c-46bc-ad82-333f4e9e5b4e">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[A la confidencialidad salvo excepciones contenidas en la Ley.]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="130" width="450" height="14" forecolor="#192F57" uuid="ebeda1c0-706c-4c4b-bb3f-289d0c54bed8">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Trato equitativo, sin discriminación por razones de edad, género, raza, religión o identidad cultural.]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="182" width="450" height="20" forecolor="#192F57" uuid="43185f99-aa4e-4ab5-baea-2416872c708c">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[A efectuar consultas, peticiones y solicitudes.]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="156" width="450" height="18" forecolor="#192F57" uuid="622bc9c8-44e9-4dfd-b0c4-89217801155c">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Formular reclamos a través de los canales correspondientes.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="489" width="480" height="20" forecolor="#192F57" uuid="1ab2e92f-199f-4aea-b3f3-454d82e341e9">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>P_localidad, P_FechaLiteral</b>.
]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="700" width="213" height="20" uuid="237a0913-c773-4553-8715-0efff778c8a3">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[_______________________________________]]></text>
			</staticText>
			<staticText>
				<reportElement x="305" y="700" width="213" height="20" uuid="c1a9002e-6e48-434e-a831-b5bff15a33fe">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[_______________________________________]]></text>
			</staticText>
			<image scaleImage="FillFrame">
				<reportElement x="42" y="607" width="212" height="97" uuid="47a9977a-bc04-4ce7-b1f6-97e88b4bcdd3">
					<property name="com.jaspersoft.studio.unit.width" value="px"/>
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<imageExpression><![CDATA["C:/opt/wildfly-24_onboard/standalone/deployments/files.war/images/signOneshot.png"]]></imageExpression>
			</image>
			<image scaleImage="FillFrame">
				<reportElement x="305" y="605" width="213" height="97" uuid="81cffdd3-b4df-4f59-8f77-75089db54d50">
					<property name="com.jaspersoft.studio.unit.width" value="px"/>
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<imageExpression><![CDATA["C:/opt/wildfly-24_onboard/standalone/deployments/files.war/images/signPromotora.png"]]></imageExpression>
			</image>
			<staticText>
				<reportElement x="40" y="733" width="214" height="20" forecolor="#192F57" uuid="8ab3fa19-0ca9-4496-83d6-9c24a5179d46">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[C.I. N° <b>P_numDocumento</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="714" width="214" height="20" forecolor="#192F57" uuid="24ee7f7b-0aa0-44f2-8a9e-c814093b1a37">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>P_NombreCliente</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="305" y="714" width="213" height="20" forecolor="#192F57" uuid="354e97ef-8e72-4cc3-a82a-9583422256bd">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>RAUL PABLO RODRIGUEZ SALAZAR</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="305" y="734" width="213" height="20" forecolor="#192F57" uuid="6ccfcc66-b464-4cf1-ae63-ce8a39d0cd22">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[C.I. N° <b>3754171 CB</b>]]></text>
			</staticText>
		</band>
		<band height="784">
			<staticText>
				<reportElement x="41" y="53" width="480" height="22" forecolor="#192F57" uuid="492fe0af-9a8d-4df7-a017-f7b964e1a09a">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<textElement textAlignment="Center">
					<font fontName="Verdana" size="11" isBold="true"/>
				</textElement>
				<text><![CDATA[PLAN DE TASA DE INTERÉS DIFERENCIADO “DINAMICA”]]></text>
			</staticText>
			<staticText>
				<reportElement x="42" y="80" width="476" height="17" forecolor="#192F57" uuid="38e47c09-c168-49e6-9f37-cf0648b43d04">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9"/>
				</textElement>
				<text><![CDATA[_______________________________________________________________________________________]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="107" width="480" height="50" forecolor="#192F57" uuid="787fd0c0-4c04-4a2d-b5c4-170bfd7db832">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Por el presente documento, el (los) CLIENTE (S) FINANCIERO (S) descrito (s) el contrato principal, de manera voluntaria manifiesta su voluntad de afiliar su CUENTA DE CAJA DE AHORRO a un plan de tasa de interés diferenciado, conforme las condiciones siguientes:]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="239" width="480" height="50" forecolor="#192F57" uuid="830d4bd7-68de-4f07-a29f-cac54c4d7a95">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>SEGUNDA. - OBJETO:</b> El (los) CLIENTE (S) FINANCIERO (S) de forma voluntaria solicita afiliar la cuenta descrita en la cláusula primera a la campaña con plan de tasa de interés diferenciado, bajo las condiciones estipuladas en el presente documento.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="149" width="480" height="56" forecolor="#192F57" uuid="210af5d8-6f54-4a7b-afd4-274ff38f78ce">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>PRIMERA. - ANTECEDENTES:</b> El (los) CLIENTE (S) FINANCIERO (S) a la fecha, mantiene(n) en <b>“LA PROMOTORA” E.F.V.</b> la cuenta de caja de ahorro en <b>P_tipo_moneda</b>  N°<b>P_cuentaCore</b>, misma que recibe un interés mensual de acuerdo a la tasa estipulada en Tarifario.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="364" width="480" height="60" forecolor="#192F57" uuid="b85ff860-c953-481e-acf3-284618efd9c6">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>CUARTA. - CONDICIONES:</b> Se deja claramente establecido que para acceder al beneficio de la campaña plan de tasa de interés diferenciado, el (los) CLIENTE (S) FINANCIERO (S) debe (n) tener abierta en <b>“LA PROMOTORA” E.F.V.</b>, a la fecha de suscripción del presente contrato, una cuenta de caja de ahorros en <b>P_tipo_moneda</b>.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="284" width="480" height="60" forecolor="#192F57" uuid="d6343f44-add3-4073-a136-b6974d0685ab">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>TERCERA. - PLAZO:</b> Se determina que la prestación del servicio, objeto del contrato es de plazo indefinido; sin embargo, las partes podrán establecer la terminación anticipada, conforme a lo previsto en el presente documento, Código de Comercio y normativa regulatoria de la Autoridad de Supervisión del Sistema Financiero (ASFI).]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="502" width="480" height="48" forecolor="#192F57" uuid="5d64a11e-8830-4587-8364-dea1f8fa0583">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>SEXTA.- CONFORMIDAD:</b> El (los) CLIENTE (S) FINANCIERO (S) expresamente manifiesta (n) su conformidad a las condiciones precedentes que le permiten beneficiarse con la tasa correspondiente al Plan de Ahorros al que se afilia.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="423" width="480" height="60" forecolor="#192F57" uuid="d0873f31-89bc-4297-9152-939453975362">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>QUINTA. - INTERÉS:</b> El interés a ser pagado por “LA PROMOTORA E.F.V.” a favor del (los) CLIENTE (S) FINANCIERO (S), dependerá de los saldos que éste mantuviera en la cuenta de caja de ahorro afiliada y del plan al que se encuentre afiliado, aplicando las tasas definidas en tarifario de <b>“LA PROMOTORA” E.F.V.</b> para cada plan de ahorros.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="193" width="480" height="50" forecolor="#192F57" uuid="2c3b02ec-870f-4dc6-8330-61eae42b2ae3">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>“LA PROMOTORA” E.F.V.</b>, mantiene distintos planes promocionales de tasa de interés que permiten al (a los) CLIENTE (S) FINANCIERO (S) tener un mayor interés y beneficios por sus ahorros, otorgando una tasa de interés mayor por un periodo de tiempo limitado y bajo determinadas condiciones.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="71" width="479" height="22" forecolor="#192F57" uuid="9b4324fc-d552-4057-afbe-c2c17eda9cdb">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<textElement textAlignment="Center">
					<font fontName="Verdana" size="11" isBold="true"/>
				</textElement>
				<text><![CDATA[ANEXO  I]]></text>
			</staticText>
			<staticText>
				<reportElement x="76" y="32" width="400" height="17" forecolor="#192F57" uuid="79f074e2-10af-4331-a5d9-75846ded764a">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9"/>
				</textElement>
				<text><![CDATA[_______________________________________________________________________]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="340" width="480" height="20" forecolor="#192F57" uuid="b2913405-0f8a-4bf1-be6f-7462b17f9f0b">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Las condiciones de tasa de interés diferenciado entran en vigor a partir de la afiliación. ]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="478" width="480" height="20" forecolor="#192F57" uuid="90e2f8f3-a371-4784-9bb2-ea4583d5b6ca">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[El interés será abonado de forma mensual sobre el saldo promedio al cierre del mes anterior al pago.]]></text>
			</staticText>
		</band>
		<band height="784">
			<staticText>
				<reportElement x="41" y="93" width="480" height="29" forecolor="#192F57" uuid="eaa234c4-69d6-4a3a-8a3b-7198180c37b8">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[La caja de ahorro <b>DINAMICA</b> ha sido creada con el objetivo de otorgar, Funcionalidad y digitalización de los servicios financieros, a jóvenes de 18 a 35 años.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="163" width="480" height="20" forecolor="#192F57" uuid="7ce8f01a-7ed3-44ee-b5dd-836d1bc523f2">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Tasa: 2%]]></text>
			</staticText>
			<staticText>
				<reportElement x="42" y="39" width="478" height="22" forecolor="#192F57" uuid="46174f46-bf7a-41cd-b8ea-248a71ba5537">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<textElement textAlignment="Center">
					<font fontName="Verdana" size="11" isBold="true"/>
				</textElement>
				<text><![CDATA[ANEXO  II]]></text>
			</staticText>
			<staticText>
				<reportElement x="81" y="18" width="400" height="17" forecolor="#192F57" uuid="53e863f9-f100-4fba-b5b5-41652134f453">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9"/>
				</textElement>
				<text><![CDATA[_______________________________________________________________________]]></text>
			</staticText>
			<staticText>
				<reportElement x="81" y="48" width="400" height="17" forecolor="#192F57" uuid="3ec84b02-ffe7-4baa-b74c-f52ec6cf3db9">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9"/>
				</textElement>
				<text><![CDATA[_______________________________________________________________________]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="73" width="480" height="19" forecolor="#192F57" uuid="b45b73ee-4607-4417-b0a8-559b7340f1c5">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>1.-ANTECEDENTES</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="128" width="480" height="19" forecolor="#192F57" uuid="b72c5460-c32b-4ceb-96f2-f79cb76f9d41">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>2.- CONDICIONES COMERCIALES</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="39" y="234" width="480" height="19" forecolor="#192F57" uuid="59a9ae4f-6378-406a-8f70-deb1b17572bc">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>3.-BENEFICIOS</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="331" width="480" height="19" forecolor="#192F57" uuid="303a9d1c-e92c-48d4-b404-53549a3054b0">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>4.- ASISTENCIAS</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="147" width="480" height="20" forecolor="#192F57" uuid="68d571e2-faf7-49f6-8bd4-9e61b07cbd86">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Caja de ahorro en bolivianos]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="180" width="480" height="20" forecolor="#192F57" uuid="84953fb7-347a-4010-ae7e-ef41feb9f844">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Monto mínimo de apertura: No hay monto mínimo.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="196" width="480" height="20" forecolor="#192F57" uuid="1048f501-7e3d-41bf-94d1-8c9eaaa56b77">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Pignoración: No hay pignoración.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="211" width="480" height="20" forecolor="#192F57" uuid="47733846-7a62-4e97-b559-804d10c38262">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Sin condiciones de retiros]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="252" width="480" height="20" forecolor="#192F57" uuid="5e3cce5b-5eae-4bbd-8580-054b239fea2b">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Compras por internet]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="266" width="480" height="20" forecolor="#192F57" uuid="b7799076-0799-4fad-84b3-35577a4f2d93">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Descuentos en comercios afiliados]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="280" width="480" height="20" forecolor="#192F57" uuid="9488c400-b9f8-4f86-8f20-8920c421657a">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Acceso a Tarjeta de crédito]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="294" width="480" height="20" forecolor="#192F57" uuid="5020f358-edcd-4d46-9364-eec4ea78708f">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Tarjeta de débito con todos sus beneficios]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="308" width="480" height="20" forecolor="#192F57" uuid="fe8b83c1-1fca-4e94-8053-b1fb30c13a06">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Acceso a banca digital]]></text>
			</staticText>
			<rectangle>
				<reportElement x="48" y="350" width="470" height="228" forecolor="#192F57" uuid="1fd18137-3e02-4952-b9e9-7761a1b11a31"/>
			</rectangle>
			<line>
				<reportElement x="309" y="351" width="1" height="227" forecolor="#192F57" uuid="f9b35ea2-af94-4070-aadc-a5e76abe943c"/>
			</line>
			<line>
				<reportElement x="48" y="368" width="470" height="1" forecolor="#192F57" uuid="df8e0083-cc4d-4b15-b8b4-7dde4025f9d8">
					<property name="com.jaspersoft.studio.unit.width" value="px"/>
				</reportElement>
			</line>
			<line>
				<reportElement x="48" y="415" width="470" height="1" forecolor="#192F57" uuid="7b68d580-1ca6-4ebc-bcf7-cccc4608973c">
					<property name="com.jaspersoft.studio.unit.width" value="px"/>
				</reportElement>
			</line>
			<line>
				<reportElement x="49" y="451" width="470" height="1" forecolor="#192F57" uuid="fccc6a9b-b6e4-4395-a778-a53655be3a6a">
					<property name="com.jaspersoft.studio.unit.width" value="px"/>
				</reportElement>
			</line>
			<line>
				<reportElement x="48" y="499" width="470" height="1" forecolor="#192F57" uuid="743b0853-3de2-4f66-995f-0fd4979980d9">
					<property name="com.jaspersoft.studio.unit.width" value="px"/>
				</reportElement>
			</line>
			<staticText>
				<reportElement x="60" y="355" width="184" height="19" forecolor="#192F57" uuid="eac98e97-d4f3-41d7-b9c7-9344a3427d33">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>SERVICIOS</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="322" y="353" width="184" height="19" forecolor="#192F57" uuid="b2cfa3ba-1bcd-4fe5-aab7-4e518b7dab51">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>TOPE DE USO</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="53" y="370" width="256" height="19" forecolor="#192F57" uuid="f143607c-2075-4295-9e34-0e1354332239">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Servicio consulta medico en línea – Telemedicina]]></text>
			</staticText>
			<staticText>
				<reportElement x="53" y="384" width="256" height="19" forecolor="#192F57" uuid="2907df43-65f1-45ca-8a5a-22ed73af39fc">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[(cobertura en Medina General, pediatría)]]></text>
			</staticText>
			<staticText>
				<reportElement x="53" y="398" width="256" height="19" forecolor="#192F57" uuid="553ffb39-ee0e-4e67-a7ac-0701eac99bf6">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[(Aplica titular + beneficiarios)]]></text>
			</staticText>
			<staticText>
				<reportElement x="53" y="418" width="256" height="19" forecolor="#192F57" uuid="2ed5c822-2bcf-4f78-bdd1-fc2221bd6a4f">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Servicio Consulta Nutricionista en línea Tele consulta]]></text>
			</staticText>
			<staticText>
				<reportElement x="53" y="455" width="256" height="19" forecolor="#192F57" uuid="fc495dd2-e835-4d2f-a62a-aa186d6038c4">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Servicio auxilio vial]]></text>
			</staticText>
			<staticText>
				<reportElement x="54" y="560" width="256" height="19" forecolor="#192F57" uuid="826862f9-d023-4213-ae1f-fb0a1a1ef9e5">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Servicio técnico de PC en línea -Teleasistencia]]></text>
			</staticText>
			<staticText>
				<reportElement x="54" y="502" width="256" height="19" forecolor="#192F57" uuid="e4fa11f3-2ece-48a9-bd87-a850d9326a03">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Consulta de Veterinaria en línea -Tele consulta]]></text>
			</staticText>
			<staticText>
				<reportElement x="54" y="519" width="256" height="19" forecolor="#192F57" uuid="5ed49835-f073-488c-b677-90cced99e833">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[(Cobertura para la mascota)]]></text>
			</staticText>
			<staticText>
				<reportElement x="54" y="536" width="256" height="19" forecolor="#192F57" uuid="5a134585-7992-4fa2-a7df-a2aeae111d2f">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[(aplica a solo animales domésticos)]]></text>
			</staticText>
			<staticText>
				<reportElement x="310" y="374" width="208" height="19" forecolor="#192F57" uuid="b4e1c34e-da90-4a84-ae99-9c8c55032f5a">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[2 veces al mes/Max. 24 consultas anuales]]></text>
			</staticText>
			<staticText>
				<reportElement x="310" y="417" width="208" height="19" forecolor="#192F57" uuid="31d63bb5-4ae7-4fe1-b279-a0dcf91008fd">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[6 eventos anuales]]></text>
			</staticText>
			<staticText>
				<reportElement x="310" y="452" width="208" height="19" forecolor="#192F57" uuid="10a781bb-1eca-4b64-a480-d3b5f230aced">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[1 vez al mes -12 eventos anuales]]></text>
			</staticText>
			<staticText>
				<reportElement x="310" y="559" width="208" height="19" forecolor="#192F57" uuid="082e0f65-9501-429c-9823-07346067f195">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[6 eventos anuales]]></text>
			</staticText>
			<staticText>
				<reportElement x="310" y="501" width="208" height="19" forecolor="#192F57" uuid="76e123c3-9962-4470-a6d0-f6bd8ecf13a3">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[6 eventos anuales]]></text>
			</staticText>
			<staticText>
				<reportElement x="53" y="435" width="256" height="19" forecolor="#192F57" uuid="d7de1e44-117c-497c-9e4e-c4bbef8f44d5">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[(Aplica solo titular)]]></text>
			</staticText>
			<line>
				<reportElement x="49" y="555" width="470" height="1" forecolor="#192F57" uuid="57abd796-a921-4c2f-95f0-fd3ab8bd6eb2">
					<property name="com.jaspersoft.studio.unit.width" value="px"/>
				</reportElement>
			</line>
			<staticText>
				<reportElement x="53" y="471" width="256" height="34" forecolor="#192F57" uuid="b324dd4e-5dc9-4def-a859-35586638d6dd">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[(cambio de llanta, cerrajería vehicular, paso corriente, envió combustible)]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="722" width="213" height="20" uuid="616c740f-907c-4ede-b72a-e0b9b774166c">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[_______________________________________]]></text>
			</staticText>
			<staticText>
				<reportElement x="305" y="722" width="213" height="20" uuid="c38c64c4-c12f-479b-8d24-cdbdf94fbd8b">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[_______________________________________]]></text>
			</staticText>
			<image scaleImage="FillFrame">
				<reportElement x="42" y="629" width="212" height="97" uuid="a6c5dfe5-192c-461f-8ad2-b01bd0a964bf">
					<property name="com.jaspersoft.studio.unit.width" value="px"/>
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<imageExpression><![CDATA["C:/opt/wildfly-24_onboard/standalone/deployments/files.war/images/signOneshot.png"]]></imageExpression>
			</image>
			<image scaleImage="FillFrame">
				<reportElement x="305" y="627" width="213" height="97" uuid="cf99b3e1-a057-4527-b4cf-56cafc7b4632">
					<property name="com.jaspersoft.studio.unit.width" value="px"/>
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<imageExpression><![CDATA["C:/opt/wildfly-24_onboard/standalone/deployments/files.war/images/signPromotora.png"]]></imageExpression>
			</image>
			<staticText>
				<reportElement x="40" y="755" width="214" height="20" forecolor="#192F57" uuid="88085d84-e04f-4193-afb7-6d468ce19e4f">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[C.I. N° <b>P_numDocumento</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="736" width="214" height="20" forecolor="#192F57" uuid="5296c906-d137-41c1-bc22-45902cf4e9f8">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>P_NombreCliente</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="305" y="736" width="213" height="20" forecolor="#192F57" uuid="003d1366-43ac-4d54-94ee-3dc807549a3b">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>RAUL PABLO RODRIGUEZ SALAZAR</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="305" y="756" width="213" height="20" forecolor="#192F57" uuid="6fd5f3f5-40b5-43c7-b100-3c4b4208df19">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[C.I. N° <b>3754171 CB</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="591" width="480" height="20" forecolor="#192F57" uuid="ba64c9ce-a80a-43f5-a52f-b204d4d0ab5f">
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
WHERE report_id = 3;

/*
 <?xml version="1.0" encoding="UTF-8"?>
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
				<reportElement x="40" y="20" width="479" height="22" forecolor="#192F57" uuid="80006b8d-8ece-46c0-936f-59190de9a59b">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<textElement textAlignment="Center">
					<font fontName="Verdana" size="11" isBold="true"/>
				</textElement>
				<text><![CDATA[CONTRATO DE CUENTA DE CAJA DE AHORRO]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="462" width="480" height="50" forecolor="#192F57" uuid="e46f4789-6bc4-4485-9d4f-575a5fb1a1df">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[En caso de que los depósitos se efectúen mediante cheque o cheques de otras entidades de intermediación financiera, el (los) CLIENTE (S) FINANCIERO (S) podrá (n) disponer de esos fondos una vez que se haya acreditado el abono en forma efectiva del importe del o los cheques en su cuenta de caja de ahorro.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="344" width="480" height="72" forecolor="#192F57" uuid="8ebaa73b-0f7f-4e2a-8d1e-96d1ff7578b9">
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
				<reportElement x="41" y="565" width="480" height="39" forecolor="#192F57" uuid="d705ab1f-8d37-4de2-b558-4f3c15766bb3">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>SEXTA: (ADMINISTRACIÓN DE LOS FONDOS)</b> El (los) CLIENTE (S) FINANCIERO (S) podrá (n) administrar los fondos de la cuenta de caja de ahorro a través de la libreta de caja de ahorro, la tarjeta de débito o mediante banca electrónica. ]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="257" width="480" height="90" forecolor="#192F57" uuid="bd3370ec-60c6-4236-844e-0fa2a3f4536a">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>SEGUNDA:	(OBJETO DEL CONTRATO)</b> El presente contrato tiene por objeto establecer las condiciones sobre las cuales <b>LA PROMOTORA EFV</b> prestará a favor del (de los) CLIENTE (S) FINANCIERO (S), el servicio de apertura, recepción y retiro de depósitos y administración de fondos de una cuenta de caja de ahorro en <b>P_tipo_moneda</b>, en puntos de atención financiero o a través de instrumentos electrónicos de pago o banca electrónica, conforme a disposiciones legales y reglamentarias vigentes así como reglamentos y procedimientos de <b>LA PROMOTORA EFV.</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="216" width="480" height="46" forecolor="#192F57" uuid="75404ed7-7dd4-4d9b-822e-9f4b3ce2f5d6">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[El (la) señor (a) <b>P_NombreCliente</b> con documento (s) de identificación N° <b>P_numDocumento</b> mayor (es) de edad y hábil (es) por derecho, en adelante CLIENTE (S) FINANCIERO (S).]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="513" width="480" height="50" forecolor="#192F57" uuid="7d7960a4-0e9f-4d8c-b616-36c37f47b1d1">
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
				<reportElement x="41" y="661" width="480" height="48" forecolor="#192F57" uuid="ba065f1d-e311-48fa-8a5e-e934eea15349">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>SEPTIMA: (INTERESES) LA PROMOTORA EFV</b> pagará al (a los) CLIENTE (S) FINANCIERO (S) por la cuenta de caja de ahorro, el interés anual, de acuerdo a tarifario y régimen de tasas de interés reguladas por el Órgano Ejecutivo del nivel central del Estado mediante Decreto Supremo.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="613" width="480" height="47" forecolor="#192F57" uuid="5cfd3f55-4a39-4440-87e1-cbc1abf47081">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Al momento de la apertura de la cuenta de cajas de ahorro y con el primer depósito, la EIF extenderá la libreta de ahorros a nombre del (de los) CLIENTE (S) FINANCIERO (S), que contendrá el Reglamento de Cuentas de Ahorro de <b>LA PROMOTORA EFV</b>.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="417" width="480" height="50" forecolor="#192F57" uuid="6f92e91e-4b80-4b20-b85e-83bf38e51182">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>CUARTA: (DEPÓSITOS)</b> El (los) CLIENTE (S) FINANCIERO (S) o terceras personas podrá (n) efectuar depósitos en la cuenta de caja de ahorro de forma sucesiva en puntos de atención financiero de <b>LA PROMOTORA EFV</b>, la cual generará en todos los casos la constancia del citado depósito.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="706" width="480" height="70" forecolor="#192F57" uuid="421a55a1-c4ce-41d1-966c-d61b1f9daa9f">
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
				<reportElement x="40" y="192" width="480" height="20" forecolor="#192F57" uuid="1e3875e7-375c-4c4a-8f23-63dd168bbf6c">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Por otra parte,]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="85" width="480" height="105" forecolor="#192F57" uuid="285e1e59-ae7f-4a96-81c6-e6cec0d74c25">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>PRIMERA:           (PARTES)</b> Celebran el presente contrato, por una parte <b>LA PROMOTORA ENTIDAD FINANCIERA DE VIVIENDA,</b> con domicilio principal en la calle España No. S-0111 de la ciudad de Cochabamba, Número de Identificación Tributaria (NIT) No. 1009387022, con Licencia de Funcionamiento otorgada por la Autoridad de Supervisión del Sistema Financiero ASFI/051/2015 de fecha 18 de noviembre de 2015 y matrícula de comercio otorgada por Fundempresa No. 341747, representada legalmente por las firmas al pie del contrato, en mérito al Poder No. 93/2020, de fecha 18 de febrero de 2020, otorgado ante la Notaria de Fe Pública No. 30, a cargo de la Dr (a). Maria del Carmen Montaño del Granado; en adelante se denominará <b>“LA PROMOTORA EFV”</b>.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="48" width="480" height="30" forecolor="#192F57" uuid="8c45bc56-92b8-4944-ba67-77cd941ea260">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9"/>
				</textElement>
				<text><![CDATA[Conste por el presente documento privado, un contrato de prestación de servicios financieros de Cuenta de Caja de Ahorro, que se celebra de acuerdo a las siguientes cláusulas:]]></text>
			</staticText>
		</band>
		<band height="757">
			<property name="com.jaspersoft.studio.unit.height" value="px"/>
			<staticText>
				<reportElement x="41" y="563" width="480" height="59" forecolor="#192F57" uuid="730071a5-f413-4a89-8195-be2059f47f28">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA QUINTA: (RETENCIÓN DE FONDOS)</b> En caso de que la Autoridad Competente  comunicará la orden de Autoridad Judicial o Administrativa para proceder a la retención de fondos del (de los) CLIENTE (S) FINANCIERO (S), <b>LA PROMOTORA EFV</b> procederá a dicha retención hasta el límite señalado en la orden respectiva conforme a reglamentación emitida por ASFI.]]></text>
			</staticText>
			<staticText>
				<reportElement x="74" y="134" width="445" height="30" forecolor="#192F57" uuid="0c9f706e-0f5c-4ede-a8c3-1e687f2660ac">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Comunicar de forma inmediata a <b>LA PROMOTORA EFV</b>, a través de los canales autorizados el extravío sustracción o robo de la (las) tarjetas.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="350" width="480" height="55" forecolor="#192F57" uuid="2d12a670-4405-439a-9b1f-801e577d3565">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA SEGUNDA: (ACREDITACIÓN ERRÓNEA)</b> En caso de que <b>LA PROMOTORA EFV</b>, acreditara erróneamente algún monto en la cuenta de Caja de Ahorro del (de los) CLIENTE (S) FINANCIERO (S), ésta podrá revertir el depósito, comunicando al (a los) CLIENTE (S) FINANCIERO (S) el débito efectuado y la razón que motivó el mismo.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="407" width="480" height="54" forecolor="#192F57" uuid="0fe663c3-cde9-4910-a7ca-8c50fd4041e9">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA TERCERA: (COMISIONES)</b> La apertura y administración de la cuenta de caja de ahorro no genera comisiones, salvo en el caso de excepción establecido en la Recopilación de Normas para Servicios Financieros.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="453" width="480" height="46" forecolor="#192F57" uuid="feb54d44-1828-44d2-ab5c-0f22653b9724">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA CUARTA: (CLAUSURA Y PRESCRIPCIÓN POR INACTIVIDAD)</b> De conformidad a lo establecido en el artículo 1369 del Código de Comercio, la cuenta de Caja de Ahorro inactiva por más de cinco años será clausurada comunicándose de forma escrita al (a los) CLIENTE (S) FINANCIERO (S) la disponibilidad de su saldo incluyendo el abono de los intereses ganados.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="504" width="480" height="50" forecolor="#192F57" uuid="c0dcccbc-0dcd-4339-b3db-2bc7f9a5fc75">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Si la Caja de Ahorro no registra movimiento alguno en el lapso de 10 años, contando desde el último depósito o retiro, los montos que se encontraban a disposición del (de los) CLIENTE (S) FINANCIERO (S) será (n) transferidos al Tesoro General de la Nación.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="625" width="480" height="60" forecolor="#192F57" uuid="b70aabe2-ec89-4187-b404-959de2ace149">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA SEXTA (TERMINACIÓN ANTICIPADA)</b> <b>LA PROMOTORA EFV</b>, dará por terminado el presente  contrato por razones justificadas en sus políticas internas, así como por medidas de prevención en materia de legitimación de ganacías ilícitas, financiamiento al terrorismo y financiamiento de la proliferación de armas de destrucción masiva, debiendo comunicar sobre esta decisión al (a los) CLIENTE (S) FINANCIERO (S) con quince (15) días de anticipación.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="691" width="480" height="60" forecolor="#192F57" uuid="b85cba57-4ae4-4c5e-aed6-04b9bcaed06e">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Por otra parte, el (los) CLIENTE (S) FINANCIERO (S), podrá (n) solicitar a <b>LA PROMOTORA EFV</b> la conclusión del contrato de forma expresa, debiendo la entidad poner a su disposición el saldo de su cuenta, salvo que existan restricciones normativas o de orden legal dispuestas por autoridad competente.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="289" width="480" height="60" forecolor="#192F57" uuid="69f5079b-bd50-46b1-be34-b873feb1f684">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA PRIMERA: (INEMBARGABILIDAD DE CAJAS DE AHORRO DE PERSONAS NATURALES Y LÍMITE DE TAL EFECTO)</b> Los fondos depositados en la cuenta de caja de ahorro serán inembargables, hasta el monto establecido de acuerdo a normativa regulatoria vigente. Dicho límite no alcanza a las obligaciones alimenticias.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="10" width="480" height="50" forecolor="#192F57" uuid="6dfcd61a-b119-4e84-8dc3-bb54e50bb7a0">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>OCTAVA:	(CAPITALIZACIÓN DE INTERESES)</b> Los intereses serán capitalizables según la periodicidad establecida en el Reglamento de Cajas de Ahorro de <b>LA PROMOTORA EFV</b> aprobado por ASFI y disposiciones legales vigentes.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="54" width="480" height="31" forecolor="#192F57" uuid="96de8d6b-06e9-48a4-849f-953c26abac78">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>NOVENA: (SERVICIOS ADICIONALES)</b> El (los) CLIENTE (S) FINANCIERO (S) por el acceso a la utilización de tarjetas de débito y banca electrónica, debe (n):]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="237" width="480" height="49" forecolor="#192F57" uuid="885dec8b-93e7-404b-af4e-c24f314ad6bc">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA: (MODIFICACIONES UNILATERALES) LA PROMOTORA EFV</b>, no puede modificar unilateralmente los términos y condiciones pactadas en el presente contrato, salvo que dicha modificación beneficie al (a los) CLIENTE (S) FINANCIERO (S).]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="195" width="480" height="36" forecolor="#192F57" uuid="9267d455-1641-4e99-9d5b-8110eef85c4c">
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
				<reportElement x="74" y="84" width="445" height="30" forecolor="#192F57" uuid="9bea0c06-e8ff-4b9b-a8ca-02f7b22d7ebf">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Pagar la tarifa establecida por la emisión de nuevas tarjetas en caso de extravío, sustracción, robo o emisión de tarjetas adicionales.]]></text>
			</staticText>
			<staticText>
				<reportElement x="74" y="114" width="445" height="20" forecolor="#192F57" uuid="9fbc97f8-0628-437d-b27a-c809f5f4e5ea">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Asumir la responsabilidad por el uso del código de identificación personal (PIN) de la (s) tarjeta (s).]]></text>
			</staticText>
			<staticText>
				<reportElement x="74" y="164" width="446" height="28" forecolor="#192F57" uuid="a4cf2128-04c8-45c6-a2b0-c76a6474fc26">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Utilizar su código de identificación personal (PIN) o códigos fijados por <b>LA PROMOTORA EFV</b>, para consultar la información relativa a sus cuentas de cajas de ahorro.]]></text>
			</staticText>
			<staticText>
				<reportElement x="42" y="114" width="30" height="13" forecolor="#192F57" uuid="48b7b33e-fae8-4eb6-955a-a666c9a109a5">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[b)]]></text>
			</staticText>
			<staticText>
				<reportElement x="42" y="164" width="30" height="13" forecolor="#192F57" uuid="35d89a8b-d234-4821-ac6d-f74c8ebbd4a9">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[d)]]></text>
			</staticText>
			<staticText>
				<reportElement x="42" y="134" width="30" height="13" forecolor="#192F57" uuid="959a82c1-e63e-409e-9315-367f101e4f92">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[c)]]></text>
			</staticText>
			<staticText>
				<reportElement x="42" y="86" width="30" height="13" forecolor="#192F57" uuid="3a564c91-ccfa-44bb-91d4-f0059f48956b">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[a)]]></text>
			</staticText>
		</band>
		<band height="776">
			<property name="com.jaspersoft.studio.unit.height" value="px"/>
			<staticText>
				<reportElement x="40" y="14" width="480" height="50" forecolor="#192F57" uuid="6f19e1ef-a759-45b5-9cab-a4c8e86657b7">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA SEPTIMA: (FALLECIMIENTO)</b> En caso de fallecimiento del (de los) CLIENTE (S) FINANCIERO (S) los herederos podrán disponer de los fondos existentes previa presentación de la declaratoria de herederos.]]></text>
			</staticText>
			<staticText>
				<reportElement x="70" y="256" width="450" height="54" forecolor="#192F57" uuid="f69cab99-4710-4f12-9afe-cc803c3457f8">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Proporcionar la información requerida por <b>LA PROMOTORA EFV</b> en cumplimiento a lo establecido por la Unidad de Investigación Financiera UIF.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="258" width="30" height="20" forecolor="#192F57" uuid="5770c210-a034-4adb-b0b1-623d4b885bc0">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[a)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="287" width="30" height="20" forecolor="#192F57" uuid="0ab69c38-3fb1-4639-b270-61737724fa16">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[b)]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="144" width="450" height="20" forecolor="#192F57" uuid="5ebcc272-6bba-4055-b7ae-e9e761592f9e">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[A recibir información fidedigna, amplia, íntegra, clara, comprensible, oportuna y accesible.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="130" width="30" height="13" forecolor="#192F57" uuid="75f58c0d-c052-4f16-a70a-82c7dc550264">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[a)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="143" width="30" height="13" forecolor="#192F57" uuid="fac815e3-cafd-4ae6-94e2-37382869da37">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[b)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="156" width="30" height="13" forecolor="#192F57" uuid="b237b01d-ede3-4470-9983-3eafb6fd702d">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[c)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="169" width="30" height="13" forecolor="#192F57" uuid="4cccbdb6-7c55-4d0c-8de7-dfa6ad2413e3">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[d)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="182" width="30" height="13" forecolor="#192F57" uuid="e96f9b00-2091-4df9-84fc-e7ebc6dd5a4d">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[e)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="195" width="30" height="13" forecolor="#192F57" uuid="28da8bcf-19e6-400b-aef3-6be9e258d4c0">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[f)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="208" width="30" height="13" forecolor="#192F57" uuid="b1e73115-518e-42da-8c91-03b2f5e4bd00">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[g)]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="346" width="450" height="32" forecolor="#192F57" uuid="904dae43-e56f-4a0d-8a25-b2642286abe3">
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
				<reportElement x="40" y="403" width="30" height="13" forecolor="#192F57" uuid="2930f66b-29d6-4831-b117-42018f1ee44c">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[c)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="346" width="30" height="13" forecolor="#192F57" uuid="78898118-3754-486c-bbba-c1ea70350d35">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[a)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="375" width="30" height="13" forecolor="#192F57" uuid="80c06ed5-d857-4d4e-9f3b-7ed83ba45ddc">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[b)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="235" width="480" height="24" forecolor="#192F57" uuid="9d2ddb75-3194-4b72-9afc-3c19ff7d9225">
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
				<reportElement x="40" y="325" width="480" height="20" forecolor="#192F57" uuid="8e3ac628-d8bd-4ab0-9631-d842799185c9">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>VIGÉSIMA PRIMERA: (OBLIGACIONES DE LA PROMOTORA E.F.V.)</b> Son las siguientes:]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="441" width="480" height="59" forecolor="#192F57" uuid="382f877d-68b9-4865-998c-1a61940838a3">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>VIGÉSIMA SEGUNDA: (ACEPTACIÓN)</b>. LA PROMOTORA EFV y el (los) CLIENTE (S) FINANCIERO (S), dan su plena conformidad con todas las cláusulas del presente contrato que surtirá efectos sin necesidad de reconocimiento de firmas y rúbricas, estampando sus firmas, en señal de aceptación.
]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="57" width="480" height="40" forecolor="#192F57" uuid="9f6743e3-14dd-4ef0-901c-78ec1bd69e9e">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA OCTAVA: (DOMICILIO ESPECIAL)</b> Todo aviso, notificación y en general toda comunicación escrita emitida por <b>LA PROMOTORA EFV</b>, será remitida a la última dirección que esté registrada en <b>LA PROMOTORA EFV</b>.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="100" width="480" height="34" forecolor="#192F57" uuid="83d63805-ccf8-469e-84ab-cbafd64f5bbd">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA NOVENA: (DERECHOS DEL CLIENTE FINANCIERO)</b> El (Los) CLIENTE (S) FINANCIERO (S) tienen derecho a:]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="375" width="450" height="28" forecolor="#192F57" uuid="1437072f-22b5-49d8-ad4a-21bebec08439">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[A requerimiento de la UIF, recabar y entregar información sobre las actividades comerciales y financieras del (de los) CLIENTE (S) FINANCIERO (S).]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="404" width="450" height="30" forecolor="#192F57" uuid="4c3f4baa-351e-4686-adbe-6df5dd94bdef">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[A solicitud del (de los) CLIENTE (S) FINANCIERO (S), emitir mensualmente un extracto de movimiento de su Cuenta de Caja de Ahorro, sin costo. ]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="288" width="450" height="30" forecolor="#192F57" uuid="75e179bf-93ae-4bda-ae19-f2e2630a4d12">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Dar aviso oportunamente y por escrito a <b>LA PROMOTORA EFV</b> sobre cualquier cambio de domicilio.]]></text>
			</staticText>
			<staticText>
				<reportElement x="70" y="208" width="450" height="18" forecolor="#192F57" uuid="0545a3cb-2eda-487b-b6ba-46b81bf2873d">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Otros derechos reconocidos por disposiciones legales y reglamentarias.]]></text>
			</staticText>
			<staticText>
				<reportElement x="70" y="195" width="450" height="20" forecolor="#192F57" uuid="4bb4787f-eb19-41bb-8961-0fece60c326b">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[A la terminación anticipada del presente contrato.]]></text>
			</staticText>
			<staticText>
				<reportElement x="70" y="169" width="450" height="16" forecolor="#192F57" uuid="8de05e09-f57c-46bc-ad82-333f4e9e5b4e">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[A la confidencialidad salvo excepciones contenidas en la Ley.]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="130" width="450" height="14" forecolor="#192F57" uuid="ebeda1c0-706c-4c4b-bb3f-289d0c54bed8">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Trato equitativo, sin discriminación por razones de edad, género, raza, religión o identidad cultural.]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="182" width="450" height="20" forecolor="#192F57" uuid="43185f99-aa4e-4ab5-baea-2416872c708c">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[A efectuar consultas, peticiones y solicitudes.]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="156" width="450" height="18" forecolor="#192F57" uuid="622bc9c8-44e9-4dfd-b0c4-89217801155c">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Formular reclamos a través de los canales correspondientes.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="489" width="480" height="20" forecolor="#192F57" uuid="1ab2e92f-199f-4aea-b3f3-454d82e341e9">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>P_localidad, P_FechaLiteral</b>.
]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="700" width="213" height="20" uuid="237a0913-c773-4553-8715-0efff778c8a3">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[_______________________________________]]></text>
			</staticText>
			<staticText>
				<reportElement x="305" y="700" width="213" height="20" uuid="c1a9002e-6e48-434e-a831-b5bff15a33fe">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[_______________________________________]]></text>
			</staticText>
			<image scaleImage="FillFrame">
				<reportElement x="42" y="607" width="212" height="97" uuid="47a9977a-bc04-4ce7-b1f6-97e88b4bcdd3">
					<property name="com.jaspersoft.studio.unit.width" value="px"/>
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<imageExpression><![CDATA["C:/opt/wildfly-24_onboard/standalone/deployments/files.war/images/signOneshot.png"]]></imageExpression>
			</image>
			<image scaleImage="FillFrame">
				<reportElement x="305" y="605" width="213" height="97" uuid="81cffdd3-b4df-4f59-8f77-75089db54d50">
					<property name="com.jaspersoft.studio.unit.width" value="px"/>
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<imageExpression><![CDATA["C:/opt/wildfly-24_onboard/standalone/deployments/files.war/images/signPromotora.png"]]></imageExpression>
			</image>
			<staticText>
				<reportElement x="40" y="733" width="214" height="20" forecolor="#192F57" uuid="8ab3fa19-0ca9-4496-83d6-9c24a5179d46">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[C.I. N° <b>P_numDocumento</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="714" width="214" height="20" forecolor="#192F57" uuid="24ee7f7b-0aa0-44f2-8a9e-c814093b1a37">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>P_NombreCliente</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="305" y="714" width="213" height="20" forecolor="#192F57" uuid="354e97ef-8e72-4cc3-a82a-9583422256bd">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>RAUL PABLO RODRIGUEZ SALAZAR</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="305" y="734" width="213" height="20" forecolor="#192F57" uuid="6ccfcc66-b464-4cf1-ae63-ce8a39d0cd22">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[C.I. N° <b>3754171 CB</b>]]></text>
			</staticText>
		</band>
		<band height="784">
			<staticText>
				<reportElement x="41" y="53" width="480" height="22" forecolor="#192F57" uuid="492fe0af-9a8d-4df7-a017-f7b964e1a09a">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<textElement textAlignment="Center">
					<font fontName="Verdana" size="11" isBold="true"/>
				</textElement>
				<text><![CDATA[PLAN DE TASA DE INTERÉS DIFERENCIADO “DINAMICA”]]></text>
			</staticText>
			<staticText>
				<reportElement x="42" y="80" width="476" height="17" forecolor="#192F57" uuid="38e47c09-c168-49e6-9f37-cf0648b43d04">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9"/>
				</textElement>
				<text><![CDATA[_______________________________________________________________________________________]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="107" width="480" height="50" forecolor="#192F57" uuid="787fd0c0-4c04-4a2d-b5c4-170bfd7db832">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Por el presente documento, el (los) CLIENTE (S) FINANCIERO (S) descrito (s) el contrato principal, de manera voluntaria manifiesta su voluntad de afiliar su CUENTA DE CAJA DE AHORRO a un plan de tasa de interés diferenciado, conforme las condiciones siguientes:]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="239" width="480" height="50" forecolor="#192F57" uuid="830d4bd7-68de-4f07-a29f-cac54c4d7a95">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>SEGUNDA. - OBJETO:</b> El (los) CLIENTE (S) FINANCIERO (S) de forma voluntaria solicita afiliar la cuenta descrita en la cláusula primera a la campaña con plan de tasa de interés diferenciado, bajo las condiciones estipuladas en el presente documento.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="149" width="480" height="56" forecolor="#192F57" uuid="210af5d8-6f54-4a7b-afd4-274ff38f78ce">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>PRIMERA. - ANTECEDENTES:</b> El (los) CLIENTE (S) FINANCIERO (S) a la fecha, mantiene(n) en <b>“LA PROMOTORA” E.F.V.</b> la cuenta de caja de ahorro en <b>P_tipo_moneda</b>  N°<b>P_cuentaCore</b>, misma que recibe un interés mensual de acuerdo a la tasa estipulada en Tarifario.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="364" width="480" height="60" forecolor="#192F57" uuid="b85ff860-c953-481e-acf3-284618efd9c6">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>CUARTA. - CONDICIONES:</b> Se deja claramente establecido que para acceder al beneficio de la campaña plan de tasa de interés diferenciado, el (los) CLIENTE (S) FINANCIERO (S) debe (n) tener abierta en <b>“LA PROMOTORA” E.F.V.</b>, a la fecha de suscripción del presente contrato, una cuenta de caja de ahorros en <b>P_tipo_moneda</b>.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="284" width="480" height="60" forecolor="#192F57" uuid="d6343f44-add3-4073-a136-b6974d0685ab">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>TERCERA. - PLAZO:</b> Se determina que la prestación del servicio, objeto del contrato es de plazo indefinido; sin embargo, las partes podrán establecer la terminación anticipada, conforme a lo previsto en el presente documento, Código de Comercio y normativa regulatoria de la Autoridad de Supervisión del Sistema Financiero (ASFI).]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="502" width="480" height="48" forecolor="#192F57" uuid="5d64a11e-8830-4587-8364-dea1f8fa0583">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>SEXTA.- CONFORMIDAD:</b> El (los) CLIENTE (S) FINANCIERO (S) expresamente manifiesta (n) su conformidad a las condiciones precedentes que le permiten beneficiarse con la tasa correspondiente al Plan de Ahorros al que se afilia.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="423" width="480" height="60" forecolor="#192F57" uuid="d0873f31-89bc-4297-9152-939453975362">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>QUINTA. - INTERÉS:</b> El interés a ser pagado por “LA PROMOTORA E.F.V.” a favor del (los) CLIENTE (S) FINANCIERO (S), dependerá de los saldos que éste mantuviera en la cuenta de caja de ahorro afiliada y del plan al que se encuentre afiliado, aplicando las tasas definidas en tarifario de <b>“LA PROMOTORA” E.F.V.</b> para cada plan de ahorros.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="193" width="480" height="50" forecolor="#192F57" uuid="2c3b02ec-870f-4dc6-8330-61eae42b2ae3">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>“LA PROMOTORA” E.F.V.</b>, mantiene distintos planes promocionales de tasa de interés que permiten al (a los) CLIENTE (S) FINANCIERO (S) tener un mayor interés y beneficios por sus ahorros, otorgando una tasa de interés mayor por un periodo de tiempo limitado y bajo determinadas condiciones.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="71" width="479" height="22" forecolor="#192F57" uuid="9b4324fc-d552-4057-afbe-c2c17eda9cdb">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<textElement textAlignment="Center">
					<font fontName="Verdana" size="11" isBold="true"/>
				</textElement>
				<text><![CDATA[ANEXO  I]]></text>
			</staticText>
			<staticText>
				<reportElement x="76" y="32" width="400" height="17" forecolor="#192F57" uuid="79f074e2-10af-4331-a5d9-75846ded764a">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9"/>
				</textElement>
				<text><![CDATA[_______________________________________________________________________]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="340" width="480" height="20" forecolor="#192F57" uuid="b2913405-0f8a-4bf1-be6f-7462b17f9f0b">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Las condiciones de tasa de interés diferenciado entran en vigor a partir de la afiliación. ]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="478" width="480" height="20" forecolor="#192F57" uuid="90e2f8f3-a371-4784-9bb2-ea4583d5b6ca">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[El interés será abonado de forma mensual sobre el saldo promedio al cierre del mes anterior al pago.]]></text>
			</staticText>
		</band>
		<band height="784">
			<staticText>
				<reportElement x="41" y="93" width="480" height="29" forecolor="#192F57" uuid="eaa234c4-69d6-4a3a-8a3b-7198180c37b8">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[La caja de ahorro <b>DINAMICA</b> ha sido creada con el objetivo de otorgar, Funcionalidad y digitalización de los servicios financieros, a jóvenes de 18 a 35 años.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="163" width="480" height="20" forecolor="#192F57" uuid="7ce8f01a-7ed3-44ee-b5dd-836d1bc523f2">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Tasa: 2%]]></text>
			</staticText>
			<staticText>
				<reportElement x="42" y="39" width="478" height="22" forecolor="#192F57" uuid="46174f46-bf7a-41cd-b8ea-248a71ba5537">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<textElement textAlignment="Center">
					<font fontName="Verdana" size="11" isBold="true"/>
				</textElement>
				<text><![CDATA[ANEXO  II]]></text>
			</staticText>
			<staticText>
				<reportElement x="81" y="18" width="400" height="17" forecolor="#192F57" uuid="53e863f9-f100-4fba-b5b5-41652134f453">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9"/>
				</textElement>
				<text><![CDATA[_______________________________________________________________________]]></text>
			</staticText>
			<staticText>
				<reportElement x="81" y="48" width="400" height="17" forecolor="#192F57" uuid="3ec84b02-ffe7-4baa-b74c-f52ec6cf3db9">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9"/>
				</textElement>
				<text><![CDATA[_______________________________________________________________________]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="73" width="480" height="19" forecolor="#192F57" uuid="b45b73ee-4607-4417-b0a8-559b7340f1c5">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>1.-ANTECEDENTES</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="128" width="480" height="19" forecolor="#192F57" uuid="b72c5460-c32b-4ceb-96f2-f79cb76f9d41">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>2.- CONDICIONES COMERCIALES</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="39" y="234" width="480" height="19" forecolor="#192F57" uuid="59a9ae4f-6378-406a-8f70-deb1b17572bc">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>3.-BENEFICIOS</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="331" width="480" height="19" forecolor="#192F57" uuid="303a9d1c-e92c-48d4-b404-53549a3054b0">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>4.- ASISTENCIAS</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="147" width="480" height="20" forecolor="#192F57" uuid="68d571e2-faf7-49f6-8bd4-9e61b07cbd86">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Caja de ahorro en bolivianos]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="180" width="480" height="20" forecolor="#192F57" uuid="84953fb7-347a-4010-ae7e-ef41feb9f844">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Monto mínimo de apertura: No hay monto mínimo.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="196" width="480" height="20" forecolor="#192F57" uuid="1048f501-7e3d-41bf-94d1-8c9eaaa56b77">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Pignoración: No hay pignoración.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="211" width="480" height="20" forecolor="#192F57" uuid="47733846-7a62-4e97-b559-804d10c38262">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Sin condiciones de retiros]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="252" width="480" height="20" forecolor="#192F57" uuid="5e3cce5b-5eae-4bbd-8580-054b239fea2b">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Compras por internet]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="266" width="480" height="20" forecolor="#192F57" uuid="b7799076-0799-4fad-84b3-35577a4f2d93">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Descuentos en comercios afiliados]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="280" width="480" height="20" forecolor="#192F57" uuid="9488c400-b9f8-4f86-8f20-8920c421657a">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Acceso a Tarjeta de crédito]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="294" width="480" height="20" forecolor="#192F57" uuid="5020f358-edcd-4d46-9364-eec4ea78708f">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Tarjeta de débito con todos sus beneficios]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="308" width="480" height="20" forecolor="#192F57" uuid="fe8b83c1-1fca-4e94-8053-b1fb30c13a06">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Acceso a banca digital]]></text>
			</staticText>
			<rectangle>
				<reportElement x="48" y="350" width="470" height="228" forecolor="#192F57" uuid="1fd18137-3e02-4952-b9e9-7761a1b11a31"/>
			</rectangle>
			<line>
				<reportElement x="309" y="351" width="1" height="227" forecolor="#192F57" uuid="f9b35ea2-af94-4070-aadc-a5e76abe943c"/>
			</line>
			<line>
				<reportElement x="48" y="368" width="470" height="1" forecolor="#192F57" uuid="df8e0083-cc4d-4b15-b8b4-7dde4025f9d8">
					<property name="com.jaspersoft.studio.unit.width" value="px"/>
				</reportElement>
			</line>
			<line>
				<reportElement x="48" y="415" width="470" height="1" forecolor="#192F57" uuid="7b68d580-1ca6-4ebc-bcf7-cccc4608973c">
					<property name="com.jaspersoft.studio.unit.width" value="px"/>
				</reportElement>
			</line>
			<line>
				<reportElement x="49" y="451" width="470" height="1" forecolor="#192F57" uuid="fccc6a9b-b6e4-4395-a778-a53655be3a6a">
					<property name="com.jaspersoft.studio.unit.width" value="px"/>
				</reportElement>
			</line>
			<line>
				<reportElement x="48" y="499" width="470" height="1" forecolor="#192F57" uuid="743b0853-3de2-4f66-995f-0fd4979980d9">
					<property name="com.jaspersoft.studio.unit.width" value="px"/>
				</reportElement>
			</line>
			<staticText>
				<reportElement x="60" y="355" width="184" height="19" forecolor="#192F57" uuid="eac98e97-d4f3-41d7-b9c7-9344a3427d33">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>SERVICIOS</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="322" y="353" width="184" height="19" forecolor="#192F57" uuid="b2cfa3ba-1bcd-4fe5-aab7-4e518b7dab51">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>TOPE DE USO</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="53" y="370" width="256" height="19" forecolor="#192F57" uuid="f143607c-2075-4295-9e34-0e1354332239">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Servicio consulta medico en línea – Telemedicina]]></text>
			</staticText>
			<staticText>
				<reportElement x="53" y="384" width="256" height="19" forecolor="#192F57" uuid="2907df43-65f1-45ca-8a5a-22ed73af39fc">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[(cobertura en Medina General, pediatría)]]></text>
			</staticText>
			<staticText>
				<reportElement x="53" y="398" width="256" height="19" forecolor="#192F57" uuid="553ffb39-ee0e-4e67-a7ac-0701eac99bf6">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[(Aplica titular + beneficiarios)]]></text>
			</staticText>
			<staticText>
				<reportElement x="53" y="418" width="256" height="19" forecolor="#192F57" uuid="2ed5c822-2bcf-4f78-bdd1-fc2221bd6a4f">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Servicio Consulta Nutricionista en línea Tele consulta]]></text>
			</staticText>
			<staticText>
				<reportElement x="53" y="455" width="256" height="19" forecolor="#192F57" uuid="fc495dd2-e835-4d2f-a62a-aa186d6038c4">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Servicio auxilio vial]]></text>
			</staticText>
			<staticText>
				<reportElement x="54" y="560" width="256" height="19" forecolor="#192F57" uuid="826862f9-d023-4213-ae1f-fb0a1a1ef9e5">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Servicio técnico de PC en línea -Teleasistencia]]></text>
			</staticText>
			<staticText>
				<reportElement x="54" y="502" width="256" height="19" forecolor="#192F57" uuid="e4fa11f3-2ece-48a9-bd87-a850d9326a03">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Consulta de Veterinaria en línea -Tele consulta]]></text>
			</staticText>
			<staticText>
				<reportElement x="54" y="519" width="256" height="19" forecolor="#192F57" uuid="5ed49835-f073-488c-b677-90cced99e833">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[(Cobertura para la mascota)]]></text>
			</staticText>
			<staticText>
				<reportElement x="54" y="536" width="256" height="19" forecolor="#192F57" uuid="5a134585-7992-4fa2-a7df-a2aeae111d2f">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[(aplica a solo animales domésticos)]]></text>
			</staticText>
			<staticText>
				<reportElement x="310" y="374" width="208" height="19" forecolor="#192F57" uuid="b4e1c34e-da90-4a84-ae99-9c8c55032f5a">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[2 veces al mes/Max. 24 consultas anuales]]></text>
			</staticText>
			<staticText>
				<reportElement x="310" y="417" width="208" height="19" forecolor="#192F57" uuid="31d63bb5-4ae7-4fe1-b279-a0dcf91008fd">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[6 eventos anuales]]></text>
			</staticText>
			<staticText>
				<reportElement x="310" y="452" width="208" height="19" forecolor="#192F57" uuid="10a781bb-1eca-4b64-a480-d3b5f230aced">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[1 vez al mes -12 eventos anuales]]></text>
			</staticText>
			<staticText>
				<reportElement x="310" y="559" width="208" height="19" forecolor="#192F57" uuid="082e0f65-9501-429c-9823-07346067f195">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[6 eventos anuales]]></text>
			</staticText>
			<staticText>
				<reportElement x="310" y="501" width="208" height="19" forecolor="#192F57" uuid="76e123c3-9962-4470-a6d0-f6bd8ecf13a3">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[6 eventos anuales]]></text>
			</staticText>
			<staticText>
				<reportElement x="53" y="435" width="256" height="19" forecolor="#192F57" uuid="d7de1e44-117c-497c-9e4e-c4bbef8f44d5">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[(Aplica solo titular)]]></text>
			</staticText>
			<line>
				<reportElement x="49" y="555" width="470" height="1" forecolor="#192F57" uuid="57abd796-a921-4c2f-95f0-fd3ab8bd6eb2">
					<property name="com.jaspersoft.studio.unit.width" value="px"/>
				</reportElement>
			</line>
			<staticText>
				<reportElement x="53" y="471" width="256" height="34" forecolor="#192F57" uuid="b324dd4e-5dc9-4def-a859-35586638d6dd">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[(cambio de llanta, cerrajería vehicular, paso corriente, envió combustible)]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="722" width="213" height="20" uuid="616c740f-907c-4ede-b72a-e0b9b774166c">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[_______________________________________]]></text>
			</staticText>
			<staticText>
				<reportElement x="305" y="722" width="213" height="20" uuid="c38c64c4-c12f-479b-8d24-cdbdf94fbd8b">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[_______________________________________]]></text>
			</staticText>
			<image scaleImage="FillFrame">
				<reportElement x="42" y="629" width="212" height="97" uuid="a6c5dfe5-192c-461f-8ad2-b01bd0a964bf">
					<property name="com.jaspersoft.studio.unit.width" value="px"/>
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<imageExpression><![CDATA["C:/opt/wildfly-24_onboard/standalone/deployments/files.war/images/signOneshot.png"]]></imageExpression>
			</image>
			<image scaleImage="FillFrame">
				<reportElement x="305" y="627" width="213" height="97" uuid="cf99b3e1-a057-4527-b4cf-56cafc7b4632">
					<property name="com.jaspersoft.studio.unit.width" value="px"/>
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<imageExpression><![CDATA["C:/opt/wildfly-24_onboard/standalone/deployments/files.war/images/signPromotora.png"]]></imageExpression>
			</image>
			<staticText>
				<reportElement x="40" y="755" width="214" height="20" forecolor="#192F57" uuid="88085d84-e04f-4193-afb7-6d468ce19e4f">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[C.I. N° <b>P_numDocumento</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="736" width="214" height="20" forecolor="#192F57" uuid="5296c906-d137-41c1-bc22-45902cf4e9f8">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>P_NombreCliente</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="305" y="736" width="213" height="20" forecolor="#192F57" uuid="003d1366-43ac-4d54-94ee-3dc807549a3b">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>RAUL PABLO RODRIGUEZ SALAZAR</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="305" y="756" width="213" height="20" forecolor="#192F57" uuid="6fd5f3f5-40b5-43c7-b100-3c4b4208df19">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[C.I. N° <b>3754171 CB</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="591" width="480" height="20" forecolor="#192F57" uuid="ba64c9ce-a80a-43f5-a52f-b204d4d0ab5f">
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
</jasperReport>
 * */