select *
from t_report
where report_id = 9;

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
				<imageExpression><![CDATA["C:\opt\wildfly-24_onboard\standalone\deployments\files.war\images\logoPromotora.png"]]></imageExpression>
			</image>
		</band>
	</pageHeader>
	<detail>
		<band height="784">
			<property name="com.jaspersoft.studio.unit.height" value="px"/>
			<staticText>
				<reportElement x="41" y="26" width="478" height="22" forecolor="#192F57" uuid="0015c0d5-01d1-435d-b016-173d56109c80">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<textElement textAlignment="Center">
					<font fontName="Verdana" size="11" isBold="true"/>
				</textElement>
				<text><![CDATA[CONTRATO DE CUENTA DE CAJA DE AHORRO]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="470" width="480" height="50" forecolor="#192F57" uuid="7487e8a3-3c3d-407c-b6f4-873b40d6bf90">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[En caso de que los depósitos se efectúen mediante cheque o cheques de otras entidades de intermediación financiera, el (los) CLIENTE (S) FINANCIERO (S) podrá (n) disponer de esos fondos una vez que se haya acreditado el abono en forma efectiva del importe del o los cheques en su cuenta de caja de ahorro.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="351" width="480" height="72" forecolor="#192F57" uuid="f77af30c-2cd5-4f44-bb0a-a500f7443315">
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
				<reportElement x="41" y="570" width="480" height="39" forecolor="#192F57" uuid="dbcd06db-bf8d-4537-9290-229f22ca3999">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>SEXTA: (ADMINISTRACIÓN DE LOS FONDOS)</b> El (los) CLIENTE (S) FINANCIERO (S) podrá (n) administrar los fondos de la cuenta de caja de ahorro a través de la libreta de caja de ahorro, la tarjeta de débito o mediante banca electrónica. ]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="517" width="480" height="50" forecolor="#192F57" uuid="1fdfb4cd-0f0e-4537-8095-bff4271bd037">
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
				<reportElement x="41" y="661" width="480" height="48" forecolor="#192F57" uuid="c1b44a6e-6812-40ed-a035-7b7b6beb2982">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>SEPTIMA: (INTERESES)</b> LA PROMOTORA EFV pagará al (a los) CLIENTE (S) FINANCIERO (S) por la cuenta de caja de ahorro, el interés anual, de acuerdo a tarifario y régimen de tasas de interés reguladas por el Órgano Ejecutivo del nivel central del Estado mediante Decreto Supremo.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="613" width="480" height="47" forecolor="#192F57" uuid="3494dfd8-92f3-4093-93d8-d7ce15acfe3e">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Al momento de la apertura de la cuenta de cajas de ahorro y con el primer depósito, la EIF extenderá la libreta de ahorros a nombre del (de los) CLIENTE (S) FINANCIERO (S), que contendrá el Reglamento de Cuentas de Ahorro de <b>LA PROMOTORA EFV</b>.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="710" width="480" height="70" forecolor="#192F57" uuid="c6a4d763-4f5f-41d2-9bb0-a60ba3d62ab1">
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
				<reportElement x="41" y="429" width="480" height="50" forecolor="#192F57" uuid="a6ed9294-253c-4620-a153-599730c8b689">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>CUARTA: (DEPÓSITOS)</b> El (los) CLIENTE (S) FINANCIERO (S) o terceras personas podrá (n) efectuar depósitos en la cuenta de caja de ahorro de forma sucesiva en puntos de atención financiero de <b>LA PROMOTORA EFV</b>, la cual generará en todos los casos la constancia del citado depósito.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="233" width="480" height="46" forecolor="#192F57" uuid="89a52068-bcdd-42d4-a7de-ab7f102ba0bc">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[El (la) señor (a) <b>P_NombreCliente</b> con documento (s) de identificación N° <b>P_numDocumento</b> mayor (es) de edad y hábil (es) por derecho, en adelante CLIENTE (S) FINANCIERO (S).]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="268" width="480" height="90" forecolor="#192F57" uuid="b1d0cb15-1d6f-4bf2-9ec2-7107af1b4f66">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>SEGUNDA:	(OBJETO DEL CONTRATO)</b> El presente contrato tiene por objeto establecer las condiciones sobre las cuales <b>LA PROMOTORA EFV</b> prestará a favor del (de los) CLIENTE (S) FINANCIERO (S), el servicio de apertura, recepción y retiro de depósitos y administración de fondos de una cuenta de caja de ahorro en <b>P_tipo_moneda</b>, en puntos de atención financiero o a través de instrumentos electrónicos de pago o banca electrónica, conforme a disposiciones legales y reglamentarias vigentes así como reglamentos y procedimientos de <b>LA PROMOTORA EFV</b>.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="207" width="480" height="20" forecolor="#192F57" uuid="ff183c5a-7477-45f5-aed8-c2b2598ea2bb">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Por otra parte,]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="96" width="480" height="105" forecolor="#192F57" uuid="164d3354-98c3-4e59-af16-cc65686d335e">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>PRIMERA:           (PARTES)</b> Celebran el presente contrato, por una parte <b>LA PROMOTORA ENTIDAD FINANCIERA DE VIVIENDA,</b> con domicilio principal en la calle España No. S-0111 de la ciudad de Cochabamba, Número de Identificación Tributaria (NIT) No. 1009387022, con Licencia de Funcionamiento otorgada por la Autoridad de Supervisión del Sistema Financiero ASFI/051/2015 de fecha 18 de noviembre de 2015 y matrícula de comercio otorgada por Fundempresa No. 341747, representada legalmente por las firmas al pie del contrato, en mérito al Poder No. 102/2023, de fecha 16 de Marzo de 2023, otorgado ante la Notaria de Fe Pública No. 30, a cargo de la Dr (a). Maria del Carmen Montaño del Granado; en adelante se denominará <b>“LA PROMOTORA EFV”</b>.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="59" width="480" height="30" forecolor="#192F57" uuid="12fa9de1-2d2a-4c1f-959f-2602862131cf">
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
				<reportElement x="41" y="566" width="480" height="59" forecolor="#192F57" uuid="ea0bd134-2378-4864-8ce5-8eb5b5ea9be4">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA QUINTA: (RETENCIÓN DE FONDOS)</b> En caso de que la Autoridad Competente  comunicará la orden de Autoridad Judicial o Administrativa para proceder a la retención de fondos del (de los) CLIENTE (S) FINANCIERO (S), <b>LA PROMOTORA EFV</b> procederá a dicha retención hasta el límite señalado en la orden respectiva conforme a reglamentación emitida por ASFI.]]></text>
			</staticText>
			<staticText>
				<reportElement x="74" y="134" width="445" height="30" forecolor="#192F57" uuid="0df8869f-fc39-4ec9-89ae-5acfd854a0f6">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Comunicar de forma inmediata a <b>LA PROMOTORA EFV</b>, a través de los canales autorizados el extravío sustracción o robo de la (las) tarjetas.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="350" width="480" height="55" forecolor="#192F57" uuid="0a2c29c1-b384-4bd0-8daa-0bed6dc4aaab">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA SEGUNDA: (ACREDITACIÓN ERRÓNEA)</b> En caso de que <b>LA PROMOTORA EFV</b>, acreditara erróneamente algún monto en la cuenta de Caja de Ahorro del (de los) CLIENTE (S) FINANCIERO (S), ésta podrá revertir el depósito, comunicando al (a los) CLIENTE (S) FINANCIERO (S) el débito efectuado y la razón que motivó el mismo.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="407" width="480" height="54" forecolor="#192F57" uuid="5afd091d-93ab-46dd-8fb8-3820e69f9e48">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA TERCERA: (COMISIONES)</b> La apertura y administración de la cuenta de caja de ahorro no genera comisiones, salvo en el caso de excepción establecido en la Recopilación de Normas para Servicios Financieros.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="453" width="480" height="46" forecolor="#192F57" uuid="73e8a61f-88f0-41f2-acc7-93af2ed27c84">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA CUARTA: (CLAUSURA Y PRESCRIPCIÓN POR INACTIVIDAD)</b> De conformidad a lo establecido en el artículo 1369 del Código de Comercio, la cuenta de Caja de Ahorro inactiva por más de cinco años será clausurada comunicándose de forma escrita al (a los) CLIENTE (S) FINANCIERO (S) la disponibilidad de su saldo incluyendo el abono de los intereses ganados.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="503" width="480" height="50" forecolor="#192F57" uuid="c29a313d-2a1b-45d7-93ac-f93b92a33177">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Si la Caja de Ahorro no registra movimiento alguno en el lapso de 10 años, contando desde el último depósito o retiro, los montos que se encontraban a disposición del (de los) CLIENTE (S) FINANCIERO (S) será (n) transferidos al Tesoro General de la Nación.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="626" width="480" height="60" forecolor="#192F57" uuid="7f1379f7-325c-4ae9-bd20-df43dedb61c0">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA SEXTA (TERMINACIÓN ANTICIPADA)</b> <b>LA PROMOTORA EFV</b>, dará por terminado el presente  contrato por razones justificadas en sus políticas internas, así como por medidas de prevención en materia de legitimación de ganacías ilícitas, financiamiento al terrorismo y financiamiento de la proliferación de armas de destrucción masiva, debiendo comunicar sobre esta decisión al (a los) CLIENTE (S) FINANCIERO (S) con quince (15) días de anticipación.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="289" width="480" height="60" forecolor="#192F57" uuid="a1caf418-e4c3-49d9-830d-d9b8b3264950">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA PRIMERA: (INEMBARGABILIDAD DE CAJAS DE AHORRO DE PERSONAS NATURALES Y LÍMITE DE TAL EFECTO)</b> Los fondos depositados en la cuenta de caja de ahorro serán inembargables, hasta el monto establecido de acuerdo a normativa regulatoria vigente. Dicho límite no alcanza a las obligaciones alimenticias.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="10" width="480" height="50" forecolor="#192F57" uuid="4c87cd80-340c-459a-84b5-d3b0b24c011c">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>OCTAVA:	(CAPITALIZACIÓN DE INTERESES)</b> Los intereses serán capitalizables según la periodicidad establecida en el Reglamento de Cajas de Ahorro de <b>LA PROMOTORA EFV</b> aprobado por ASFI y disposiciones legales vigentes.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="54" width="480" height="31" forecolor="#192F57" uuid="9bbae86c-8101-4f0b-a4d6-0a780bfd9499">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>NOVENA: (SERVICIOS ADICIONALES)</b> El (los) CLIENTE (S) FINANCIERO (S) por el acceso a la utilización de tarjetas de débito y banca electrónica, debe (n):]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="237" width="480" height="49" forecolor="#192F57" uuid="0f37fc80-ce59-4d1f-a810-f87b314bbac4">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA: (MODIFICACIONES UNILATERALES) LA PROMOTORA EFV</b>, no puede modificar unilateralmente los términos y condiciones pactadas en el presente contrato, salvo que dicha modificación beneficie al (a los) CLIENTE (S) FINANCIERO (S).]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="195" width="480" height="36" forecolor="#192F57" uuid="23577b1a-c38d-49f1-ac0b-8354d3620a6c">
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
				<reportElement x="74" y="84" width="445" height="30" forecolor="#192F57" uuid="08462796-e344-4e41-83ef-fac04cfdb040">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Pagar la tarifa establecida por la emisión de nuevas tarjetas en caso de extravío, sustracción, robo o emisión de tarjetas adicionales.]]></text>
			</staticText>
			<staticText>
				<reportElement x="74" y="114" width="445" height="20" forecolor="#192F57" uuid="598ce843-f045-4eb4-885d-7fe56f2c6fe3">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Asumir la responsabilidad por el uso del código de identificación personal (PIN) de la (s) tarjeta (s).]]></text>
			</staticText>
			<staticText>
				<reportElement x="74" y="164" width="446" height="28" forecolor="#192F57" uuid="4abf9f9f-9034-4286-b51b-05703b1a9122">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Utilizar su código de identificación personal (PIN) o códigos fijados por <b>LA PROMOTORA EFV</b>, para consultar la información relativa a sus cuentas de cajas de ahorro.]]></text>
			</staticText>
			<staticText>
				<reportElement x="42" y="114" width="30" height="13" forecolor="#192F57" uuid="802409ad-09d6-4675-84a4-305c1969f404">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[b)]]></text>
			</staticText>
			<staticText>
				<reportElement x="42" y="164" width="30" height="13" forecolor="#192F57" uuid="15a61ed7-c141-40ce-8f70-3a4ba531c047">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[d)]]></text>
			</staticText>
			<staticText>
				<reportElement x="42" y="134" width="30" height="13" forecolor="#192F57" uuid="22d1423b-257b-4b20-a49c-45963b2c12ef">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[c)]]></text>
			</staticText>
			<staticText>
				<reportElement x="42" y="86" width="30" height="13" forecolor="#192F57" uuid="4cccd982-491d-47c7-be94-db0366c465f9">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[a)]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="690" width="480" height="60" forecolor="#192F57" uuid="30ed06b0-7e31-4917-89b8-045dbe769730">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Por otra parte, el (los) CLIENTE (S) FINANCIERO (S), podrá (n) solicitar a <b>LA PROMOTORA EFV</b> la conclusión del contrato de forma expresa, debiendo la entidad poner a su disposición el saldo de su cuenta, salvo que existan restricciones normativas o de orden legal dispuestas por autoridad competente.]]></text>
			</staticText>
		</band>
		<band height="767">
			<property name="com.jaspersoft.studio.unit.height" value="px"/>
			<staticText>
				<reportElement x="40" y="13" width="480" height="50" forecolor="#192F57" uuid="c29dbb99-c65b-4db8-bcad-60ff27ccfed2">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA SEPTIMA: (FALLECIMIENTO)</b> En caso de fallecimiento del (de los) CLIENTE (S) FINANCIERO (S) los herederos podrán disponer de los fondos existentes previa presentación de la declaratoria de herederos.]]></text>
			</staticText>
			<staticText>
				<reportElement x="70" y="251" width="450" height="34" forecolor="#192F57" uuid="b60de06a-30b6-425f-a930-0dd1cf49e790">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Proporcionar la información requerida por <b>LA PROMOTORA EFV</b> en cumplimiento a lo establecido por la Unidad de Investigación Financiera UIF.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="261" width="30" height="20" forecolor="#192F57" uuid="46ed57e6-7919-447f-9717-bacc9e2d49ff">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[a)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="285" width="30" height="20" forecolor="#192F57" uuid="dd7188bc-08bf-4834-a7bb-b05cfb492f06">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[b)]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="147" width="450" height="20" forecolor="#192F57" uuid="a5b2dd5d-49ca-42c7-81e7-3d22ab67ed5c">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[A recibir información fidedigna, amplia, íntegra, clara, comprensible, oportuna y accesible.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="133" width="30" height="13" forecolor="#192F57" uuid="e45c5fb5-f8ab-4cc0-b3c1-9a84b7377617">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[a)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="146" width="30" height="13" forecolor="#192F57" uuid="bed8398e-774d-47ca-8175-11025bded082">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[b)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="159" width="30" height="13" forecolor="#192F57" uuid="c2e04f43-06fb-445f-a015-4dbb5e1a7f72">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[c)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="172" width="30" height="13" forecolor="#192F57" uuid="7c2e5dec-1577-4d1a-8dd4-3bc21d3038a8">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[d)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="185" width="30" height="13" forecolor="#192F57" uuid="2a885794-f1fe-4c9e-ab93-407ae671dc5c">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[e)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="198" width="30" height="13" forecolor="#192F57" uuid="b05c72bb-0379-4361-965f-16dee546af68">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[f)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="211" width="30" height="13" forecolor="#192F57" uuid="e556571c-f1ce-4567-8f70-eb36d4ab1db7">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[g)]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="346" width="450" height="32" forecolor="#192F57" uuid="d0050fbc-8baf-40f5-b5fa-f21e74ad3fb0">
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
				<reportElement x="40" y="402" width="30" height="13" forecolor="#192F57" uuid="83f6fa51-f698-4fbd-bccb-2362ec19a9d2">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[c)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="346" width="30" height="13" forecolor="#192F57" uuid="d9ddc03c-57ac-4179-8126-554774621873">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[a)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="374" width="30" height="13" forecolor="#192F57" uuid="81128426-de9d-4bf5-8afd-1f7851026360">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[b)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="236" width="480" height="24" forecolor="#192F57" uuid="6b48b001-a1b2-4aab-9532-708b9467bf76">
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
				<reportElement x="40" y="325" width="480" height="20" forecolor="#192F57" uuid="9752ba30-00ae-4554-8c13-f0cd8b68922d">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>VIGÉSIMA PRIMERA: (OBLIGACIONES DE LA PROMOTORA E.F.V.)</b> Son las siguientes:]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="436" width="480" height="59" forecolor="#192F57" uuid="dce8aa05-9ab3-4f69-a8a1-b47243f12873">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>VIGÉSIMA SEGUNDA: (ACEPTACIÓN)</b>. LA PROMOTORA E.F.V. y el (los) CLIENTE (S) FINANCIERO (S), dan su plena conformidad con todas las cláusulas del presente contrato que surtirá efectos sin necesidad de reconocimiento de firmas y rúbricas, estampando sus firmas, en señal de aceptación.
]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="56" width="480" height="40" forecolor="#192F57" uuid="00cd78b9-0ce7-4b2c-8161-4af1cd590cb4">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA OCTAVA: (DOMICILIO ESPECIAL)</b> Todo aviso, notificación y en general toda comunicación escrita emitida por <b>LA PROMOTORA EFV</b>, será remitida a la última dirección que esté registrada en <b>LA PROMOTORA EFV</b>.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="102" width="480" height="34" forecolor="#192F57" uuid="30c42a5f-57f8-4f95-8dd9-56169eedabdc">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA NOVENA: (DERECHOS DEL CLIENTE FINANCIERO)</b> El (Los) CLIENTE (S) FINANCIERO (S) tienen derecho a:]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="374" width="450" height="28" forecolor="#192F57" uuid="ca7ca032-590a-4cf0-aa87-28a4e709bceb">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[A requerimiento de la UIF, recabar y entregar información sobre las actividades comerciales y financieras del (de los) CLIENTE (S) FINANCIERO (S).]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="402" width="450" height="30" forecolor="#192F57" uuid="38e3c14e-21e9-49bf-86f3-75d73b0cbd4c">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[A solicitud del (de los) CLIENTE (S) FINANCIERO (S), emitir mensualmente un extracto de movimiento de su Cuenta de Caja de Ahorro, sin costo. ]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="285" width="450" height="30" forecolor="#192F57" uuid="daa7f388-e66e-46e4-a9bd-14d89889af02">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Dar aviso oportunamente y por escrito a <b>LA PROMOTORA EFV</b> sobre cualquier cambio de domicilio.]]></text>
			</staticText>
			<staticText>
				<reportElement x="70" y="211" width="450" height="18" forecolor="#192F57" uuid="bf68c97d-d2c6-4ca5-a525-8be5bd6c4d31">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Otros derechos reconocidos por disposiciones legales y reglamentarias.]]></text>
			</staticText>
			<staticText>
				<reportElement x="70" y="198" width="450" height="20" forecolor="#192F57" uuid="1be08e63-1ebf-43cd-886d-b06a548f53bd">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[A la terminación anticipada del presente contrato.]]></text>
			</staticText>
			<staticText>
				<reportElement x="70" y="172" width="450" height="16" forecolor="#192F57" uuid="edbc1618-7933-4914-8dc4-5c28a803a9be">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[A la confidencialidad salvo excepciones contenidas en la Ley.]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="133" width="450" height="14" forecolor="#192F57" uuid="bba0b3ee-65b8-41e3-a61f-27160b08a310">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Trato equitativo, sin discriminación por razones de edad, género, raza, religión o identidad cultural.]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="185" width="450" height="20" forecolor="#192F57" uuid="6dd2486f-0a6b-4965-bce6-2db89c4c5b03">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[A efectuar consultas, peticiones y solicitudes.]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="159" width="450" height="18" forecolor="#192F57" uuid="c839b3de-f681-4478-ac88-1af67e809cbc">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Formular reclamos a través de los canales correspondientes.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="484" width="480" height="20" forecolor="#192F57" uuid="ab058203-29f9-4a56-ac6c-0d04e8d5eb82">
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
				<reportElement x="42" y="690" width="212" height="20" uuid="dc9bef47-54b2-4e9b-a4f4-5986a1a5f358">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Times New Roman" size="11" isBold="false"/>
				</textElement>
				<text><![CDATA[_______________________________________]]></text>
			</staticText>
			<staticText>
				<reportElement x="304" y="690" width="209" height="20" uuid="2f6ab964-93ab-456f-9d39-71ed64f7ced6">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Times New Roman" size="11" isBold="false"/>
				</textElement>
				<text><![CDATA[_______________________________________]]></text>
			</staticText>
			<image scaleImage="FillFrame">
				<reportElement x="41" y="597" width="213" height="97" uuid="91b41330-74d3-4bf5-8dc8-8330483510e2">
					<property name="com.jaspersoft.studio.unit.width" value="px"/>
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<imageExpression><![CDATA["C:\opt\wildfly-24_onboard\standalone\deployments\files.war\images\signOneshot.png"]]></imageExpression>
			</image>
			<image scaleImage="FillFrame">
				<reportElement x="304" y="595" width="213" height="97" uuid="8697e30e-070e-499c-bd73-b25deee8c25b">
					<property name="com.jaspersoft.studio.unit.width" value="px"/>
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<imageExpression><![CDATA["C:\opt\wildfly-24_onboard\standalone\deployments\files.war\images\signPromotora.png"]]></imageExpression>
			</image>
			<staticText>
				<reportElement x="42" y="724" width="212" height="20" forecolor="#192F57" uuid="f0376f4e-fdc3-477e-bf9c-c58907d92d6c">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[C.I. N° <b>P_numDocumento</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="704" width="214" height="20" forecolor="#192F57" uuid="19ad8cc3-9111-44e4-b210-9aae32c6c0b8">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>P_NombreCliente</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="304" y="704" width="213" height="20" forecolor="#192F57" uuid="f196ac5a-3331-4afa-a236-4388bc277782">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>RAUL PABLO RODRIGUEZ SALAZAR</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="304" y="724" width="213" height="20" forecolor="#192F57" uuid="44717ce3-b082-48f2-9dba-8da3f25b6009">
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
				<reportElement x="41" y="74" width="478" height="17" forecolor="#192F57" uuid="38e47c09-c168-49e6-9f37-cf0648b43d04">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9"/>
				</textElement>
				<text><![CDATA[_______________________________________________________________________________________]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="96" width="480" height="50" forecolor="#192F57" uuid="787fd0c0-4c04-4a2d-b5c4-170bfd7db832">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Por el presente documento, el (los) CLIENTE (S) FINANCIERO (S) descrito (s) el contrato principal, de manera voluntaria manifiesta su voluntad de afiliar su CUENTA DE CAJA DE AHORRO a un plan de tasa de interés diferenciado, conforme las condiciones siguientes:]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="246" width="480" height="50" forecolor="#192F57" uuid="830d4bd7-68de-4f07-a29f-cac54c4d7a95">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>SEGUNDA. - OBJETO:</b> El (los) CLIENTE (S) FINANCIERO (S) de forma voluntaria solicita afiliar la cuenta descrita en la cláusula primera a la campaña con plan de tasa de interés diferenciado, bajo las condiciones estipuladas en el presente documento.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="296" width="480" height="60" forecolor="#192F57" uuid="d6343f44-add3-4073-a136-b6974d0685ab">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>TERCERA. - PLAZO:</b> Se determina que la prestación del servicio, objeto del contrato es de plazo indefinido; sin embargo, las partes podrán establecer la terminación anticipada, conforme a lo previsto en el presente documento, Código de Comercio y normativa regulatoria de la Autoridad de Supervisión del Sistema Financiero (ASFI).]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="516" width="480" height="48" forecolor="#192F57" uuid="5d64a11e-8830-4587-8364-dea1f8fa0583">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>SEXTA.- CONFORMIDAD:</b> El (los) CLIENTE (S) FINANCIERO (S) expresamente manifiesta (n) su conformidad a las condiciones precedentes que le permiten beneficiarse con la tasa correspondiente al Plan de Ahorros al que se afilia.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="436" width="480" height="60" forecolor="#192F57" uuid="d0873f31-89bc-4297-9152-939453975362">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>QUINTA. - INTERÉS:</b> El interés a ser pagado por “LA PROMOTORA” E.F.V. a favor del (los) CLIENTE (S) FINANCIERO (S), dependerá de los saldos que éste mantuviera en la cuenta de caja de ahorro afiliada y del plan al que se encuentre afiliado, aplicando las tasas definidas en tarifario de <b>“LA PROMOTORA” E.F.V.</b> para cada plan de ahorros.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="196" width="480" height="50" forecolor="#192F57" uuid="2c3b02ec-870f-4dc6-8330-61eae42b2ae3">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>“LA PROMOTORA” E.F.V.</b>, mantiene distintos planes promocionales de tasa de interés que permiten al (a los) CLIENTE (S) FINANCIERO (S) tener un mayor interés y beneficios por sus ahorros, otorgando una tasa de interés mayor por un periodo de tiempo limitado y bajo determinadas condiciones.]]></text>
			</staticText>
			<staticText>
				<reportElement x="172" y="70" width="189" height="22" forecolor="#192F57" uuid="9b4324fc-d552-4057-afbe-c2c17eda9cdb">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<textElement textAlignment="Center">
					<font fontName="Verdana" size="11" isBold="true"/>
				</textElement>
				<text><![CDATA[ANEXO  I]]></text>
			</staticText>
			<staticText>
				<reportElement x="76" y="27" width="400" height="17" forecolor="#192F57" uuid="79f074e2-10af-4331-a5d9-75846ded764a">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9"/>
				</textElement>
				<text><![CDATA[_______________________________________________________________________]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="356" width="480" height="20" forecolor="#192F57" uuid="b2913405-0f8a-4bf1-be6f-7462b17f9f0b">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Las condiciones de tasa de interés diferenciado entran en vigor a partir de la afiliación. ]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="496" width="480" height="20" forecolor="#192F57" uuid="90e2f8f3-a371-4784-9bb2-ea4583d5b6ca">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[El interés será abonado de forma mensual sobre el saldo promedio al cierre del mes anterior al pago.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="52" width="478" height="22" forecolor="#192F57" uuid="9b66cf60-ebbd-45d2-abdf-af369777fde4">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<textElement textAlignment="Center">
					<font fontName="Verdana" size="11" isBold="true"/>
				</textElement>
				<text><![CDATA[PLAN DE TASA DE INTERÉS DIFERENCIADO "PROACTIVA"]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="149" width="480" height="56" forecolor="#192F57" uuid="21d06e40-7867-4f4b-a09d-b26b008e248a">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>PRIMERA. - ANTECEDENTES:</b> El (los) CLIENTE (S) FINANCIERO (S) a la fecha, mantiene(n) en <b>“LA PROMOTORA” E.F.V.</b> la cuenta de caja de ahorro en <b>P_tipo_moneda</b>  N°<b>P_cuentaCore</b>, misma que recibe un interés mensual de acuerdo a la tasa estipulada en Tarifario.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="377" width="480" height="60" forecolor="#192F57" uuid="6410cfaf-6459-4c5e-991d-e3956441ce5c">
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
				<reportElement x="41" y="100" width="480" height="29" forecolor="#192F57" uuid="d714eb0a-1bd4-4686-b81a-6a52e2f8d95e">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[La caja de ahorro <b>PROACTIVA</b> ha sido creada con el objetivo de otorgar, Funcionalidad y digitalización de los servicios financieros, a familias de 2 a 5 miembros.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="167" width="480" height="20" forecolor="#192F57" uuid="c188c4b0-b442-4d0a-8551-33016d7adbd5">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Tasa: 2.5%]]></text>
			</staticText>
			<staticText>
				<reportElement x="42" y="47" width="478" height="22" forecolor="#192F57" uuid="888c0046-654f-4edf-9e51-922d3e6a3882">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<textElement textAlignment="Center">
					<font fontName="Verdana" size="11" isBold="true"/>
				</textElement>
				<text><![CDATA[ANEXO  II]]></text>
			</staticText>
			<staticText>
				<reportElement x="81" y="25" width="400" height="17" forecolor="#192F57" uuid="7d9f11b7-042d-4a65-a588-5f437e4fac2d">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9"/>
				</textElement>
				<text><![CDATA[_______________________________________________________________________]]></text>
			</staticText>
			<staticText>
				<reportElement x="81" y="56" width="400" height="17" forecolor="#192F57" uuid="45f272d9-7db4-4292-85dd-15f43620c5de">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9"/>
				</textElement>
				<text><![CDATA[_______________________________________________________________________]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="82" width="480" height="19" forecolor="#192F57" uuid="2d45fc0b-ef51-4caf-b6be-9cf07ec362a7">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>1.-ANTECEDENTES</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="136" width="480" height="19" forecolor="#192F57" uuid="505ee07d-19ef-4150-9192-0504e1819563">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>2.- CONDICIONES COMERCIALES</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="39" y="234" width="480" height="19" forecolor="#192F57" uuid="a6fc7213-f8ce-461f-810a-8a2942c51edc">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>3.-BENEFICIOS</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="355" width="480" height="19" forecolor="#192F57" uuid="0a1708c4-753f-4151-88a9-1712430cb381">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>4.- ASISTENCIAS</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="151" width="480" height="20" forecolor="#192F57" uuid="4ecd9968-b263-4196-a0f4-5f618c24adab">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Caja de ahorro en bolivianos]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="183" width="480" height="20" forecolor="#192F57" uuid="7a951aed-4301-4a51-acae-06912ffaefc5">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Monto mínimo de apertura: 500 Bs.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="198" width="480" height="20" forecolor="#192F57" uuid="be866317-35e8-4847-bcce-b1a09e340450">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Pignoración: 200 Bs.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="214" width="480" height="20" forecolor="#192F57" uuid="4b9d860d-e9b2-4ace-a129-55e066b943dd">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Sin condiciones de retiros]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="264" width="480" height="20" forecolor="#192F57" uuid="047d1e57-6799-4ea6-9e92-7c3f21b7628a">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Compras por internet]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="249" width="480" height="20" forecolor="#192F57" uuid="e9a5b60b-9119-4d66-98f0-baa579cb474d">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Cuenta alterna]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="280" width="480" height="20" forecolor="#192F57" uuid="bed7279e-739a-452d-98a9-7915791df8b0">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Descuentos en comercios afiliados]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="296" width="480" height="20" forecolor="#192F57" uuid="31964a38-cf42-482f-ab3b-02afdb2334f7">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Acceso a Tarjeta de crédito]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="313" width="480" height="20" forecolor="#192F57" uuid="40c1dcde-751c-4838-881c-fab278b8e67b">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Tarjeta de débito con todos sus beneficios]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="330" width="480" height="20" forecolor="#192F57" uuid="351c6e9a-d83f-4e45-97a8-5c2e812e8846">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Acceso a banca digital]]></text>
			</staticText>
			<rectangle>
				<reportElement x="48" y="371" width="470" height="188" forecolor="#192F57" uuid="1b31fdea-7478-49dc-b59a-c8c4d06dbc3d"/>
			</rectangle>
			<line>
				<reportElement x="305" y="373" width="1" height="185" forecolor="#192F57" uuid="4492bb88-ffe2-46b8-8149-371e72c63f17"/>
			</line>
			<line>
				<reportElement x="48" y="393" width="470" height="1" forecolor="#192F57" uuid="920cf87d-0fca-467c-9a57-78e9a566e2b2">
					<property name="com.jaspersoft.studio.unit.width" value="px"/>
				</reportElement>
			</line>
			<line>
				<reportElement x="48" y="439" width="470" height="1" forecolor="#192F57" uuid="cd275f34-e3e0-4e4d-bf0c-061d1a3af922">
					<property name="com.jaspersoft.studio.unit.width" value="px"/>
				</reportElement>
			</line>
			<line>
				<reportElement x="49" y="459" width="470" height="1" forecolor="#192F57" uuid="0a5c11bb-7055-413d-9f44-8c99ccfbe638">
					<property name="com.jaspersoft.studio.unit.width" value="px"/>
				</reportElement>
			</line>
			<line>
				<reportElement x="49" y="478" width="470" height="1" forecolor="#192F57" uuid="e46b9797-5514-4df0-a053-2d63b7f73e90">
					<property name="com.jaspersoft.studio.unit.width" value="px"/>
				</reportElement>
			</line>
			<line>
				<reportElement x="48" y="502" width="470" height="1" forecolor="#192F57" uuid="8d532a10-2f79-4257-8579-c3e1b757ffe7">
					<property name="com.jaspersoft.studio.unit.width" value="px"/>
				</reportElement>
			</line>
			<staticText>
				<reportElement x="60" y="378" width="184" height="19" forecolor="#192F57" uuid="270c872c-b708-48a0-968f-78d0814c8029">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>SERVICIOS</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="322" y="378" width="184" height="19" forecolor="#192F57" uuid="6e687824-9337-43e0-a85d-5ea6a94b3794">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>TOPE DE USO</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="53" y="394" width="256" height="19" forecolor="#192F57" uuid="f2b81555-9ac6-4683-a5aa-c7eba43d47c8">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Servicio consulta medico en línea – Telemedicina]]></text>
			</staticText>
			<staticText>
				<reportElement x="53" y="408" width="256" height="19" forecolor="#192F57" uuid="8a2e09ae-6c2f-4bf4-974f-68c846df86ef">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Times New Roman" size="11" isBold="false"/>
				</textElement>
				<text><![CDATA[(cobertura en Medina General, pediatría y Geriatría)]]></text>
			</staticText>
			<staticText>
				<reportElement x="53" y="424" width="256" height="19" forecolor="#192F57" uuid="d7f84661-267a-44fb-845e-3d384340d6a2">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[(Aplica titular + beneficiarios)]]></text>
			</staticText>
			<staticText>
				<reportElement x="53" y="441" width="256" height="19" forecolor="#192F57" uuid="d8454d38-1af5-49b8-b9de-6e6b73b7b0db">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Servicio de plomería al hogar]]></text>
			</staticText>
			<staticText>
				<reportElement x="53" y="462" width="256" height="19" forecolor="#192F57" uuid="c34bc600-b831-4d2d-89fc-30fd530bf49c">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Servicio de electricista al hogar]]></text>
			</staticText>
			<staticText>
				<reportElement x="53" y="484" width="256" height="19" forecolor="#192F57" uuid="2854fcd1-f655-46f9-a5be-e499b113b98c">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Servicio de cerrajería al hogar]]></text>
			</staticText>
			<staticText>
				<reportElement x="54" y="506" width="256" height="19" forecolor="#192F57" uuid="e169371c-1ee3-444d-ac66-d1566f8dbf02">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Consulta de Veterinaria en línea -Tele consulta]]></text>
			</staticText>
			<staticText>
				<reportElement x="54" y="524" width="256" height="19" forecolor="#192F57" uuid="a7017976-feea-4f6d-95da-6998923aac42">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[(Cobertura para la mascota)]]></text>
			</staticText>
			<staticText>
				<reportElement x="54" y="540" width="256" height="19" forecolor="#192F57" uuid="97e442a8-c460-4f47-bceb-3b2c791111d2">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[(aplica a solo animales domésticos)]]></text>
			</staticText>
			<staticText>
				<reportElement x="310" y="397" width="208" height="19" forecolor="#192F57" uuid="b62480be-204a-49a0-8c86-e700642c9270">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[2 veces al mes/Max. 24 consultas anuales]]></text>
			</staticText>
			<staticText>
				<reportElement x="310" y="441" width="208" height="19" forecolor="#192F57" uuid="3010f292-c2e5-4178-a7e1-dd9c15bf1bb2">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[1 vez al mes -12 eventos anuales]]></text>
			</staticText>
			<staticText>
				<reportElement x="310" y="462" width="208" height="19" forecolor="#192F57" uuid="c6a1fa98-427f-45e6-b9dd-dfe012fdd2eb">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[1 vez al mes -12 eventos anuales]]></text>
			</staticText>
			<staticText>
				<reportElement x="310" y="484" width="208" height="19" forecolor="#192F57" uuid="b1016409-e157-487a-968b-01d01f356d10">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[1 vez al mes -12 eventos anuales]]></text>
			</staticText>
			<staticText>
				<reportElement x="310" y="505" width="208" height="19" forecolor="#192F57" uuid="03d8c7b3-69af-4f36-8e6c-219a086098ca">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[6 eventos anuales]]></text>
			</staticText>
			<staticText>
				<reportElement x="42" y="713" width="212" height="20" uuid="54d60022-fd69-4477-a886-7fa7fe0c2da5">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Times New Roman" size="11" isBold="false"/>
				</textElement>
				<text><![CDATA[_______________________________________]]></text>
			</staticText>
			<staticText>
				<reportElement x="304" y="713" width="209" height="20" uuid="bececd34-e244-49b9-861f-1c27c907e813">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Times New Roman" size="11" isBold="false"/>
				</textElement>
				<text><![CDATA[_______________________________________]]></text>
			</staticText>
			<image scaleImage="FillFrame">
				<reportElement x="41" y="620" width="213" height="97" uuid="52c7a41f-8666-4879-9b06-ea312413cccb">
					<property name="com.jaspersoft.studio.unit.width" value="px"/>
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<imageExpression><![CDATA["C:\opt\wildfly-24_onboard\standalone\deployments\files.war\images\signOneshot.png"]]></imageExpression>
			</image>
			<image scaleImage="FillFrame">
				<reportElement x="304" y="618" width="213" height="97" uuid="12ea1006-c58a-4169-ac69-d340dcac9b28">
					<property name="com.jaspersoft.studio.unit.width" value="px"/>
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<imageExpression><![CDATA["C:\opt\wildfly-24_onboard\standalone\deployments\files.war\images\signPromotora.png"]]></imageExpression>
			</image>
			<staticText>
				<reportElement x="42" y="747" width="212" height="20" forecolor="#192F57" uuid="7f31559d-842f-4637-83e9-e18703a1f999">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[C.I. N° <b>P_numDocumento</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="727" width="214" height="20" forecolor="#192F57" uuid="418914db-041b-4506-9e30-09887f4ba342">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>P_NombreCliente</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="304" y="727" width="213" height="20" forecolor="#192F57" uuid="72c59580-858c-45ac-8f8f-303dc98b72c5">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>RAUL PABLO RODRIGUEZ SALAZAR</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="304" y="747" width="213" height="20" forecolor="#192F57" uuid="dc2afdf9-4ab4-4130-b013-6867e5423ab6">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[C.I. N° <b>3754171 CB</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="574" width="480" height="20" forecolor="#192F57" uuid="77302ede-7d04-42a4-870c-ab2c2851891f">
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
where report_id = 9;

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
				<imageExpression><![CDATA["C:\opt\wildfly-24_onboard\standalone\deployments\files.war\images\logoPromotora.png"]]></imageExpression>
			</image>
		</band>
	</pageHeader>
	<detail>
		<band height="784">
			<property name="com.jaspersoft.studio.unit.height" value="px"/>
			<staticText>
				<reportElement x="41" y="26" width="478" height="22" forecolor="#192F57" uuid="0015c0d5-01d1-435d-b016-173d56109c80">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<textElement textAlignment="Center">
					<font fontName="Verdana" size="11" isBold="true"/>
				</textElement>
				<text><![CDATA[CONTRATO DE CUENTA DE CAJA DE AHORRO]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="470" width="480" height="50" forecolor="#192F57" uuid="7487e8a3-3c3d-407c-b6f4-873b40d6bf90">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[En caso de que los depósitos se efectúen mediante cheque o cheques de otras entidades de intermediación financiera, el (los) CLIENTE (S) FINANCIERO (S) podrá (n) disponer de esos fondos una vez que se haya acreditado el abono en forma efectiva del importe del o los cheques en su cuenta de caja de ahorro.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="351" width="480" height="72" forecolor="#192F57" uuid="f77af30c-2cd5-4f44-bb0a-a500f7443315">
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
				<reportElement x="41" y="570" width="480" height="39" forecolor="#192F57" uuid="dbcd06db-bf8d-4537-9290-229f22ca3999">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>SEXTA: (ADMINISTRACIÓN DE LOS FONDOS)</b> El (los) CLIENTE (S) FINANCIERO (S) podrá (n) administrar los fondos de la cuenta de caja de ahorro a través de la libreta de caja de ahorro, la tarjeta de débito o mediante banca electrónica. ]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="517" width="480" height="50" forecolor="#192F57" uuid="1fdfb4cd-0f0e-4537-8095-bff4271bd037">
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
				<reportElement x="41" y="661" width="480" height="48" forecolor="#192F57" uuid="c1b44a6e-6812-40ed-a035-7b7b6beb2982">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>SEPTIMA: (INTERESES)</b> LA PROMOTORA EFV pagará al (a los) CLIENTE (S) FINANCIERO (S) por la cuenta de caja de ahorro, el interés anual, de acuerdo a tarifario y régimen de tasas de interés reguladas por el Órgano Ejecutivo del nivel central del Estado mediante Decreto Supremo.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="613" width="480" height="47" forecolor="#192F57" uuid="3494dfd8-92f3-4093-93d8-d7ce15acfe3e">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Al momento de la apertura de la cuenta de cajas de ahorro y con el primer depósito, la EIF extenderá la libreta de ahorros a nombre del (de los) CLIENTE (S) FINANCIERO (S), que contendrá el Reglamento de Cuentas de Ahorro de <b>LA PROMOTORA EFV</b>.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="710" width="480" height="70" forecolor="#192F57" uuid="c6a4d763-4f5f-41d2-9bb0-a60ba3d62ab1">
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
				<reportElement x="41" y="429" width="480" height="50" forecolor="#192F57" uuid="a6ed9294-253c-4620-a153-599730c8b689">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>CUARTA: (DEPÓSITOS)</b> El (los) CLIENTE (S) FINANCIERO (S) o terceras personas podrá (n) efectuar depósitos en la cuenta de caja de ahorro de forma sucesiva en puntos de atención financiero de <b>LA PROMOTORA EFV</b>, la cual generará en todos los casos la constancia del citado depósito.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="233" width="480" height="46" forecolor="#192F57" uuid="89a52068-bcdd-42d4-a7de-ab7f102ba0bc">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[El (la) señor (a) <b>P_NombreCliente</b> con documento (s) de identificación N° <b>P_numDocumento</b> mayor (es) de edad y hábil (es) por derecho, en adelante CLIENTE (S) FINANCIERO (S).]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="268" width="480" height="90" forecolor="#192F57" uuid="b1d0cb15-1d6f-4bf2-9ec2-7107af1b4f66">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>SEGUNDA:	(OBJETO DEL CONTRATO)</b> El presente contrato tiene por objeto establecer las condiciones sobre las cuales <b>LA PROMOTORA EFV</b> prestará a favor del (de los) CLIENTE (S) FINANCIERO (S), el servicio de apertura, recepción y retiro de depósitos y administración de fondos de una cuenta de caja de ahorro en <b>P_tipo_moneda</b>, en puntos de atención financiero o a través de instrumentos electrónicos de pago o banca electrónica, conforme a disposiciones legales y reglamentarias vigentes así como reglamentos y procedimientos de <b>LA PROMOTORA EFV</b>.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="207" width="480" height="20" forecolor="#192F57" uuid="ff183c5a-7477-45f5-aed8-c2b2598ea2bb">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Por otra parte,]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="96" width="480" height="105" forecolor="#192F57" uuid="164d3354-98c3-4e59-af16-cc65686d335e">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>PRIMERA:           (PARTES)</b> Celebran el presente contrato, por una parte <b>LA PROMOTORA ENTIDAD FINANCIERA DE VIVIENDA,</b> con domicilio principal en la calle España No. S-0111 de la ciudad de Cochabamba, Número de Identificación Tributaria (NIT) No. 1009387022, con Licencia de Funcionamiento otorgada por la Autoridad de Supervisión del Sistema Financiero ASFI/051/2015 de fecha 18 de noviembre de 2015 y matrícula de comercio otorgada por Fundempresa No. 341747, representada legalmente por las firmas al pie del contrato, en mérito al Poder No. 93/2020, de fecha 18 de febrero de 2020, otorgado ante la Notaria de Fe Pública No. 30, a cargo de la Dr (a). Maria del Carmen Montaño del Granado; en adelante se denominará <b>“LA PROMOTORA EFV”</b>.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="59" width="480" height="30" forecolor="#192F57" uuid="12fa9de1-2d2a-4c1f-959f-2602862131cf">
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
				<reportElement x="41" y="566" width="480" height="59" forecolor="#192F57" uuid="ea0bd134-2378-4864-8ce5-8eb5b5ea9be4">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA QUINTA: (RETENCIÓN DE FONDOS)</b> En caso de que la Autoridad Competente  comunicará la orden de Autoridad Judicial o Administrativa para proceder a la retención de fondos del (de los) CLIENTE (S) FINANCIERO (S), <b>LA PROMOTORA EFV</b> procederá a dicha retención hasta el límite señalado en la orden respectiva conforme a reglamentación emitida por ASFI.]]></text>
			</staticText>
			<staticText>
				<reportElement x="74" y="134" width="445" height="30" forecolor="#192F57" uuid="0df8869f-fc39-4ec9-89ae-5acfd854a0f6">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Comunicar de forma inmediata a <b>LA PROMOTORA EFV</b>, a través de los canales autorizados el extravío sustracción o robo de la (las) tarjetas.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="350" width="480" height="55" forecolor="#192F57" uuid="0a2c29c1-b384-4bd0-8daa-0bed6dc4aaab">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA SEGUNDA: (ACREDITACIÓN ERRÓNEA)</b> En caso de que <b>LA PROMOTORA EFV</b>, acreditara erróneamente algún monto en la cuenta de Caja de Ahorro del (de los) CLIENTE (S) FINANCIERO (S), ésta podrá revertir el depósito, comunicando al (a los) CLIENTE (S) FINANCIERO (S) el débito efectuado y la razón que motivó el mismo.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="407" width="480" height="54" forecolor="#192F57" uuid="5afd091d-93ab-46dd-8fb8-3820e69f9e48">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA TERCERA: (COMISIONES)</b> La apertura y administración de la cuenta de caja de ahorro no genera comisiones, salvo en el caso de excepción establecido en la Recopilación de Normas para Servicios Financieros.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="453" width="480" height="46" forecolor="#192F57" uuid="73e8a61f-88f0-41f2-acc7-93af2ed27c84">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA CUARTA: (CLAUSURA Y PRESCRIPCIÓN POR INACTIVIDAD)</b> De conformidad a lo establecido en el artículo 1369 del Código de Comercio, la cuenta de Caja de Ahorro inactiva por más de cinco años será clausurada comunicándose de forma escrita al (a los) CLIENTE (S) FINANCIERO (S) la disponibilidad de su saldo incluyendo el abono de los intereses ganados.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="503" width="480" height="50" forecolor="#192F57" uuid="c29a313d-2a1b-45d7-93ac-f93b92a33177">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Si la Caja de Ahorro no registra movimiento alguno en el lapso de 10 años, contando desde el último depósito o retiro, los montos que se encontraban a disposición del (de los) CLIENTE (S) FINANCIERO (S) será (n) transferidos al Tesoro General de la Nación.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="626" width="480" height="60" forecolor="#192F57" uuid="7f1379f7-325c-4ae9-bd20-df43dedb61c0">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA SEXTA (TERMINACIÓN ANTICIPADA)</b> <b>LA PROMOTORA EFV</b>, dará por terminado el presente  contrato por razones justificadas en sus políticas internas, así como por medidas de prevención en materia de legitimación de ganacías ilícitas, financiamiento al terrorismo y financiamiento de la proliferación de armas de destrucción masiva, debiendo comunicar sobre esta decisión al (a los) CLIENTE (S) FINANCIERO (S) con quince (15) días de anticipación.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="289" width="480" height="60" forecolor="#192F57" uuid="a1caf418-e4c3-49d9-830d-d9b8b3264950">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA PRIMERA: (INEMBARGABILIDAD DE CAJAS DE AHORRO DE PERSONAS NATURALES Y LÍMITE DE TAL EFECTO)</b> Los fondos depositados en la cuenta de caja de ahorro serán inembargables, hasta el monto establecido de acuerdo a normativa regulatoria vigente. Dicho límite no alcanza a las obligaciones alimenticias.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="10" width="480" height="50" forecolor="#192F57" uuid="4c87cd80-340c-459a-84b5-d3b0b24c011c">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>OCTAVA:	(CAPITALIZACIÓN DE INTERESES)</b> Los intereses serán capitalizables según la periodicidad establecida en el Reglamento de Cajas de Ahorro de <b>LA PROMOTORA EFV</b> aprobado por ASFI y disposiciones legales vigentes.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="54" width="480" height="31" forecolor="#192F57" uuid="9bbae86c-8101-4f0b-a4d6-0a780bfd9499">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>NOVENA: (SERVICIOS ADICIONALES)</b> El (los) CLIENTE (S) FINANCIERO (S) por el acceso a la utilización de tarjetas de débito y banca electrónica, debe (n):]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="237" width="480" height="49" forecolor="#192F57" uuid="0f37fc80-ce59-4d1f-a810-f87b314bbac4">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA: (MODIFICACIONES UNILATERALES) LA PROMOTORA EFV</b>, no puede modificar unilateralmente los términos y condiciones pactadas en el presente contrato, salvo que dicha modificación beneficie al (a los) CLIENTE (S) FINANCIERO (S).]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="195" width="480" height="36" forecolor="#192F57" uuid="23577b1a-c38d-49f1-ac0b-8354d3620a6c">
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
				<reportElement x="74" y="84" width="445" height="30" forecolor="#192F57" uuid="08462796-e344-4e41-83ef-fac04cfdb040">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Pagar la tarifa establecida por la emisión de nuevas tarjetas en caso de extravío, sustracción, robo o emisión de tarjetas adicionales.]]></text>
			</staticText>
			<staticText>
				<reportElement x="74" y="114" width="445" height="20" forecolor="#192F57" uuid="598ce843-f045-4eb4-885d-7fe56f2c6fe3">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Asumir la responsabilidad por el uso del código de identificación personal (PIN) de la (s) tarjeta (s).]]></text>
			</staticText>
			<staticText>
				<reportElement x="74" y="164" width="446" height="28" forecolor="#192F57" uuid="4abf9f9f-9034-4286-b51b-05703b1a9122">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Utilizar su código de identificación personal (PIN) o códigos fijados por <b>LA PROMOTORA EFV</b>, para consultar la información relativa a sus cuentas de cajas de ahorro.]]></text>
			</staticText>
			<staticText>
				<reportElement x="42" y="114" width="30" height="13" forecolor="#192F57" uuid="802409ad-09d6-4675-84a4-305c1969f404">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[b)]]></text>
			</staticText>
			<staticText>
				<reportElement x="42" y="164" width="30" height="13" forecolor="#192F57" uuid="15a61ed7-c141-40ce-8f70-3a4ba531c047">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[d)]]></text>
			</staticText>
			<staticText>
				<reportElement x="42" y="134" width="30" height="13" forecolor="#192F57" uuid="22d1423b-257b-4b20-a49c-45963b2c12ef">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[c)]]></text>
			</staticText>
			<staticText>
				<reportElement x="42" y="86" width="30" height="13" forecolor="#192F57" uuid="4cccd982-491d-47c7-be94-db0366c465f9">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[a)]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="690" width="480" height="60" forecolor="#192F57" uuid="30ed06b0-7e31-4917-89b8-045dbe769730">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Por otra parte, el (los) CLIENTE (S) FINANCIERO (S), podrá (n) solicitar a <b>LA PROMOTORA EFV</b> la conclusión del contrato de forma expresa, debiendo la entidad poner a su disposición el saldo de su cuenta, salvo que existan restricciones normativas o de orden legal dispuestas por autoridad competente.]]></text>
			</staticText>
		</band>
		<band height="767">
			<property name="com.jaspersoft.studio.unit.height" value="px"/>
			<staticText>
				<reportElement x="40" y="13" width="480" height="50" forecolor="#192F57" uuid="c29dbb99-c65b-4db8-bcad-60ff27ccfed2">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA SEPTIMA: (FALLECIMIENTO)</b> En caso de fallecimiento del (de los) CLIENTE (S) FINANCIERO (S) los herederos podrán disponer de los fondos existentes previa presentación de la declaratoria de herederos.]]></text>
			</staticText>
			<staticText>
				<reportElement x="70" y="251" width="450" height="34" forecolor="#192F57" uuid="b60de06a-30b6-425f-a930-0dd1cf49e790">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Proporcionar la información requerida por <b>LA PROMOTORA EFV</b> en cumplimiento a lo establecido por la Unidad de Investigación Financiera UIF.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="261" width="30" height="20" forecolor="#192F57" uuid="46ed57e6-7919-447f-9717-bacc9e2d49ff">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[a)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="285" width="30" height="20" forecolor="#192F57" uuid="dd7188bc-08bf-4834-a7bb-b05cfb492f06">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[b)]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="147" width="450" height="20" forecolor="#192F57" uuid="a5b2dd5d-49ca-42c7-81e7-3d22ab67ed5c">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[A recibir información fidedigna, amplia, íntegra, clara, comprensible, oportuna y accesible.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="133" width="30" height="13" forecolor="#192F57" uuid="e45c5fb5-f8ab-4cc0-b3c1-9a84b7377617">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[a)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="146" width="30" height="13" forecolor="#192F57" uuid="bed8398e-774d-47ca-8175-11025bded082">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[b)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="159" width="30" height="13" forecolor="#192F57" uuid="c2e04f43-06fb-445f-a015-4dbb5e1a7f72">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[c)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="172" width="30" height="13" forecolor="#192F57" uuid="7c2e5dec-1577-4d1a-8dd4-3bc21d3038a8">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[d)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="185" width="30" height="13" forecolor="#192F57" uuid="2a885794-f1fe-4c9e-ab93-407ae671dc5c">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[e)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="198" width="30" height="13" forecolor="#192F57" uuid="b05c72bb-0379-4361-965f-16dee546af68">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[f)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="211" width="30" height="13" forecolor="#192F57" uuid="e556571c-f1ce-4567-8f70-eb36d4ab1db7">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[g)]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="346" width="450" height="32" forecolor="#192F57" uuid="d0050fbc-8baf-40f5-b5fa-f21e74ad3fb0">
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
				<reportElement x="40" y="402" width="30" height="13" forecolor="#192F57" uuid="83f6fa51-f698-4fbd-bccb-2362ec19a9d2">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[c)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="346" width="30" height="13" forecolor="#192F57" uuid="d9ddc03c-57ac-4179-8126-554774621873">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[a)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="374" width="30" height="13" forecolor="#192F57" uuid="81128426-de9d-4bf5-8afd-1f7851026360">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[b)]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="236" width="480" height="24" forecolor="#192F57" uuid="6b48b001-a1b2-4aab-9532-708b9467bf76">
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
				<reportElement x="40" y="325" width="480" height="20" forecolor="#192F57" uuid="9752ba30-00ae-4554-8c13-f0cd8b68922d">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>VIGÉSIMA PRIMERA: (OBLIGACIONES DE LA PROMOTORA E.F.V.)</b> Son las siguientes:]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="436" width="480" height="59" forecolor="#192F57" uuid="dce8aa05-9ab3-4f69-a8a1-b47243f12873">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>VIGÉSIMA SEGUNDA: (ACEPTACIÓN)</b>. LA PROMOTORA E.F.V. y el (los) CLIENTE (S) FINANCIERO (S), dan su plena conformidad con todas las cláusulas del presente contrato que surtirá efectos sin necesidad de reconocimiento de firmas y rúbricas, estampando sus firmas, en señal de aceptación.
]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="56" width="480" height="40" forecolor="#192F57" uuid="00cd78b9-0ce7-4b2c-8161-4af1cd590cb4">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA OCTAVA: (DOMICILIO ESPECIAL)</b> Todo aviso, notificación y en general toda comunicación escrita emitida por <b>LA PROMOTORA EFV</b>, será remitida a la última dirección que esté registrada en <b>LA PROMOTORA EFV</b>.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="102" width="480" height="34" forecolor="#192F57" uuid="30c42a5f-57f8-4f95-8dd9-56169eedabdc">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>DÉCIMA NOVENA: (DERECHOS DEL CLIENTE FINANCIERO)</b> El (Los) CLIENTE (S) FINANCIERO (S) tienen derecho a:]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="374" width="450" height="28" forecolor="#192F57" uuid="ca7ca032-590a-4cf0-aa87-28a4e709bceb">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[A requerimiento de la UIF, recabar y entregar información sobre las actividades comerciales y financieras del (de los) CLIENTE (S) FINANCIERO (S).]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="402" width="450" height="30" forecolor="#192F57" uuid="38e3c14e-21e9-49bf-86f3-75d73b0cbd4c">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[A solicitud del (de los) CLIENTE (S) FINANCIERO (S), emitir mensualmente un extracto de movimiento de su Cuenta de Caja de Ahorro, sin costo. ]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="285" width="450" height="30" forecolor="#192F57" uuid="daa7f388-e66e-46e4-a9bd-14d89889af02">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Dar aviso oportunamente y por escrito a <b>LA PROMOTORA EFV</b> sobre cualquier cambio de domicilio.]]></text>
			</staticText>
			<staticText>
				<reportElement x="70" y="211" width="450" height="18" forecolor="#192F57" uuid="bf68c97d-d2c6-4ca5-a525-8be5bd6c4d31">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Otros derechos reconocidos por disposiciones legales y reglamentarias.]]></text>
			</staticText>
			<staticText>
				<reportElement x="70" y="198" width="450" height="20" forecolor="#192F57" uuid="1be08e63-1ebf-43cd-886d-b06a548f53bd">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[A la terminación anticipada del presente contrato.]]></text>
			</staticText>
			<staticText>
				<reportElement x="70" y="172" width="450" height="16" forecolor="#192F57" uuid="edbc1618-7933-4914-8dc4-5c28a803a9be">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[A la confidencialidad salvo excepciones contenidas en la Ley.]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="133" width="450" height="14" forecolor="#192F57" uuid="bba0b3ee-65b8-41e3-a61f-27160b08a310">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Trato equitativo, sin discriminación por razones de edad, género, raza, religión o identidad cultural.]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="185" width="450" height="20" forecolor="#192F57" uuid="6dd2486f-0a6b-4965-bce6-2db89c4c5b03">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[A efectuar consultas, peticiones y solicitudes.]]></text>
			</staticText>
			<staticText>
				<reportElement x="71" y="159" width="450" height="18" forecolor="#192F57" uuid="c839b3de-f681-4478-ac88-1af67e809cbc">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Left" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Formular reclamos a través de los canales correspondientes.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="484" width="480" height="20" forecolor="#192F57" uuid="ab058203-29f9-4a56-ac6c-0d04e8d5eb82">
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
				<reportElement x="42" y="690" width="212" height="20" uuid="dc9bef47-54b2-4e9b-a4f4-5986a1a5f358">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Times New Roman" size="11" isBold="false"/>
				</textElement>
				<text><![CDATA[_______________________________________]]></text>
			</staticText>
			<staticText>
				<reportElement x="304" y="690" width="209" height="20" uuid="2f6ab964-93ab-456f-9d39-71ed64f7ced6">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Times New Roman" size="11" isBold="false"/>
				</textElement>
				<text><![CDATA[_______________________________________]]></text>
			</staticText>
			<image scaleImage="FillFrame">
				<reportElement x="41" y="597" width="213" height="97" uuid="91b41330-74d3-4bf5-8dc8-8330483510e2">
					<property name="com.jaspersoft.studio.unit.width" value="px"/>
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<imageExpression><![CDATA["C:\opt\wildfly-24_onboard\standalone\deployments\files.war\images\signOneshot.png"]]></imageExpression>
			</image>
			<image scaleImage="FillFrame">
				<reportElement x="304" y="595" width="213" height="97" uuid="8697e30e-070e-499c-bd73-b25deee8c25b">
					<property name="com.jaspersoft.studio.unit.width" value="px"/>
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<imageExpression><![CDATA["C:\opt\wildfly-24_onboard\standalone\deployments\files.war\images\signPromotora.png"]]></imageExpression>
			</image>
			<staticText>
				<reportElement x="42" y="724" width="212" height="20" forecolor="#192F57" uuid="f0376f4e-fdc3-477e-bf9c-c58907d92d6c">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[C.I. N° <b>P_numDocumento</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="704" width="214" height="20" forecolor="#192F57" uuid="19ad8cc3-9111-44e4-b210-9aae32c6c0b8">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>P_NombreCliente</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="304" y="704" width="213" height="20" forecolor="#192F57" uuid="f196ac5a-3331-4afa-a236-4388bc277782">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>RAUL PABLO RODRIGUEZ SALAZAR</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="304" y="724" width="213" height="20" forecolor="#192F57" uuid="44717ce3-b082-48f2-9dba-8da3f25b6009">
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
				<reportElement x="41" y="74" width="478" height="17" forecolor="#192F57" uuid="38e47c09-c168-49e6-9f37-cf0648b43d04">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9"/>
				</textElement>
				<text><![CDATA[_______________________________________________________________________________________]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="96" width="480" height="50" forecolor="#192F57" uuid="787fd0c0-4c04-4a2d-b5c4-170bfd7db832">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Por el presente documento, el (los) CLIENTE (S) FINANCIERO (S) descrito (s) el contrato principal, de manera voluntaria manifiesta su voluntad de afiliar su CUENTA DE CAJA DE AHORRO a un plan de tasa de interés diferenciado, conforme las condiciones siguientes:]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="246" width="480" height="50" forecolor="#192F57" uuid="830d4bd7-68de-4f07-a29f-cac54c4d7a95">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>SEGUNDA. - OBJETO:</b> El (los) CLIENTE (S) FINANCIERO (S) de forma voluntaria solicita afiliar la cuenta descrita en la cláusula primera a la campaña con plan de tasa de interés diferenciado, bajo las condiciones estipuladas en el presente documento.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="296" width="480" height="60" forecolor="#192F57" uuid="d6343f44-add3-4073-a136-b6974d0685ab">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>TERCERA. - PLAZO:</b> Se determina que la prestación del servicio, objeto del contrato es de plazo indefinido; sin embargo, las partes podrán establecer la terminación anticipada, conforme a lo previsto en el presente documento, Código de Comercio y normativa regulatoria de la Autoridad de Supervisión del Sistema Financiero (ASFI).]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="516" width="480" height="48" forecolor="#192F57" uuid="5d64a11e-8830-4587-8364-dea1f8fa0583">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>SEXTA.- CONFORMIDAD:</b> El (los) CLIENTE (S) FINANCIERO (S) expresamente manifiesta (n) su conformidad a las condiciones precedentes que le permiten beneficiarse con la tasa correspondiente al Plan de Ahorros al que se afilia.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="436" width="480" height="60" forecolor="#192F57" uuid="d0873f31-89bc-4297-9152-939453975362">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>QUINTA. - INTERÉS:</b> El interés a ser pagado por “LA PROMOTORA” E.F.V. a favor del (los) CLIENTE (S) FINANCIERO (S), dependerá de los saldos que éste mantuviera en la cuenta de caja de ahorro afiliada y del plan al que se encuentre afiliado, aplicando las tasas definidas en tarifario de <b>“LA PROMOTORA” E.F.V.</b> para cada plan de ahorros.]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="196" width="480" height="50" forecolor="#192F57" uuid="2c3b02ec-870f-4dc6-8330-61eae42b2ae3">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>“LA PROMOTORA” E.F.V.</b>, mantiene distintos planes promocionales de tasa de interés que permiten al (a los) CLIENTE (S) FINANCIERO (S) tener un mayor interés y beneficios por sus ahorros, otorgando una tasa de interés mayor por un periodo de tiempo limitado y bajo determinadas condiciones.]]></text>
			</staticText>
			<staticText>
				<reportElement x="172" y="70" width="189" height="22" forecolor="#192F57" uuid="9b4324fc-d552-4057-afbe-c2c17eda9cdb">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<textElement textAlignment="Center">
					<font fontName="Verdana" size="11" isBold="true"/>
				</textElement>
				<text><![CDATA[ANEXO  I]]></text>
			</staticText>
			<staticText>
				<reportElement x="76" y="27" width="400" height="17" forecolor="#192F57" uuid="79f074e2-10af-4331-a5d9-75846ded764a">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9"/>
				</textElement>
				<text><![CDATA[_______________________________________________________________________]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="356" width="480" height="20" forecolor="#192F57" uuid="b2913405-0f8a-4bf1-be6f-7462b17f9f0b">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Las condiciones de tasa de interés diferenciado entran en vigor a partir de la afiliación. ]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="496" width="480" height="20" forecolor="#192F57" uuid="90e2f8f3-a371-4784-9bb2-ea4583d5b6ca">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[El interés será abonado de forma mensual sobre el saldo promedio al cierre del mes anterior al pago.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="52" width="478" height="22" forecolor="#192F57" uuid="9b66cf60-ebbd-45d2-abdf-af369777fde4">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<textElement textAlignment="Center">
					<font fontName="Verdana" size="11" isBold="true"/>
				</textElement>
				<text><![CDATA[PLAN DE TASA DE INTERÉS DIFERENCIADO "PROACTIVA"]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="149" width="480" height="56" forecolor="#192F57" uuid="21d06e40-7867-4f4b-a09d-b26b008e248a">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>PRIMERA. - ANTECEDENTES:</b> El (los) CLIENTE (S) FINANCIERO (S) a la fecha, mantiene(n) en <b>“LA PROMOTORA” E.F.V.</b> la cuenta de caja de ahorro en <b>P_tipo_moneda</b>  N°<b>P_cuentaCore</b>, misma que recibe un interés mensual de acuerdo a la tasa estipulada en Tarifario.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="377" width="480" height="60" forecolor="#192F57" uuid="6410cfaf-6459-4c5e-991d-e3956441ce5c">
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
				<reportElement x="41" y="100" width="480" height="29" forecolor="#192F57" uuid="d714eb0a-1bd4-4686-b81a-6a52e2f8d95e">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[La caja de ahorro <b>PROACTIVA</b> ha sido creada con el objetivo de otorgar, Funcionalidad y digitalización de los servicios financieros, a familias de 2 a 5 miembros.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="167" width="480" height="20" forecolor="#192F57" uuid="c188c4b0-b442-4d0a-8551-33016d7adbd5">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Tasa: 2.5%]]></text>
			</staticText>
			<staticText>
				<reportElement x="42" y="47" width="478" height="22" forecolor="#192F57" uuid="888c0046-654f-4edf-9e51-922d3e6a3882">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<textElement textAlignment="Center">
					<font fontName="Verdana" size="11" isBold="true"/>
				</textElement>
				<text><![CDATA[ANEXO  II]]></text>
			</staticText>
			<staticText>
				<reportElement x="81" y="25" width="400" height="17" forecolor="#192F57" uuid="7d9f11b7-042d-4a65-a588-5f437e4fac2d">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9"/>
				</textElement>
				<text><![CDATA[_______________________________________________________________________]]></text>
			</staticText>
			<staticText>
				<reportElement x="81" y="56" width="400" height="17" forecolor="#192F57" uuid="45f272d9-7db4-4292-85dd-15f43620c5de">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9"/>
				</textElement>
				<text><![CDATA[_______________________________________________________________________]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="82" width="480" height="19" forecolor="#192F57" uuid="2d45fc0b-ef51-4caf-b6be-9cf07ec362a7">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>1.-ANTECEDENTES</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="136" width="480" height="19" forecolor="#192F57" uuid="505ee07d-19ef-4150-9192-0504e1819563">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>2.- CONDICIONES COMERCIALES</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="39" y="234" width="480" height="19" forecolor="#192F57" uuid="a6fc7213-f8ce-461f-810a-8a2942c51edc">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>3.-BENEFICIOS</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="355" width="480" height="19" forecolor="#192F57" uuid="0a1708c4-753f-4151-88a9-1712430cb381">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>4.- ASISTENCIAS</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="151" width="480" height="20" forecolor="#192F57" uuid="4ecd9968-b263-4196-a0f4-5f618c24adab">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Caja de ahorro en bolivianos]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="183" width="480" height="20" forecolor="#192F57" uuid="7a951aed-4301-4a51-acae-06912ffaefc5">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Monto mínimo de apertura: 500 Bs.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="198" width="480" height="20" forecolor="#192F57" uuid="be866317-35e8-4847-bcce-b1a09e340450">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Pignoración: 200 Bs.]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="214" width="480" height="20" forecolor="#192F57" uuid="4b9d860d-e9b2-4ace-a129-55e066b943dd">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Sin condiciones de retiros]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="264" width="480" height="20" forecolor="#192F57" uuid="047d1e57-6799-4ea6-9e92-7c3f21b7628a">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Compras por internet]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="249" width="480" height="20" forecolor="#192F57" uuid="e9a5b60b-9119-4d66-98f0-baa579cb474d">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Cuenta alterna]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="280" width="480" height="20" forecolor="#192F57" uuid="bed7279e-739a-452d-98a9-7915791df8b0">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Descuentos en comercios afiliados]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="296" width="480" height="20" forecolor="#192F57" uuid="31964a38-cf42-482f-ab3b-02afdb2334f7">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Acceso a Tarjeta de crédito]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="313" width="480" height="20" forecolor="#192F57" uuid="40c1dcde-751c-4838-881c-fab278b8e67b">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Tarjeta de débito con todos sus beneficios]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="330" width="480" height="20" forecolor="#192F57" uuid="351c6e9a-d83f-4e45-97a8-5c2e812e8846">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[•	Acceso a banca digital]]></text>
			</staticText>
			<rectangle>
				<reportElement x="48" y="371" width="470" height="188" forecolor="#192F57" uuid="1b31fdea-7478-49dc-b59a-c8c4d06dbc3d"/>
			</rectangle>
			<line>
				<reportElement x="305" y="373" width="1" height="185" forecolor="#192F57" uuid="4492bb88-ffe2-46b8-8149-371e72c63f17"/>
			</line>
			<line>
				<reportElement x="48" y="393" width="470" height="1" forecolor="#192F57" uuid="920cf87d-0fca-467c-9a57-78e9a566e2b2">
					<property name="com.jaspersoft.studio.unit.width" value="px"/>
				</reportElement>
			</line>
			<line>
				<reportElement x="48" y="439" width="470" height="1" forecolor="#192F57" uuid="cd275f34-e3e0-4e4d-bf0c-061d1a3af922">
					<property name="com.jaspersoft.studio.unit.width" value="px"/>
				</reportElement>
			</line>
			<line>
				<reportElement x="49" y="459" width="470" height="1" forecolor="#192F57" uuid="0a5c11bb-7055-413d-9f44-8c99ccfbe638">
					<property name="com.jaspersoft.studio.unit.width" value="px"/>
				</reportElement>
			</line>
			<line>
				<reportElement x="49" y="478" width="470" height="1" forecolor="#192F57" uuid="e46b9797-5514-4df0-a053-2d63b7f73e90">
					<property name="com.jaspersoft.studio.unit.width" value="px"/>
				</reportElement>
			</line>
			<line>
				<reportElement x="48" y="502" width="470" height="1" forecolor="#192F57" uuid="8d532a10-2f79-4257-8579-c3e1b757ffe7">
					<property name="com.jaspersoft.studio.unit.width" value="px"/>
				</reportElement>
			</line>
			<staticText>
				<reportElement x="60" y="378" width="184" height="19" forecolor="#192F57" uuid="270c872c-b708-48a0-968f-78d0814c8029">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>SERVICIOS</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="322" y="378" width="184" height="19" forecolor="#192F57" uuid="6e687824-9337-43e0-a85d-5ea6a94b3794">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>TOPE DE USO</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="53" y="394" width="256" height="19" forecolor="#192F57" uuid="f2b81555-9ac6-4683-a5aa-c7eba43d47c8">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Servicio consulta medico en línea – Telemedicina]]></text>
			</staticText>
			<staticText>
				<reportElement x="53" y="408" width="256" height="19" forecolor="#192F57" uuid="8a2e09ae-6c2f-4bf4-974f-68c846df86ef">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Times New Roman" size="11" isBold="false"/>
				</textElement>
				<text><![CDATA[(cobertura en Medina General, pediatría y Geriatría)]]></text>
			</staticText>
			<staticText>
				<reportElement x="53" y="424" width="256" height="19" forecolor="#192F57" uuid="d7f84661-267a-44fb-845e-3d384340d6a2">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[(Aplica titular + beneficiarios)]]></text>
			</staticText>
			<staticText>
				<reportElement x="53" y="441" width="256" height="19" forecolor="#192F57" uuid="d8454d38-1af5-49b8-b9de-6e6b73b7b0db">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Servicio de plomería al hogar]]></text>
			</staticText>
			<staticText>
				<reportElement x="53" y="462" width="256" height="19" forecolor="#192F57" uuid="c34bc600-b831-4d2d-89fc-30fd530bf49c">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Servicio de electricista al hogar]]></text>
			</staticText>
			<staticText>
				<reportElement x="53" y="484" width="256" height="19" forecolor="#192F57" uuid="2854fcd1-f655-46f9-a5be-e499b113b98c">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Servicio de cerrajería al hogar]]></text>
			</staticText>
			<staticText>
				<reportElement x="54" y="506" width="256" height="19" forecolor="#192F57" uuid="e169371c-1ee3-444d-ac66-d1566f8dbf02">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[Consulta de Veterinaria en línea -Tele consulta]]></text>
			</staticText>
			<staticText>
				<reportElement x="54" y="524" width="256" height="19" forecolor="#192F57" uuid="a7017976-feea-4f6d-95da-6998923aac42">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[(Cobertura para la mascota)]]></text>
			</staticText>
			<staticText>
				<reportElement x="54" y="540" width="256" height="19" forecolor="#192F57" uuid="97e442a8-c460-4f47-bceb-3b2c791111d2">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[(aplica a solo animales domésticos)]]></text>
			</staticText>
			<staticText>
				<reportElement x="310" y="397" width="208" height="19" forecolor="#192F57" uuid="b62480be-204a-49a0-8c86-e700642c9270">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[2 veces al mes/Max. 24 consultas anuales]]></text>
			</staticText>
			<staticText>
				<reportElement x="310" y="441" width="208" height="19" forecolor="#192F57" uuid="3010f292-c2e5-4178-a7e1-dd9c15bf1bb2">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[1 vez al mes -12 eventos anuales]]></text>
			</staticText>
			<staticText>
				<reportElement x="310" y="462" width="208" height="19" forecolor="#192F57" uuid="c6a1fa98-427f-45e6-b9dd-dfe012fdd2eb">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[1 vez al mes -12 eventos anuales]]></text>
			</staticText>
			<staticText>
				<reportElement x="310" y="484" width="208" height="19" forecolor="#192F57" uuid="b1016409-e157-487a-968b-01d01f356d10">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[1 vez al mes -12 eventos anuales]]></text>
			</staticText>
			<staticText>
				<reportElement x="310" y="505" width="208" height="19" forecolor="#192F57" uuid="03d8c7b3-69af-4f36-8e6c-219a086098ca">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[6 eventos anuales]]></text>
			</staticText>
			<staticText>
				<reportElement x="42" y="713" width="212" height="20" uuid="54d60022-fd69-4477-a886-7fa7fe0c2da5">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Times New Roman" size="11" isBold="false"/>
				</textElement>
				<text><![CDATA[_______________________________________]]></text>
			</staticText>
			<staticText>
				<reportElement x="304" y="713" width="209" height="20" uuid="bececd34-e244-49b9-861f-1c27c907e813">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Justified" markup="html">
					<font fontName="Times New Roman" size="11" isBold="false"/>
				</textElement>
				<text><![CDATA[_______________________________________]]></text>
			</staticText>
			<image scaleImage="FillFrame">
				<reportElement x="41" y="620" width="213" height="97" uuid="52c7a41f-8666-4879-9b06-ea312413cccb">
					<property name="com.jaspersoft.studio.unit.width" value="px"/>
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<imageExpression><![CDATA["C:\opt\wildfly-24_onboard\standalone\deployments\files.war\images\signOneshot.png"]]></imageExpression>
			</image>
			<image scaleImage="FillFrame">
				<reportElement x="304" y="618" width="213" height="97" uuid="12ea1006-c58a-4169-ac69-d340dcac9b28">
					<property name="com.jaspersoft.studio.unit.width" value="px"/>
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<imageExpression><![CDATA["C:\opt\wildfly-24_onboard\standalone\deployments\files.war\images\signPromotora.png"]]></imageExpression>
			</image>
			<staticText>
				<reportElement x="42" y="747" width="212" height="20" forecolor="#192F57" uuid="7f31559d-842f-4637-83e9-e18703a1f999">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[C.I. N° <b>P_numDocumento</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="40" y="727" width="214" height="20" forecolor="#192F57" uuid="418914db-041b-4506-9e30-09887f4ba342">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>P_NombreCliente</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="304" y="727" width="213" height="20" forecolor="#192F57" uuid="72c59580-858c-45ac-8f8f-303dc98b72c5">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[<b>RAUL PABLO RODRIGUEZ SALAZAR</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="304" y="747" width="213" height="20" forecolor="#192F57" uuid="dc2afdf9-4ab4-4130-b013-6867e5423ab6">
					<property name="com.jaspersoft.studio.unit.height" value="px"/>
				</reportElement>
				<box leftPadding="5"/>
				<textElement textAlignment="Center" markup="html">
					<font fontName="Verdana" size="9" isBold="false"/>
				</textElement>
				<text><![CDATA[C.I. N° <b>3754171 CB</b>]]></text>
			</staticText>
			<staticText>
				<reportElement x="41" y="574" width="480" height="20" forecolor="#192F57" uuid="77302ede-7d04-42a4-870c-ab2c2851891f">
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