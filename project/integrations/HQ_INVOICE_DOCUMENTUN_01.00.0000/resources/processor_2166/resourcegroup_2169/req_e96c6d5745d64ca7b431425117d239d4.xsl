<?xml version = '1.0' encoding = 'UTF-8'?>
<!--User Editing Not Allowed for Sections: oracle-xsl-mapper:schema, top level xsl:params, version attribute of the stylesheet element. GENERATED BY OIC MAPPER, DO NOT DELETE THIS LINE-->
<!--User Editing Not Allowed for Sections: oracle-xsl-mapper:schema, top level xsl:params, version attribute of the stylesheet element. GENERATED BY OIC MAPPER, DO NOT DELETE THIS LINE--><xsl:stylesheet version="2.0" xml:id="id_1" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:nssrcmpr="http://xmlns.oracle.com/cloud/adapter/REST/execute_REQUEST/types" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:nstrgmpr="http://xmlns.oracle.com/cloud/adapter/erp/CreateInvoiceERPCloud_REQUEST/types" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes=" ora oracle-xsl-mapper dvm nssrcmpr oraext xsi xsd fn xp20 xsl ignore01 nsmpr0 nsmpr1 nsmpr2 nsmpr3 nsmpr4 ns48 nsmpr4 ns48 nsmpr4 ns29 nssrcmpr" xmlns:ignore01="http://www.oracle.com/XSL/Transform/java" ignore01:ignorexmlids="true" xmlns:xml="http://www.w3.org/XML/1998/namespace" xmlns:nsmpr0="http://xmlns.oracle.com/cloud/adapter/REST/createAIProcessorJob_REQUEST/types" xmlns:nsmpr1="http://xmlns.oracle.com/cloud/adapter/REST/getResultFromObjectStorage_REQUEST/types" xmlns:nsmpr2="http://www.oracle.com/2014/03/ic/integration/metadata" xmlns:nsmpr3="http://xmlns.oracle.com/cloud/adapter/stagefile/stageInputFile_REQUEST/types" xmlns:nsmpr4="http://xmlns.oracle.com/cloud/adapter/stagefile/stageReadResult_REQUEST/types" xmlns:ns54="http://xmlns.oracle.com/cloud/adapters/fscmRestApp" xmlns:ns48="http://xmlns.oracle.com/cloud/adapter/stagefile/stageReadResult/types" xmlns:ns52="http://xmlns.oracle.com/cloud/adapters/fscmRestApp/Invoices" xmlns:ns29="http://xml.oracle.com/types/REST/execute_REQUEST">
   <oracle-xsl-mapper:schema xml:id="id_2">
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources xml:id="id_3">
         <oracle-xsl-mapper:source type="WSDL" xml:id="id_4">
            <oracle-xsl-mapper:schema location="../../application_23/outbound_24/resourcegroup_25/execute_REQUEST.wsdl" xml:id="id_5"/>
            <oracle-xsl-mapper:rootElement name="execute" namespace="http://xmlns.oracle.com/cloud/adapter/REST/execute_REQUEST/types" xml:id="id_6"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="WSDL" xml:id="id_37">
            <oracle-xsl-mapper:schema location="../../processor_1459/resourcegroup_1460/stageReadResult_REQUEST.wsdl" xml:id="id_38"/>
            <oracle-xsl-mapper:rootElement name="ReadResponse" namespace="http://xmlns.oracle.com/cloud/adapter/stagefile/stageReadResult_REQUEST/types" xml:id="id_39"/>
            <oracle-xsl-mapper:param name="stageReadResult" xml:id="id_40"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets xml:id="id_7">
         <oracle-xsl-mapper:target type="WSDL" xml:id="id_8">
            <oracle-xsl-mapper:schema location="../../application_2154/inbound_2155/resourcegroup_2156/CreateInvoiceERPCloud_REQUEST.wsdl" xml:id="id_9"/>
            <oracle-xsl-mapper:rootElement name="create" namespace="http://xmlns.oracle.com/cloud/adapter/erp/CreateInvoiceERPCloud_REQUEST/types" xml:id="id_10"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
   </oracle-xsl-mapper:schema>
   <xsl:param name="stageReadResult" xml:id="id_56"/>
   <xsl:template match="/" xml:id="id_11">
      <nstrgmpr:create xml:id="id_12">
         <nstrgmpr:Invoices xml:id="id_60">
            <ns54:InvoiceNumber xml:id="id_61">
               <xsl:value-of xml:id="id_62" select="$stageReadResult/nsmpr4:ReadResponse/ns48:request-wrapper/ns48:pages/ns48:documentFields[ns48:fieldLabel/ns48:name=&quot;InvoiceId&quot;]/ns48:fieldValue/ns48:value"/>
            </ns54:InvoiceNumber>
            <ns54:InvoiceCurrency xml:id="id_63">
               <xsl:value-of xml:id="id_64" select="&quot;USD&quot;"/>
            </ns54:InvoiceCurrency>
            <ns54:InvoiceAmount xml:id="id_65">
               <xsl:value-of xml:id="id_66" select="$stageReadResult/nsmpr4:ReadResponse/ns48:request-wrapper/ns48:pages/ns48:documentFields[ns48:fieldLabel/ns48:name=&quot;InvoiceTotal&quot;]/ns48:fieldValue/ns48:value"/>
            </ns54:InvoiceAmount>
            <ns54:InvoiceDate xml:id="id_67">
               <xsl:value-of xml:id="id_68" select="xp20:format-dateTime ($stageReadResult/nsmpr4:ReadResponse/ns48:request-wrapper/ns48:pages/ns48:documentFields[(ns48:fieldLabel/ns48:name = &quot;InvoiceDate&quot;)]/ns48:fieldValue/ns48:value, &quot;[Y0001]-[M01]-[D01]&quot; )"/>
            </ns54:InvoiceDate>
            <ns54:BusinessUnit xml:id="id_69">
               <xsl:value-of xml:id="id_70" select="&quot;US1 Business Unit&quot;"/>
            </ns54:BusinessUnit>
            <ns54:Supplier xml:id="id_71">
               <xsl:value-of xml:id="id_72" select="$stageReadResult/nsmpr4:ReadResponse/ns48:request-wrapper/ns48:pages/ns48:documentFields[ns48:fieldLabel/ns48:name=&quot;VendorName&quot;]/ns48:fieldValue/ns48:value"/>
            </ns54:Supplier>
            <ns54:SupplierSite xml:id="id_73">
               <xsl:value-of xml:id="id_74" select="&quot;JGA US1&quot;"/>
            </ns54:SupplierSite>
            <ns54:AccountingDate xml:id="id_75">
               <xsl:value-of xml:id="id_76" select="&quot;2022-12-12&quot;"/>
            </ns54:AccountingDate>
            <ns54:InvoiceType xml:id="id_77">
               <xsl:value-of xml:id="id_78" select="&quot;Standard&quot;"/>
            </ns54:InvoiceType>
            <ns54:ControlAmount xml:id="id_79">
               <xsl:value-of xml:id="id_80" select="$stageReadResult/nsmpr4:ReadResponse/ns48:request-wrapper/ns48:pages/ns48:documentFields[ns48:fieldLabel/ns48:name=&quot;TotalTax&quot;]/ns48:fieldValue/ns48:value"/>
            </ns54:ControlAmount>
            <xsl:for-each xml:id="id_135" select="$stageReadResult/nsmpr4:ReadResponse/ns48:request-wrapper/ns48:pages/ns48:documentFields[ns48:fieldLabel/ns48:name=&quot;Items&quot;]/ns48:fieldValue/ns48:items">
               <ns54:invoiceLines xml:id="id_81">
                  <ns52:LineNumber xml:id="id_82">
                     <xsl:value-of xml:id="id_83" select="position ()"/>
                  </ns52:LineNumber>
                  <ns52:LineAmount xml:id="id_84">
                     <xsl:value-of xml:id="id_85" select="ns48:fieldValue/ns48:items[ns48:fieldLabel/ns48:name=&quot;Amount&quot;]/ns48:fieldValue/ns48:value"/>
                  </ns52:LineAmount>
                  <ns52:LineType xml:id="id_86">
                     <xsl:value-of xml:id="id_87" select="&quot;Item&quot;"/>
                  </ns52:LineType>
                  <ns52:Description xml:id="id_88">
                     <xsl:value-of xml:id="id_178" select="ns48:fieldValue/ns48:items[ns48:fieldLabel/ns48:name=&quot;Description&quot;]/ns48:fieldValue/ns48:value"/>
                  </ns52:Description>
                  <ns52:Quantity xml:id="id_90">
                     <xsl:value-of xml:id="id_91" select="ns48:fieldValue/ns48:items[ns48:fieldLabel/ns48:name=&quot;Quantity&quot;]/ns48:fieldValue/ns48:value"/>
                  </ns52:Quantity>
               </ns54:invoiceLines>
            </xsl:for-each>
         </nstrgmpr:Invoices>
      </nstrgmpr:create>
   </xsl:template>
</xsl:stylesheet>