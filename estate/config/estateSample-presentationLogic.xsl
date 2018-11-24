<?xml version="1.0"?>
<?HTMLTemplate version="0.1"?>
<!--================================================================================-->
<!--  This file was generated by IBM's HTMLToXSL Generator.                         -->
<!--================================================================================-->
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <?HTMLTemplate version="0.1"?>
  

  <!--================================================================================-->
  <!--  printIncoming                                                                 -->
  <!--================================================================================-->
  <xsl:template name="printIncoming">
    <html>
      <head>
        <meta content="text/html; charset=ISO-8859-1" http-equiv="Content-Type"/>
        <meta content="IBM WebSphere Studio" name="GENERATOR"/>
        <link rel="stylesheet" type="text/css" href="../../../jars/config/mystyle.css"/>
        
      </head>
      <body>
        
        
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tbody>
            <tr>
              <td>
                <xsl:call-template name="handleEstate"/>
              </td>
            </tr>
          </tbody>
        </table>
        
        
        
          <table border="0" cellpadding="0" cellspacing="0">
            <tbody>
              <tr>
                <td>
                  
                    <xsl:call-template name="handleLoadDetails"/>
                  
                </td>
              </tr>
            </tbody>
          </table>
        
      </body>
    </html>
  </xsl:template>
  

  <!--================================================================================-->
  <!--  printEstate                                                                   -->
  <!--================================================================================-->
  <xsl:template name="printEstate">
    <xsl:param name="CoupContractor"/>
    <xsl:param name="SyNo"/>
    <xsl:param name="PlantAddress"/>
    <xsl:param name="PlanterName"/>
    <xsl:param name="tcft"/>
    <xsl:param name="discount"/>
    <table class="others" align="left" border="0">
      <tbody>
        <tr>
          <td>
            <b>Name of the Planter</b>
          </td>
          <td>
            :&#160;&#160; <xsl:value-of select="$PlanterName"/>
          </td>
        </tr>
        <tr>
          <td>
            <b>Village</b>
          </td>
          <td>
            :&#160;&#160; <xsl:value-of select="$PlantAddress"/>
          </td>
        </tr>
        <tr>
          <td>
            <b>Sy.No</b>
          </td>
          <td>
            :&#160;&#160; <xsl:value-of select="$SyNo"/>
          </td>
        </tr>
        <tr>
          <td>
            <b>Coup Contractor</b>
          </td>
          <td>
            :&#160;&#160; <xsl:value-of select="$CoupContractor"/>
          </td>
        </tr>
        <tr>
          <td/>
          <td><hr/>
	    <b>Number of Loads =</b>&#160; <xsl:value-of select="$discount"/>&#160; and <b>Total CFT =</b>&#160; <xsl:value-of select="$tcft"/>
          </td>
        </tr>
      </tbody>
     </table>
     
          
  </xsl:template>
  

  <!--================================================================================-->
  <!--  printLoadDetails                                                              -->
  <!--================================================================================-->
  <xsl:template name="printLoadDetails">
    <table class="estate" border="1" cellpadding="0" cellspacing="0">
      
        <thead>
         <tr bgcolor="#00ff00" style="font-size: 8pt;border: thin;border-style: solid;border-width: 2px">
          <th align="center">SNo&#160;</th>
          <th align="center">Date&#160;</th>
          <th align="center">Load Name&#160;</th>
          <th align="center">Tape Clerk&#160;</th>
          <th align="center">[]&#160;</th>
          <th align="center">Logs&#160;</th>
          <th align="center">ClassA&#160;</th>
          <th align="center">ClassB&#160;</th>
          <th align="center">ClassC&#160;</th>
          <th align="center">ClassD&#160;</th>
          <th align="center">Total CFT&#160;</th>
          <th align="center">Unload&#160;</th>
          <th align="center">Del.No&#160;</th>
          <th align="center">Stumps&#160;</th>
         </tr>
         </thead>
         
      <tbody>
        <xsl:call-template name="handleload"/>
      </tbody>
    </table>
  </xsl:template>
  

  <!--================================================================================-->
  <!--  printload                                                                     -->
  <!--================================================================================-->
  <xsl:template name="printload">
    <xsl:param name="Stumps"/>
    <xsl:param name="DelNo"/>
    <xsl:param name="Unload"/>
    <xsl:param name="TotalCFT"/>
    <xsl:param name="ClassD"/>
    <xsl:param name="ClassC"/>
    <xsl:param name="ClassB"/>
    <xsl:param name="ClassA"/>
    <xsl:param name="Logs"/>
    <xsl:param name="Clerk"/>
    <xsl:param name="Tape"/>
    <xsl:param name="LorryNumber"/>
    <xsl:param name="Date"/>
    <xsl:param name="SNo"/>
    <tr>
      <td align="center">
        <xsl:value-of select="$SNo"/>
      </td>
      <td align="center">
        <xsl:value-of select="$Date"/>
      </td>
      <td align="center">
        <xsl:value-of select="$LorryNumber"/>
      </td>
      <td align="center">
        <xsl:value-of select="$Tape"/>
      </td>
      <td align="center">
        <xsl:value-of select="$Clerk"/>
      </td>
      <td align="center">
        <xsl:value-of select="$Logs"/>
      </td>
      <td align="center">
        <xsl:call-template name="printVar">
			   <xsl:with-param name="var">
			      <xsl:value-of select="$ClassA"/>
		           </xsl:with-param>
        </xsl:call-template>
      </td>
      <td align="center">
        <xsl:call-template name="printVar">
			   <xsl:with-param name="var">
			      <xsl:value-of select="$ClassB"/>
		           </xsl:with-param>
        </xsl:call-template>
      </td>
      <td align="center">
        <xsl:call-template name="printVar">
			   <xsl:with-param name="var">
			      <xsl:value-of select="$ClassC"/>
		           </xsl:with-param>
        </xsl:call-template>
      </td>
      <td align="center">
        <xsl:call-template name="printVar">
			   <xsl:with-param name="var">
			      <xsl:value-of select="$ClassD"/>
		           </xsl:with-param>
        </xsl:call-template>
      </td>
      <td align="center">
        <xsl:call-template name="printVar">
			   <xsl:with-param name="var">
			      <xsl:value-of select="$TotalCFT"/>
		           </xsl:with-param>
        </xsl:call-template>
      </td>
      <td align="center">
        <xsl:value-of select="$Unload"/>
      </td>
      <td align="center">
        <xsl:value-of select="$DelNo"/>
      </td>
      <td align="center">
        <xsl:value-of select="$Stumps"/>
      </td>
    </tr>
  </xsl:template>
  
    <!--================================================================================-->

    <!--================================================================================-->
    
  <xsl:template name="printVar">
      <xsl:param name="var" select="0.0"/>
      <xsl:if test="$var != ''">
      <xsl:if test="$var != 0.0">
        <xsl:variable name="deci" select="substring-after($var,'.')" />
        <xsl:variable name="int" select="substring-before($var,'.')" />
          <xsl:value-of select="concat($int, '.', substring($deci,1,2))"/>      
      </xsl:if>
      </xsl:if>
  </xsl:template>


  <!--================================================================================-->
  <!--  Overide these methods to specify parameters and control flow logic            -->
  <!--================================================================================-->
  

  <xsl:template name="handleEstate">
    <xsl:call-template name="printEstate"/>
  </xsl:template>
  

  <xsl:template name="handleLoadDetails">
    <xsl:call-template name="printLoadDetails"/>
  </xsl:template>
  

  <xsl:template name="handleload">
    <xsl:call-template name="printload"/>
  </xsl:template>
</xsl:transform>