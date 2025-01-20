select *
from t_report
where report_id = 7;

UPDATE t_report
SET path_file = '<?xml version="1.0" encoding="UTF-8"?>
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
				<reportElement x="40" y="19" width="479" height="22" forecolor="#192F57" uuid="7118be18-c72f-4b60-afef-ccc1a85c7427">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<textElement textAlignment="Center">
					<font fontName="Verdana" size="11" isBold="true"/>
				</textElement>
				<text><![CDATA[CONTRATO DE CUENTA DE CAJA DE AHORRO]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="54" width="480" height="30" forecolor="#192F57" uuid="0cf72a30-09b8-4113-8f8c-b1a09d616c7b">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9"/>
				</textElement>
				<text><![CDATA[Conste por el presente documento privado, un contrato de prestación de servicios financieros de Cuenta de Caja de Ahorro, que se celebra de acuerdo a las siguientes cláusulas:]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="470" width="480" height="50" forecolor="#192F57" uuid="d1dff2af-0ec7-4262-81a9-14aa754b4cd2">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[En caso de que los depósitos se efectúen mediante cheque o cheques de otras entidades de intermediación financiera, el (los) CLIENTE (S) FINANCIERO (S) podrá (n) disponer de esos fondos una vez que se haya acreditado el abono en forma efectiva del importe del o los cheques en su cuenta de caja de ahorro.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="351" width="480" height="72" forecolor="#192F57" uuid="528bf2fa-a2da-4f07-bd59-ee4a77532fd2">
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
				<reportElement x="41" y="570" width="480" height="39" forecolor="#192F57" uuid="53f13ca2-d7af-4afc-9462-36498c7d8924">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>SEXTA: (ADMINISTRACIÓN DE LOS FONDOS)</b> El (los) CLIENTE (S) FINANCIERO (S) podrá (n) administrar los fondos de la cuenta de caja de ahorro a través de la libreta de caja de ahorro, la tarjeta de débito o mediante banca electrónica. ]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="517" width="480" height="50" forecolor="#192F57" uuid="b1ec3acc-29d7-4962-9f6d-7621faa787b0">
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
				<reportElement x="41" y="661" width="480" height="48" forecolor="#192F57" uuid="ae267f54-c7f6-4cec-8363-baa026109939">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>SEPTIMA: (INTERESES) LA PROMOTORA EFV</b> pagará al (a los) CLIENTE (S) FINANCIERO (S) por la cuenta de caja de ahorro, el interés anual, de acuerdo a tarifario y régimen de tasas de interés reguladas por el Órgano Ejecutivo del nivel central del Estado mediante Decreto Supremo.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="613" width="480" height="47" forecolor="#192F57" uuid="53b535ba-7c95-4ce8-bfb6-6612fc731b63">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Al momento de la apertura de la cuenta de cajas de ahorro y con el primer depósito, la EIF extenderá la libreta de ahorros a nombre del (de los) CLIENTE (S) FINANCIERO (S), que contendrá el Reglamento de Cuentas de Ahorro de <b>LA PROMOTORA EFV.</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="710" width="480" height="70" forecolor="#192F57" uuid="cef7c8ee-1c4b-4609-afb0-c09a228357c4">
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
				<reportElement x="41" y="426" width="480" height="40" forecolor="#192F57" uuid="5fa675cd-feaa-4081-8da4-ad8d887891af">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>CUARTA: (DEPÓSITOS)</b> El (los) CLIENTE (S) FINANCIERO (S) o terceras personas podrá (n) efectuar depósitos en la cuenta de caja de ahorro de forma sucesiva en puntos de atención financiero de <b>LA PROMOTORA EFV</b>, la cual generará en todos los casos la constancia del citado depósito.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="229" width="480" height="46" forecolor="#192F57" uuid="b93ab859-21f3-4359-84fd-7003693f5515">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[El (la) señor (a) <b>P_NombreCliente</b> con documento (s) de identificación N° <b>P_numDocumento</b> mayor (es) de edad y hábil (es) por derecho, en adelante CLIENTE (S) FINANCIERO (S).]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="264" width="480" height="90" forecolor="#192F57" uuid="2e7d678e-4b36-4dca-94eb-16e121ee891b">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>SEGUNDA:	(OBJETO DEL CONTRATO)</b> El presente contrato tiene por objeto establecer las condiciones sobre las cuales <b>LA PROMOTORA E.F.V.</b> prestará a favor del (de los) CLIENTE (S) FINANCIERO (S), el servicio de apertura, recepción y retiro de depósitos y administración de fondos de una cuenta de caja de ahorro en <b>P_tipo_moneda</b>, en puntos de atención financiero o a través de instrumentos electrónicos de pago o banca electrónica, conforme a disposiciones legales y reglamentarias vigentes así como reglamentos y procedimientos de <b>LA PROMOTORA EFV</b>.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="91" width="480" height="105" forecolor="#192F57" uuid="332e7deb-9382-4df7-a146-d7e7951c5b32">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>PRIMERA:           (PARTES)</b> Celebran el presente contrato, por una parte <b>LA PROMOTORA ENTIDAD FINANCIERA DE VIVIENDA,</b> con domicilio principal en la calle España No. S-0111 de la ciudad de Cochabamba, Número de Identificación Tributaria (NIT) No. 1009387022, con Licencia de Funcionamiento otorgada por la Autoridad de Supervisión del Sistema Financiero ASFI/051/2015 de fecha 18 de noviembre de 2015 y matrícula de comercio otorgada por Fundempresa No. 341747, representada legalmente por las firmas al pie del contrato, en mérito al Poder No. 102/2023, de fecha 16 de Marzo de 2023, otorgado ante la Notaria de Fe Pública No. 30, a cargo de la Dr (a). Maria del Carmen Montaño del Granado; en adelante se denominará <b>“LA PROMOTORA EFV”</b>.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="202" width="480" height="20" forecolor="#192F57" uuid="7e96f299-4adf-48c4-a488-4e925f849515">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Por otra parte,]]></text>
			</staticText>
		</band>
		<band height="757">
			<property name="com.jaspersoft.studio.unit.height" value="px"/>
			<staticText>
				<reportElement x="41" y="555" width="480" height="59" forecolor="#192F57" uuid="23cf44cb-dfc7-4423-aa3c-aa6fd6e98e18">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA QUINTA: (RETENCIÓN DE FONDOS)</b> En caso de que la Autoridad Competente  comunicará la orden de Autoridad Judicial o Administrativa para proceder a la retención de fondos del (de los) CLIENTE (S) FINANCIERO (S), <b>LA PROMOTORA EFV</b> procederá a dicha retención hasta el límite señalado en la orden respectiva conforme a reglamentación emitida por ASFI.]]></text>
			</staticText>
			<staticText>
				<reportElement x="74" y="134" width="445" height="30" forecolor="#192F57" uuid="22cb20ce-5176-4870-9cdb-97360186b421">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Comunicar de forma inmediata a <b>LA PROMOTORA EFV</b>, a través de los canales autorizados el extravío sustracción o robo de la (las) tarjetas.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="350" width="480" height="55" forecolor="#192F57" uuid="fec7f6fe-10f6-479a-909f-3c2fdeb26bd7">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA SEGUNDA: (ACREDITACIÓN ERRÓNEA)</b> En caso de que <b>LA PROMOTORA EFV</b>, acreditara erróneamente algún monto en la cuenta de Caja de Ahorro del (de los) CLIENTE (S) FINANCIERO (S), ésta podrá revertir el depósito, comunicando al (a los) CLIENTE (S) FINANCIERO (S) el débito efectuado y la razón que motivó el mismo.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="407" width="480" height="54" forecolor="#192F57" uuid="effe41ff-32f1-4d23-ba1e-b69ee46e47ef">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA TERCERA: (COMISIONES)</b> La apertura y administración de la cuenta de caja de ahorro no genera comisiones, salvo en el caso de excepción establecido en la Recopilación de Normas para Servicios Financieros.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="453" width="480" height="46" forecolor="#192F57" uuid="ff615f51-617f-4950-bdc2-979dc514b312">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA CUARTA: (CLAUSURA Y PRESCRIPCIÓN POR INACTIVIDAD)</b> De conformidad a lo establecido en el artículo 1369 del Código de Comercio, la cuenta de Caja de Ahorro inactiva por más de cinco años será clausurada comunicándose de forma escrita al (a los) CLIENTE (S) FINANCIERO (S) la disponibilidad de su saldo incluyendo el abono de los intereses ganados.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="503" width="480" height="50" forecolor="#192F57" uuid="3be6bc57-4401-4e03-bc35-5867cfd6ff88">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Si la Caja de Ahorro no registra movimiento alguno en el lapso de 10 años, contando desde el último depósito o retiro, los montos que se encontraban a disposición del (de los) CLIENTE (S) FINANCIERO (S) será (n) transferidos al Tesoro General de la Nación.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="616" width="480" height="60" forecolor="#192F57" uuid="516aef82-65e4-4d0d-9c90-a95cde456360">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA SEXTA (TERMINACIÓN ANTICIPADA)</b> <b>LA PROMOTORA EFV</b>, dará por terminado el presente  contrato por razones justificadas en sus políticas internas, así como por medidas de prevención en materia de legitimación de ganacías ilícitas, financiamiento al terrorismo y financiamiento de la proliferación de armas de destrucción masiva, debiendo comunicar sobre esta decisión al (a los) CLIENTE (S) FINANCIERO (S) con quince (15) días de anticipación.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="692" width="480" height="60" forecolor="#192F57" uuid="60a15ba3-f4d2-4854-9548-2ffe8c91f474">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Por otra parte, el (los) CLIENTE (S) FINANCIERO (S), podrá (n) solicitar a <b>LA PROMOTORA EFV</b> la conclusión del contrato de forma expresa, debiendo la entidad poner a su disposición el saldo de su cuenta, salvo que existan restricciones normativas o de orden legal dispuestas por autoridad competente.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="289" width="480" height="60" forecolor="#192F57" uuid="e9d74ef8-6f2b-4ad0-90ef-056de7bb9e81">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA PRIMERA: (INEMBARGABILIDAD DE CAJAS DE AHORRO DE PERSONAS NATURALES Y LÍMITE DE TAL EFECTO)</b> Los fondos depositados en la cuenta de caja de ahorro serán inembargables, hasta el monto establecido de acuerdo a normativa regulatoria vigente. Dicho límite no alcanza a las obligaciones alimenticias.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="10" width="480" height="50" forecolor="#192F57" uuid="47b82250-e77f-416b-88bc-60cb6a8657c3">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>OCTAVA:	(CAPITALIZACIÓN DE INTERESES)</b> Los intereses serán capitalizables según la periodicidad establecida en el Reglamento de Cajas de Ahorro de <b>LA PROMOTORA EFV</b> aprobado por ASFI y disposiciones legales vigentes.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="54" width="480" height="31" forecolor="#192F57" uuid="53b9c04f-4e62-4731-99ab-6e9208647b57">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>NOVENA: (SERVICIOS ADICIONALES)</b> El (los) CLIENTE (S) FINANCIERO (S) por el acceso a la utilización de tarjetas de débito y banca electrónica, debe (n):]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="237" width="480" height="49" forecolor="#192F57" uuid="c99c6746-281e-4537-8ee0-0ed139580318">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA: (MODIFICACIONES UNILATERALES) LA PROMOTORA EFV</b>, no puede modificar unilateralmente los términos y condiciones pactadas en el presente contrato, salvo que dicha modificación beneficie al (a los) CLIENTE (S) FINANCIERO (S).]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="195" width="480" height="36" forecolor="#192F57" uuid="efdd9c6d-a121-4af0-977f-cb56845512ca">
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
				<reportElement x="74" y="84" width="445" height="30" forecolor="#192F57" uuid="1dbcba3d-e7c7-4e72-bafa-2ce3d5bb79f2">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Pagar la tarifa establecida por la emisión de nuevas tarjetas en caso de extravío, sustracción, robo o emisión de tarjetas adicionales.]]></text>
			</staticText>
			<staticText>
				<reportElement x="74" y="114" width="445" height="20" forecolor="#192F57" uuid="9ed6c3f0-9873-4cfb-b553-2f24008940b8">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Asumir la responsabilidad por el uso del código de identificación personal (PIN) de la (s) tarjeta (s).]]></text>
			</staticText>
			<staticText>
				<reportElement x="74" y="164" width="446" height="28" forecolor="#192F57" uuid="1c282b29-129e-4474-99b6-bfa845552ebd">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Utilizar su código de identificación personal (PIN) o códigos fijados por <b>LA PROMOTORA E.F.V.</b>, para consultar la información relativa a sus cuentas de cajas de ahorro.]]></text>
			</staticText>
			<staticText>
				<reportElement x="42" y="114" width="30" height="13" forecolor="#192F57" uuid="1cdbbda3-cbef-4694-a4f6-c3444bd5553c">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[b)]]></text>
			</staticText>
			<staticText>
				<reportElement x="42" y="164" width="30" height="13" forecolor="#192F57" uuid="628505e6-8e7c-4f2c-a85a-e67e1a5d7a2c">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[d)]]></text>
			</staticText>
			<staticText>
				<reportElement x="42" y="134" width="30" height="13" forecolor="#192F57" uuid="cd112b10-7b15-4942-aa89-32bed77f1bc1">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[c)]]></text>
			</staticText>
			<staticText>
				<reportElement x="42" y="86" width="30" height="13" forecolor="#192F57" uuid="a363b1f6-90f0-47eb-83f4-2e50d22d59a7">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[a)]]></text>
			</staticText>
		</band>
		<band height="765">
			<property name="com.jaspersoft.studio.unit.height" value="px"/>
			<staticText>
				<reportElement x="40" y="16" width="480" height="50" forecolor="#192F57" uuid="1bbedb16-c15e-4389-8076-2fadda73bf52">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA SEPTIMA: (FALLECIMIENTO)</b> En caso de fallecimiento del (de los) CLIENTE (S) FINANCIERO (S) los herederos podrán disponer de los fondos existentes previa presentación de la declaratoria de herederos.]]></text>
			</staticText>
			<staticText>
				<reportElement x="70" y="265" width="450" height="62" forecolor="#192F57" uuid="d1daaccd-b422-4c6f-9e27-d11c7f0bf658">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Proporcionar la información requerida por <b>LA PROMOTORA EFV</b> en cumplimiento a lo establecido por la Unidad de Investigación Financiera UIF.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="275" width="30" height="20" forecolor="#192F57" uuid="7980b6a2-0ac7-4485-a7e3-dfd437413f0c">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[a)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="298" width="30" height="20" forecolor="#192F57" uuid="91e4c45a-1e9f-4f8a-88a6-1e9ce54c56c5">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[b)]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="159" width="450" height="20" forecolor="#192F57" uuid="2a84f14e-1c49-44b3-8852-b0b194a2ab71">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[A recibir información fidedigna, amplia, íntegra, clara, comprensible, oportuna y accesible.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="145" width="30" height="13" forecolor="#192F57" uuid="9d0bdb9b-7bdf-4ffc-aa19-b7b550be1e77">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[a)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="158" width="30" height="13" forecolor="#192F57" uuid="5bf5fc1b-4101-410a-bf6d-c20b92868371">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[b)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="171" width="30" height="13" forecolor="#192F57" uuid="0f3f57b1-cc6b-41f2-94ec-909812a7c519">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[c)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="184" width="30" height="13" forecolor="#192F57" uuid="585c13a8-26a6-4d48-a64a-6b5e4ffec751">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[d)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="197" width="30" height="13" forecolor="#192F57" uuid="24ee09b6-c63a-4e1a-8af1-475934f38425">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[e)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="210" width="30" height="13" forecolor="#192F57" uuid="7e195614-c03e-4528-8554-da0d70a3040a">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[f)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="223" width="30" height="13" forecolor="#192F57" uuid="d0fc2f0c-030c-49b8-ad52-94f1964e4e51">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[g)]]></text>
			</staticText>
			<staticText>
				<reportElement x="72" y="359" width="450" height="32" forecolor="#192F57" uuid="fe184ab4-6298-44d1-8b15-712bf4b20dbd">
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
				<reportElement x="41" y="413" width="30" height="13" forecolor="#192F57" uuid="9f7843fb-84e0-4c7e-95d4-530d6fdd0436">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[c)]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="359" width="30" height="13" forecolor="#192F57" uuid="0fa4a93d-4431-4d89-be63-1034921dc5db">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[a)]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="386" width="30" height="13" forecolor="#192F57" uuid="a658c405-2464-4979-9b43-e82a75b3550e">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[b)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="250" width="480" height="24" forecolor="#192F57" uuid="fe6fc9e8-60bd-44b9-ab1a-bbd88a6d686f">
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
				<reportElement x="41" y="340" width="480" height="20" forecolor="#192F57" uuid="22af746a-8466-4d09-adbb-faf2098583eb">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>VIGÉSIMA PRIMERA: (OBLIGACIONES DE LA PROMOTORA EFV)</b> Son las siguientes:]]></text>
			</staticText>
			<staticText>
				<reportElement x="42" y="455" width="480" height="59" forecolor="#192F57" uuid="99393f4c-0ce4-493d-af66-06856f78627f">
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
				<reportElement x="40" y="65" width="480" height="40" forecolor="#192F57" uuid="ed0a6cc3-b4d4-4c0a-94bd-10301d6c2200">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA OCTAVA: (DOMICILIO ESPECIAL)</b> Todo aviso, notificación y en general toda comunicación escrita emitida por LA PROMOTORA EFV, será remitida a la última dirección que esté registrada en <b>LA PROMOTORA EFV</b>.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="110" width="480" height="34" forecolor="#192F57" uuid="ac8f7cb7-38da-4eda-98f0-3c58a9b46f30">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA NOVENA: (DERECHOS DEL CLIENTE FINANCIERO)</b> El (Los) CLIENTE (S) FINANCIERO (S) tienen derecho a:]]></text>
			</staticText>
			<staticText>
				<reportElement x="72" y="386" width="450" height="28" forecolor="#192F57" uuid="e4d215d2-6f1c-47cc-9dd3-7e3b94dccb66">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[A requerimiento de la UIF, recabar y entregar información sobre las actividades comerciales y financieras del (de los) CLIENTE (S) FINANCIERO (S).]]></text>
			</staticText>
			<staticText>
				<reportElement x="72" y="413" width="450" height="30" forecolor="#192F57" uuid="2cfc172f-b885-4820-bb75-4107081193bb">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[A solicitud del (de los) CLIENTE (S) FINANCIERO (S), emitir mensualmente un extracto de movimiento de su Cuenta de Caja de Ahorro, sin costo. ]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="297" width="450" height="30" forecolor="#192F57" uuid="78319bb3-231c-4b37-8196-053c4f1633fe">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Dar aviso oportunamente y por escrito a <b>LA PROMOTORA EFV</b> sobre cualquier cambio de domicilio.]]></text>
			</staticText>
			<staticText>
				<reportElement x="70" y="223" width="450" height="18" forecolor="#192F57" uuid="35620dc9-9dcf-40d7-a918-8ac7ec81ca8c">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Otros derechos reconocidos por disposiciones legales y reglamentarias.]]></text>
			</staticText>
			<staticText>
				<reportElement x="70" y="210" width="450" height="20" forecolor="#192F57" uuid="117d8534-7838-4418-86d5-b611eeb43bce">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[A la terminación anticipada del presente contrato.]]></text>
			</staticText>
			<staticText>
				<reportElement x="70" y="184" width="450" height="16" forecolor="#192F57" uuid="94b9f1cf-5da4-465b-bd47-b497b7047d67">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[A la confidencialidad salvo excepciones contenidas en la Ley.]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="145" width="450" height="14" forecolor="#192F57" uuid="63e488d6-faef-44d8-80ae-7271402abdf0">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Trato equitativo, sin discriminación por razones de edad, género, raza, religión o identidad cultural.]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="197" width="450" height="20" forecolor="#192F57" uuid="d8c46a61-98ab-4630-b5cc-a1f0e526f683">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[A efectuar consultas, peticiones y solicitudes.]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="171" width="450" height="18" forecolor="#192F57" uuid="fbc9704c-1758-441e-b285-91bb0c116c35">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Formular reclamos a través de los canales correspondientes.]]></text>
			</staticText>
			<staticText>
				<reportElement x="42" y="500" width="480" height="20" forecolor="#192F57" uuid="cb92eaa3-8e5e-4f5d-8c05-b8c10058b543">
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
				<reportElement x="41" y="705" width="213" height="20" forecolor="#192F57" uuid="05917f46-48e3-49b5-9bc8-f36893aa2efe">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[_______________________________________]]></text>
			</staticText>
			<staticText>
				<reportElement x="306" y="705" width="213" height="20" forecolor="#192F57" uuid="dc2114fd-cd56-4874-9779-b30ee8cbf9d8">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[_______________________________________]]></text>
			</staticText>
			<staticText>
				<reportElement x="306" y="718" width="213" height="20" forecolor="#192F57" uuid="b5d4fb74-bd59-4e41-8164-6d2fa1627736">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>RAUL PABLO RODRIGUEZ SALAZAR</b>]]></text>
			</staticText>
			<image scaleImage="FillFrame">
				<reportElement x="41" y="612" width="213" height="97" uuid="ec561d81-b940-4936-a99c-e5bc5643c567">
					<property name="com.jaspersoft.studio.unit.width" value="px"/>
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<imageExpression><![CDATA["C:/opt/wildfly-24_onboard/standalone/deployments/files.war/images/signOneshot.png"]]></imageExpression>
			</image>
			<image scaleImage="FillFrame">
				<reportElement x="306" y="610" width="213" height="97" uuid="456d20d0-8959-46de-a971-f81b5067deec">
					<property name="com.jaspersoft.studio.unit.width" value="px"/>
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<imageExpression><![CDATA["C:/opt/wildfly-24_onboard/standalone/deployments/files.war/images/signPromotora.png"]]></imageExpression>
			</image>
			<staticText>
				<reportElement x="40" y="737" width="214" height="20" forecolor="#192F57" uuid="ed2ee606-7d51-4abf-b040-7173df07c3fc">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[C.I. N° <b>P_numDocumento</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="718" width="214" height="20" forecolor="#192F57" uuid="4b98d8c4-ed10-46e4-adb5-9772ab272913">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>P_NombreCliente</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="306" y="738" width="213" height="20" forecolor="#192F57" uuid="32b86dd2-4fea-4c5a-84cb-63988c3286bd">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[C.I. N° <b>3754171 CB</b>]]></text>
			</staticText>
		</band>
	</detail>
	<pageFooter>
		<band height="4"/>
	</pageFooter>
</jasperReport>'
where report_id = 7;




udpate
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
				<reportElement x="40" y="19" width="479" height="22" forecolor="#192F57" uuid="7118be18-c72f-4b60-afef-ccc1a85c7427">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<textElement textAlignment="Center">
					<font fontName="Verdana" size="11" isBold="true"/>
				</textElement>
				<text><![CDATA[CONTRATO DE CUENTA DE CAJA DE AHORRO]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="54" width="480" height="30" forecolor="#192F57" uuid="0cf72a30-09b8-4113-8f8c-b1a09d616c7b">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9"/>
				</textElement>
				<text><![CDATA[Conste por el presente documento privado, un contrato de prestación de servicios financieros de Cuenta de Caja de Ahorro, que se celebra de acuerdo a las siguientes cláusulas:]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="470" width="480" height="50" forecolor="#192F57" uuid="d1dff2af-0ec7-4262-81a9-14aa754b4cd2">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[En caso de que los depósitos se efectúen mediante cheque o cheques de otras entidades de intermediación financiera, el (los) CLIENTE (S) FINANCIERO (S) podrá (n) disponer de esos fondos una vez que se haya acreditado el abono en forma efectiva del importe del o los cheques en su cuenta de caja de ahorro.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="351" width="480" height="72" forecolor="#192F57" uuid="528bf2fa-a2da-4f07-bd59-ee4a77532fd2">
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
				<reportElement x="41" y="570" width="480" height="39" forecolor="#192F57" uuid="53f13ca2-d7af-4afc-9462-36498c7d8924">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>SEXTA: (ADMINISTRACIÓN DE LOS FONDOS)</b> El (los) CLIENTE (S) FINANCIERO (S) podrá (n) administrar los fondos de la cuenta de caja de ahorro a través de la libreta de caja de ahorro, la tarjeta de débito o mediante banca electrónica. ]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="517" width="480" height="50" forecolor="#192F57" uuid="b1ec3acc-29d7-4962-9f6d-7621faa787b0">
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
				<reportElement x="41" y="661" width="480" height="48" forecolor="#192F57" uuid="ae267f54-c7f6-4cec-8363-baa026109939">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>SEPTIMA: (INTERESES) LA PROMOTORA EFV</b> pagará al (a los) CLIENTE (S) FINANCIERO (S) por la cuenta de caja de ahorro, el interés anual, de acuerdo a tarifario y régimen de tasas de interés reguladas por el Órgano Ejecutivo del nivel central del Estado mediante Decreto Supremo.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="613" width="480" height="47" forecolor="#192F57" uuid="53b535ba-7c95-4ce8-bfb6-6612fc731b63">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Al momento de la apertura de la cuenta de cajas de ahorro y con el primer depósito, la EIF extenderá la libreta de ahorros a nombre del (de los) CLIENTE (S) FINANCIERO (S), que contendrá el Reglamento de Cuentas de Ahorro de <b>LA PROMOTORA EFV.</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="710" width="480" height="70" forecolor="#192F57" uuid="cef7c8ee-1c4b-4609-afb0-c09a228357c4">
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
				<reportElement x="41" y="426" width="480" height="40" forecolor="#192F57" uuid="5fa675cd-feaa-4081-8da4-ad8d887891af">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>CUARTA: (DEPÓSITOS)</b> El (los) CLIENTE (S) FINANCIERO (S) o terceras personas podrá (n) efectuar depósitos en la cuenta de caja de ahorro de forma sucesiva en puntos de atención financiero de <b>LA PROMOTORA EFV</b>, la cual generará en todos los casos la constancia del citado depósito.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="229" width="480" height="46" forecolor="#192F57" uuid="b93ab859-21f3-4359-84fd-7003693f5515">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[El (la) señor (a) <b>P_NombreCliente</b> con documento (s) de identificación N° <b>P_numDocumento</b> mayor (es) de edad y hábil (es) por derecho, en adelante CLIENTE (S) FINANCIERO (S).]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="264" width="480" height="90" forecolor="#192F57" uuid="2e7d678e-4b36-4dca-94eb-16e121ee891b">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>SEGUNDA:	(OBJETO DEL CONTRATO)</b> El presente contrato tiene por objeto establecer las condiciones sobre las cuales <b>LA PROMOTORA E.F.V.</b> prestará a favor del (de los) CLIENTE (S) FINANCIERO (S), el servicio de apertura, recepción y retiro de depósitos y administración de fondos de una cuenta de caja de ahorro en <b>P_tipo_moneda</b>, en puntos de atención financiero o a través de instrumentos electrónicos de pago o banca electrónica, conforme a disposiciones legales y reglamentarias vigentes así como reglamentos y procedimientos de <b>LA PROMOTORA EFV</b>.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="91" width="480" height="105" forecolor="#192F57" uuid="332e7deb-9382-4df7-a146-d7e7951c5b32">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>PRIMERA:           (PARTES)</b> Celebran el presente contrato, por una parte <b>LA PROMOTORA ENTIDAD FINANCIERA DE VIVIENDA,</b> con domicilio principal en la calle España No. S-0111 de la ciudad de Cochabamba, Número de Identificación Tributaria (NIT) No. 1009387022, con Licencia de Funcionamiento otorgada por la Autoridad de Supervisión del Sistema Financiero ASFI/051/2015 de fecha 18 de noviembre de 2015 y matrícula de comercio otorgada por Fundempresa No. 341747, representada legalmente por las firmas al pie del contrato, en mérito al Poder No. 93/2020, de fecha 18 de febrero de 2020, otorgado ante la Notaria de Fe Pública No. 30, a cargo de la Dr (a). Maria del Carmen Montaño del Granado; en adelante se denominará <b>“LA PROMOTORA EFV”</b>.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="202" width="480" height="20" forecolor="#192F57" uuid="7e96f299-4adf-48c4-a488-4e925f849515">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Por otra parte,]]></text>
			</staticText>
		</band>
		<band height="757">
			<property name="com.jaspersoft.studio.unit.height" value="px"/>
			<staticText>
				<reportElement x="41" y="555" width="480" height="59" forecolor="#192F57" uuid="23cf44cb-dfc7-4423-aa3c-aa6fd6e98e18">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA QUINTA: (RETENCIÓN DE FONDOS)</b> En caso de que la Autoridad Competente  comunicará la orden de Autoridad Judicial o Administrativa para proceder a la retención de fondos del (de los) CLIENTE (S) FINANCIERO (S), <b>LA PROMOTORA EFV</b> procederá a dicha retención hasta el límite señalado en la orden respectiva conforme a reglamentación emitida por ASFI.]]></text>
			</staticText>
			<staticText>
				<reportElement x="74" y="134" width="445" height="30" forecolor="#192F57" uuid="22cb20ce-5176-4870-9cdb-97360186b421">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Comunicar de forma inmediata a <b>LA PROMOTORA EFV</b>, a través de los canales autorizados el extravío sustracción o robo de la (las) tarjetas.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="350" width="480" height="55" forecolor="#192F57" uuid="fec7f6fe-10f6-479a-909f-3c2fdeb26bd7">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA SEGUNDA: (ACREDITACIÓN ERRÓNEA)</b> En caso de que <b>LA PROMOTORA EFV</b>, acreditara erróneamente algún monto en la cuenta de Caja de Ahorro del (de los) CLIENTE (S) FINANCIERO (S), ésta podrá revertir el depósito, comunicando al (a los) CLIENTE (S) FINANCIERO (S) el débito efectuado y la razón que motivó el mismo.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="407" width="480" height="54" forecolor="#192F57" uuid="effe41ff-32f1-4d23-ba1e-b69ee46e47ef">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA TERCERA: (COMISIONES)</b> La apertura y administración de la cuenta de caja de ahorro no genera comisiones, salvo en el caso de excepción establecido en la Recopilación de Normas para Servicios Financieros.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="453" width="480" height="46" forecolor="#192F57" uuid="ff615f51-617f-4950-bdc2-979dc514b312">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA CUARTA: (CLAUSURA Y PRESCRIPCIÓN POR INACTIVIDAD)</b> De conformidad a lo establecido en el artículo 1369 del Código de Comercio, la cuenta de Caja de Ahorro inactiva por más de cinco años será clausurada comunicándose de forma escrita al (a los) CLIENTE (S) FINANCIERO (S) la disponibilidad de su saldo incluyendo el abono de los intereses ganados.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="503" width="480" height="50" forecolor="#192F57" uuid="3be6bc57-4401-4e03-bc35-5867cfd6ff88">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Si la Caja de Ahorro no registra movimiento alguno en el lapso de 10 años, contando desde el último depósito o retiro, los montos que se encontraban a disposición del (de los) CLIENTE (S) FINANCIERO (S) será (n) transferidos al Tesoro General de la Nación.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="616" width="480" height="60" forecolor="#192F57" uuid="516aef82-65e4-4d0d-9c90-a95cde456360">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA SEXTA (TERMINACIÓN ANTICIPADA)</b> <b>LA PROMOTORA EFV</b>, dará por terminado el presente  contrato por razones justificadas en sus políticas internas, así como por medidas de prevención en materia de legitimación de ganacías ilícitas, financiamiento al terrorismo y financiamiento de la proliferación de armas de destrucción masiva, debiendo comunicar sobre esta decisión al (a los) CLIENTE (S) FINANCIERO (S) con quince (15) días de anticipación.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="692" width="480" height="60" forecolor="#192F57" uuid="60a15ba3-f4d2-4854-9548-2ffe8c91f474">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Por otra parte, el (los) CLIENTE (S) FINANCIERO (S), podrá (n) solicitar a <b>LA PROMOTORA EFV</b> la conclusión del contrato de forma expresa, debiendo la entidad poner a su disposición el saldo de su cuenta, salvo que existan restricciones normativas o de orden legal dispuestas por autoridad competente.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="289" width="480" height="60" forecolor="#192F57" uuid="e9d74ef8-6f2b-4ad0-90ef-056de7bb9e81">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA PRIMERA: (INEMBARGABILIDAD DE CAJAS DE AHORRO DE PERSONAS NATURALES Y LÍMITE DE TAL EFECTO)</b> Los fondos depositados en la cuenta de caja de ahorro serán inembargables, hasta el monto establecido de acuerdo a normativa regulatoria vigente. Dicho límite no alcanza a las obligaciones alimenticias.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="10" width="480" height="50" forecolor="#192F57" uuid="47b82250-e77f-416b-88bc-60cb6a8657c3">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>OCTAVA:	(CAPITALIZACIÓN DE INTERESES)</b> Los intereses serán capitalizables según la periodicidad establecida en el Reglamento de Cajas de Ahorro de <b>LA PROMOTORA EFV</b> aprobado por ASFI y disposiciones legales vigentes.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="54" width="480" height="31" forecolor="#192F57" uuid="53b9c04f-4e62-4731-99ab-6e9208647b57">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>NOVENA: (SERVICIOS ADICIONALES)</b> El (los) CLIENTE (S) FINANCIERO (S) por el acceso a la utilización de tarjetas de débito y banca electrónica, debe (n):]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="237" width="480" height="49" forecolor="#192F57" uuid="c99c6746-281e-4537-8ee0-0ed139580318">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA: (MODIFICACIONES UNILATERALES) LA PROMOTORA EFV</b>, no puede modificar unilateralmente los términos y condiciones pactadas en el presente contrato, salvo que dicha modificación beneficie al (a los) CLIENTE (S) FINANCIERO (S).]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="195" width="480" height="36" forecolor="#192F57" uuid="efdd9c6d-a121-4af0-977f-cb56845512ca">
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
				<reportElement x="74" y="84" width="445" height="30" forecolor="#192F57" uuid="1dbcba3d-e7c7-4e72-bafa-2ce3d5bb79f2">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Pagar la tarifa establecida por la emisión de nuevas tarjetas en caso de extravío, sustracción, robo o emisión de tarjetas adicionales.]]></text>
			</staticText>
			<staticText>
				<reportElement x="74" y="114" width="445" height="20" forecolor="#192F57" uuid="9ed6c3f0-9873-4cfb-b553-2f24008940b8">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Asumir la responsabilidad por el uso del código de identificación personal (PIN) de la (s) tarjeta (s).]]></text>
			</staticText>
			<staticText>
				<reportElement x="74" y="164" width="446" height="28" forecolor="#192F57" uuid="1c282b29-129e-4474-99b6-bfa845552ebd">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Utilizar su código de identificación personal (PIN) o códigos fijados por <b>LA PROMOTORA E.F.V.</b>, para consultar la información relativa a sus cuentas de cajas de ahorro.]]></text>
			</staticText>
			<staticText>
				<reportElement x="42" y="114" width="30" height="13" forecolor="#192F57" uuid="1cdbbda3-cbef-4694-a4f6-c3444bd5553c">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[b)]]></text>
			</staticText>
			<staticText>
				<reportElement x="42" y="164" width="30" height="13" forecolor="#192F57" uuid="628505e6-8e7c-4f2c-a85a-e67e1a5d7a2c">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[d)]]></text>
			</staticText>
			<staticText>
				<reportElement x="42" y="134" width="30" height="13" forecolor="#192F57" uuid="cd112b10-7b15-4942-aa89-32bed77f1bc1">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[c)]]></text>
			</staticText>
			<staticText>
				<reportElement x="42" y="86" width="30" height="13" forecolor="#192F57" uuid="a363b1f6-90f0-47eb-83f4-2e50d22d59a7">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[a)]]></text>
			</staticText>
		</band>
		<band height="765">
			<property name="com.jaspersoft.studio.unit.height" value="px"/>
			<staticText>
				<reportElement x="40" y="16" width="480" height="50" forecolor="#192F57" uuid="1bbedb16-c15e-4389-8076-2fadda73bf52">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA SEPTIMA: (FALLECIMIENTO)</b> En caso de fallecimiento del (de los) CLIENTE (S) FINANCIERO (S) los herederos podrán disponer de los fondos existentes previa presentación de la declaratoria de herederos.]]></text>
			</staticText>
			<staticText>
				<reportElement x="70" y="265" width="450" height="62" forecolor="#192F57" uuid="d1daaccd-b422-4c6f-9e27-d11c7f0bf658">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Proporcionar la información requerida por <b>LA PROMOTORA EFV</b> en cumplimiento a lo establecido por la Unidad de Investigación Financiera UIF.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="275" width="30" height="20" forecolor="#192F57" uuid="7980b6a2-0ac7-4485-a7e3-dfd437413f0c">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[a)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="298" width="30" height="20" forecolor="#192F57" uuid="91e4c45a-1e9f-4f8a-88a6-1e9ce54c56c5">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[b)]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="159" width="450" height="20" forecolor="#192F57" uuid="2a84f14e-1c49-44b3-8852-b0b194a2ab71">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[A recibir información fidedigna, amplia, íntegra, clara, comprensible, oportuna y accesible.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="145" width="30" height="13" forecolor="#192F57" uuid="9d0bdb9b-7bdf-4ffc-aa19-b7b550be1e77">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[a)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="158" width="30" height="13" forecolor="#192F57" uuid="5bf5fc1b-4101-410a-bf6d-c20b92868371">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[b)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="171" width="30" height="13" forecolor="#192F57" uuid="0f3f57b1-cc6b-41f2-94ec-909812a7c519">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[c)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="184" width="30" height="13" forecolor="#192F57" uuid="585c13a8-26a6-4d48-a64a-6b5e4ffec751">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[d)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="197" width="30" height="13" forecolor="#192F57" uuid="24ee09b6-c63a-4e1a-8af1-475934f38425">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[e)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="210" width="30" height="13" forecolor="#192F57" uuid="7e195614-c03e-4528-8554-da0d70a3040a">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[f)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="223" width="30" height="13" forecolor="#192F57" uuid="d0fc2f0c-030c-49b8-ad52-94f1964e4e51">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[g)]]></text>
			</staticText>
			<staticText>
				<reportElement x="72" y="359" width="450" height="32" forecolor="#192F57" uuid="fe184ab4-6298-44d1-8b15-712bf4b20dbd">
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
				<reportElement x="41" y="413" width="30" height="13" forecolor="#192F57" uuid="9f7843fb-84e0-4c7e-95d4-530d6fdd0436">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[c)]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="359" width="30" height="13" forecolor="#192F57" uuid="0fa4a93d-4431-4d89-be63-1034921dc5db">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[a)]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="386" width="30" height="13" forecolor="#192F57" uuid="a658c405-2464-4979-9b43-e82a75b3550e">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[b)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="250" width="480" height="24" forecolor="#192F57" uuid="fe6fc9e8-60bd-44b9-ab1a-bbd88a6d686f">
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
				<reportElement x="41" y="340" width="480" height="20" forecolor="#192F57" uuid="22af746a-8466-4d09-adbb-faf2098583eb">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>VIGÉSIMA PRIMERA: (OBLIGACIONES DE LA PROMOTORA EFV)</b> Son las siguientes:]]></text>
			</staticText>
			<staticText>
				<reportElement x="42" y="455" width="480" height="59" forecolor="#192F57" uuid="99393f4c-0ce4-493d-af66-06856f78627f">
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
				<reportElement x="40" y="65" width="480" height="40" forecolor="#192F57" uuid="ed0a6cc3-b4d4-4c0a-94bd-10301d6c2200">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA OCTAVA: (DOMICILIO ESPECIAL)</b> Todo aviso, notificación y en general toda comunicación escrita emitida por LA PROMOTORA EFV, será remitida a la última dirección que esté registrada en <b>LA PROMOTORA EFV</b>.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="110" width="480" height="34" forecolor="#192F57" uuid="ac8f7cb7-38da-4eda-98f0-3c58a9b46f30">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA NOVENA: (DERECHOS DEL CLIENTE FINANCIERO)</b> El (Los) CLIENTE (S) FINANCIERO (S) tienen derecho a:]]></text>
			</staticText>
			<staticText>
				<reportElement x="72" y="386" width="450" height="28" forecolor="#192F57" uuid="e4d215d2-6f1c-47cc-9dd3-7e3b94dccb66">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[A requerimiento de la UIF, recabar y entregar información sobre las actividades comerciales y financieras del (de los) CLIENTE (S) FINANCIERO (S).]]></text>
			</staticText>
			<staticText>
				<reportElement x="72" y="413" width="450" height="30" forecolor="#192F57" uuid="2cfc172f-b885-4820-bb75-4107081193bb">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[A solicitud del (de los) CLIENTE (S) FINANCIERO (S), emitir mensualmente un extracto de movimiento de su Cuenta de Caja de Ahorro, sin costo. ]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="297" width="450" height="30" forecolor="#192F57" uuid="78319bb3-231c-4b37-8196-053c4f1633fe">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Dar aviso oportunamente y por escrito a <b>LA PROMOTORA EFV</b> sobre cualquier cambio de domicilio.]]></text>
			</staticText>
			<staticText>
				<reportElement x="70" y="223" width="450" height="18" forecolor="#192F57" uuid="35620dc9-9dcf-40d7-a918-8ac7ec81ca8c">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Otros derechos reconocidos por disposiciones legales y reglamentarias.]]></text>
			</staticText>
			<staticText>
				<reportElement x="70" y="210" width="450" height="20" forecolor="#192F57" uuid="117d8534-7838-4418-86d5-b611eeb43bce">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[A la terminación anticipada del presente contrato.]]></text>
			</staticText>
			<staticText>
				<reportElement x="70" y="184" width="450" height="16" forecolor="#192F57" uuid="94b9f1cf-5da4-465b-bd47-b497b7047d67">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[A la confidencialidad salvo excepciones contenidas en la Ley.]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="145" width="450" height="14" forecolor="#192F57" uuid="63e488d6-faef-44d8-80ae-7271402abdf0">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Trato equitativo, sin discriminación por razones de edad, género, raza, religión o identidad cultural.]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="197" width="450" height="20" forecolor="#192F57" uuid="d8c46a61-98ab-4630-b5cc-a1f0e526f683">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[A efectuar consultas, peticiones y solicitudes.]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="171" width="450" height="18" forecolor="#192F57" uuid="fbc9704c-1758-441e-b285-91bb0c116c35">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Formular reclamos a través de los canales correspondientes.]]></text>
			</staticText>
			<staticText>
				<reportElement x="42" y="500" width="480" height="20" forecolor="#192F57" uuid="cb92eaa3-8e5e-4f5d-8c05-b8c10058b543">
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
				<reportElement x="41" y="705" width="213" height="20" forecolor="#192F57" uuid="05917f46-48e3-49b5-9bc8-f36893aa2efe">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[_______________________________________]]></text>
			</staticText>
			<staticText>
				<reportElement x="306" y="705" width="213" height="20" forecolor="#192F57" uuid="dc2114fd-cd56-4874-9779-b30ee8cbf9d8">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[_______________________________________]]></text>
			</staticText>
			<staticText>
				<reportElement x="306" y="718" width="213" height="20" forecolor="#192F57" uuid="b5d4fb74-bd59-4e41-8164-6d2fa1627736">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>RAUL PABLO RODRIGUEZ SALAZAR</b>]]></text>
			</staticText>
			<image scaleImage="FillFrame">
				<reportElement x="41" y="612" width="213" height="97" uuid="ec561d81-b940-4936-a99c-e5bc5643c567">
					<property name="com.jaspersoft.studio.unit.width" value="px"/>
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<imageExpression><![CDATA["C:/opt/wildfly-24_onboard/standalone/deployments/files.war/images/signOneshot.png"]]></imageExpression>
			</image>
			<image scaleImage="FillFrame">
				<reportElement x="306" y="610" width="213" height="97" uuid="456d20d0-8959-46de-a971-f81b5067deec">
					<property name="com.jaspersoft.studio.unit.width" value="px"/>
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<imageExpression><![CDATA["C:/opt/wildfly-24_onboard/standalone/deployments/files.war/images/signPromotora.png"]]></imageExpression>
			</image>
			<staticText>
				<reportElement x="40" y="737" width="214" height="20" forecolor="#192F57" uuid="ed2ee606-7d51-4abf-b040-7173df07c3fc">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[C.I. N° <b>P_numDocumento</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="718" width="214" height="20" forecolor="#192F57" uuid="4b98d8c4-ed10-46e4-adb5-9772ab272913">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>P_NombreCliente</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="306" y="738" width="213" height="20" forecolor="#192F57" uuid="32b86dd2-4fea-4c5a-84cb-63988c3286bd">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[C.I. N° <b>3754171 CB</b>]]></text>
			</staticText>
		</band>
	</detail>
	<pageFooter>
		<band height="4"/>
	</pageFooter>
</jasperReport>
*/