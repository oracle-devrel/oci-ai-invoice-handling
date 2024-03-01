<?xml version = '1.0' encoding = 'UTF-8'?>
<!--User Editing Not Allowed for Sections: oracle-xsl-mapper:schema, top level xsl:params, version attribute of the stylesheet element. GENERATED BY OIC MAPPER, DO NOT DELETE THIS LINE-->
<!--User Editing Not Allowed for Sections: oracle-xsl-mapper:schema, top level xsl:params, version attribute of the stylesheet element. GENERATED BY OIC MAPPER, DO NOT DELETE THIS LINE--><xsl:stylesheet version="2.0" xml:id="id_1" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:nssrcmpr="http://xmlns.oracle.com/cloud/adapter/ocistreaming/subscribeStream_REQUEST/types" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:nstrgmpr="http://xmlns.oracle.com/cloud/adapter/collocatedics/InvokeDocumentUnderstanding_REQUEST/types" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes=" ora nssrcmpr oracle-xsl-mapper dvm oraext xsi xsd fn xp20 xsl ignore01 nsmpr0 nsmpr1 nsmpr2" xmlns:ignore01="http://www.oracle.com/XSL/Transform/java" ignore01:ignorexmlids="true" xmlns:xml="http://www.w3.org/XML/1998/namespace" xmlns:nsmpr0="http://xmlns.oracle.com/cloud/adapter/ociobjectstorage/DownloadObject/types" xmlns:nsmpr1="http://xmlns.oracle.com/cloud/adapter/stagefile/WriteFile_REQUEST/types" xmlns:nsmpr2="http://www.oracle.com/2014/03/ic/integration/metadata" xmlns:ns28="http://xmlns.oracle.com/cloud/openapi/cloudobject/collocatedics/InvokeDocumentUnderstanding_REQUEST" xmlns:ns29="http://www.oracle.rest.converters.autogeneratedns.com/collocatedics/InvokeDocumentUnderstanding_REQUEST" xmlns:ns25="http://xmlns.oracle.com/pcbpel/adapter/opaque/">
   <oracle-xsl-mapper:schema xml:id="id_2">
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources xml:id="id_3">
         <oracle-xsl-mapper:source type="WSDL" xml:id="id_4">
            <oracle-xsl-mapper:schema location="../../application_13/outbound_14/resourcegroup_15/subscribeStream_REQUEST.wsdl" xml:id="id_5"/>
            <oracle-xsl-mapper:rootElement name="Receive" namespace="http://xmlns.oracle.com/cloud/adapter/ocistreaming/subscribeStream_REQUEST/types" xml:id="id_6"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="WSDL" xml:id="id_21">
            <oracle-xsl-mapper:schema location="../../processor_37/resourcegroup_38/WriteFile_REQUEST.wsdl" xml:id="id_22"/>
            <oracle-xsl-mapper:rootElement name="ReadResponse" namespace="http://xmlns.oracle.com/cloud/adapter/stagefile/WriteFile_REQUEST/types" xml:id="id_23"/>
            <oracle-xsl-mapper:param name="WriteFile" xml:id="id_24"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets xml:id="id_7">
         <oracle-xsl-mapper:target type="WSDL" xml:id="id_8">
            <oracle-xsl-mapper:schema location="../../application_47/inbound_48/resourcegroup_49/InvokeDocumentUnderstanding_REQUEST.wsdl" xml:id="id_9"/>
            <oracle-xsl-mapper:rootElement name="POST" namespace="http://xmlns.oracle.com/cloud/adapter/collocatedics/InvokeDocumentUnderstanding_REQUEST/types" xml:id="id_10"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
   </oracle-xsl-mapper:schema>
   <xsl:param name="WriteFile" xml:id="id_31"/>
   <xsl:template match="/" xml:id="id_11">
      <nstrgmpr:POST xml:id="id_12">
         <nstrgmpr:QueryParameters xml:id="id_36">
            <ns28:tracker xml:id="id_37">
               <xsl:value-of xml:id="id_38" select="&quot;HQ-Test-101&quot;"/>
            </ns28:tracker>
         </nstrgmpr:QueryParameters>
         <nstrgmpr:components.schemas.request-wrapper xml:id="id_39">
            <ns29:InLineData xml:id="id_40">
               <xsl:value-of xml:id="id_41" select="$WriteFile/nsmpr1:ReadResponse/ns25:opaqueElement"/>
            </ns29:InLineData>
         </nstrgmpr:components.schemas.request-wrapper>
      </nstrgmpr:POST>
   </xsl:template>
</xsl:stylesheet>