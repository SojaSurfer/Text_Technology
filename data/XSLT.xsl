<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:tei="http://www.tei-c.org/ns/1.0">

  <!-- Parameters for external TEI documents -->
  <xsl:param name="listPersonDoc" select="'ParlaMint-GB-listPerson.xml'"/>
  <xsl:param name="listOrgDoc" select="'ParlaMint-GB-listOrg.xml'"/>

  <!-- Key to group speech units by speaker ID, only for Yemen debates -->
  <xsl:key name="speechesByWho" 
           match="tei:u[ancestor::tei:div[@type='debateSection']/tei:head[contains(., 'Yemen')]]" 
           use="@who"/>

  <xsl:template match="/">
    <debate>
      <!-- Extract the document date -->
      <date>
        <xsl:value-of select="//tei:teiHeader//tei:date/@when"/>
      </date>

      <!-- Extract the chamber info from meeting/@corresp -->
      <chamber>
        <xsl:variable name="chamberRef" select="//tei:meeting/@corresp"/>
        <xsl:choose>
          <xsl:when test="$chamberRef = '#parliament.HC'">House of Commons</xsl:when>
          <xsl:when test="$chamberRef = '#parliament.HL'">House of Lords</xsl:when>
          <xsl:otherwise><xsl:value-of select="$chamberRef"/></xsl:otherwise>
        </xsl:choose>
      </chamber>

      <!-- Process each unique speaker in a Yemen debate -->

      <xsl:for-each select="//tei:u[ancestor::tei:div[@type='debateSection']/tei:head[contains(., 'Yemen')]]
                            [generate-id() = generate-id(key('speechesByWho', @who)[1])]">

        <xsl:variable name="whoID" select="substring-after(@who, '#')"/>
        <xsl:variable name="person"
                      select="document($listPersonDoc)//tei:person[@xml:id=$whoID]"/>
        <xsl:variable name="partyRef" 
                      select="$person/tei:affiliation[starts-with(@ref, '#party')][1]/@ref"/>
        <xsl:variable name="partyID" select="substring-after($partyRef, '#')"/>
        <xsl:variable name="partyOrg"
                      select="document($listOrgDoc)//tei:org[@xml:id=$partyID]"/>
        <xsl:variable name="parliamentRef"
                      select="$person/tei:affiliation[starts-with(@ref, '#parliament')][1]/@ref"/>

        <speaker>
          <id><xsl:value-of select="@who"/></id>
          <name>
            <xsl:value-of select="normalize-space(concat($person/tei:persName/tei:forename, ' ', $person/tei:persName/tei:surname))"/>
          </name>
          <sex><xsl:value-of select="$person/tei:sex/@value"/></sex>

          <parliament>
            <xsl:choose>
              <xsl:when test="$parliamentRef = '#parliament.HC'">House of Commons</xsl:when>
              <xsl:when test="$parliamentRef = '#parliament.HL'">House of Lords</xsl:when>
              <xsl:otherwise><xsl:value-of select="$parliamentRef"/></xsl:otherwise>
            </xsl:choose>
          </parliament>

          <party>
            <xsl:value-of select="$partyOrg/tei:orgName[@full='yes']"/>
          </party>

          <contributions>
            <xsl:value-of select="count(key('speechesByWho', @who))"/>
          </contributions>
        </speaker>

      </xsl:for-each>

    </debate>
  </xsl:template>

</xsl:stylesheet>
