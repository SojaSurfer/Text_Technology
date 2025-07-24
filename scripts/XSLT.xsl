<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:tei="http://www.tei-c.org/ns/1.0">
  
  <!--
    XSLT Stylesheet for Extracting Parliamentary Debate Metadata:

    This stylesheet processes TEI-encoded recordings of parliamentary debates,
    filters debate sections concerning "Yemen", and produces a structured
    summary including debate date, chamber information, and speaker information and contributions.
  -->

  <!-- Parameters to access external TEI documents -->
  <xsl:param name="listPersonDoc" select="'ParlaMint-GB-listPerson.xml'"/>
  <xsl:param name="listOrgDoc" select="'ParlaMint-GB-listOrg.xml'"/>

  <!--
    Defines a key that groups all speech units (<u>) by speaker identifier (@who)
    for debate sections whose header contains the keyword "Yemen".
  -->
  <xsl:key name="speechesByWho" match="tei:u[ancestor::tei:div[@type='debateSection']/tei:head[contains(., 'Yemen')]]" use="@who"/>

  <!-- Root template -->
  <xsl:template match="/">
    <debate>

      <!-- Extract the document date / not the access date-->
      <date>
        <xsl:value-of select="//tei:sourceDesc//tei:date/@when"/>
      </date>

      <!--
      Extract the chamber info from meeting/@corresp (where was the debate held?)
      and map identifiers to readable names.
      -->
      <chamber>
        <xsl:variable name="chamberRef" select="//tei:meeting/@corresp"/>
        <xsl:choose>
          <xsl:when test="$chamberRef = '#parliament.HC'">House of Commons</xsl:when>
          <xsl:when test="$chamberRef = '#parliament.HL'">House of Lords</xsl:when>
          <xsl:otherwise><xsl:value-of select="$chamberRef"/></xsl:otherwise>
        </xsl:choose>
      </chamber>

      <!-- Loop over each unique speaker in a Yemen debate using the key to generate-id (to ensure one entry per speaker)-->
      <xsl:for-each select="//tei:u[ancestor::tei:div[@type='debateSection']/tei:head[contains(., 'Yemen')]] [generate-id() = generate-id(key('speechesByWho', @who)[1])]">
        
        <!-- Extract speaker identifiers and look up their person and party details -->
        <xsl:variable name="whoID" select="substring-after(@who, '#')"/>
        <xsl:variable name="person" select="document($listPersonDoc)//tei:person[@xml:id=$whoID]"/>
        <xsl:variable name="partyRef" select="$person/tei:affiliation[starts-with(@ref, '#party')][1]/@ref"/>
        <xsl:variable name="partyID" select="substring-after($partyRef, '#')"/>
        <xsl:variable name="partyOrg" select="document($listOrgDoc)//tei:org[@xml:id=$partyID]"/>
        <xsl:variable name="parliamentRef" select="$person/tei:affiliation[starts-with(@ref, '#parliament')][1]/@ref"/>

        <!-- Output a structured <speaker> element for each identified speaker -->
        <speaker>
          <!-- Speaker reference ID as found in the debate text -->
          <id><xsl:value-of select="@who"/></id>
          <!-- Full speaker name: concatenated forename and surname with normalized spacing -->
          <name>
            <xsl:value-of select="normalize-space(concat($person/tei:persName/tei:forename, ' ', $person/tei:persName/tei:surname))"/>
          </name>

          <!-- Sex from @value on <sex> -->
          <sex><xsl:value-of select="$person/tei:sex/@value"/></sex>
  
          <!-- Parliament house resolved to readable text with xsl:when (which parliament is the speaker affiliated with)-->
          <parliament>
            <xsl:choose>
              <xsl:when test="$parliamentRef = '#parliament.HC'">House of Commons</xsl:when>
              <xsl:when test="$parliamentRef = '#parliament.HL'">House of Lords</xsl:when>
              <xsl:otherwise><xsl:value-of select="$parliamentRef"/></xsl:otherwise>
            </xsl:choose>
          </parliament>
  
          <!-- Party affiliation: full name from the organization list document with @full='yes' -->
          <party>
            <xsl:value-of select="$partyOrg/tei:orgName[@full='yes']"/>
          </party>

          <!-- Count how many <u> nodes belong to this speaker -->
          <contributions>
            <xsl:value-of select="count(key('speechesByWho', @who))"/>
          </contributions>
        </speaker>

      </xsl:for-each>

    </debate>
  </xsl:template>

</xsl:stylesheet>
