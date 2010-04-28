<%@ page language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<jsp:include page="entete.jsp"/>
		  <tr>
			<td valign="top" bgcolor="#FFFFFF">
			<table width="100%" border="0" cellpadding="0" cellspacing="10">
	          <tr>
	            <td align="center" class="px16"><h1 class="blye-text-regular">Fiche Volontaire </h1></td>
	          </tr>
	          <tr>
	          	<td><form:errors path="*" cssClass="error" /></td>
	          </tr>
	          <tr>
	            <td>
				<div id="box">				
			
					<!--- box border -->
					<div id="lb">
					<div id="rb">
					<div id="bb"><div id="blc"><div id="brc">
					<div id="tb"><div id="tlc"><div id="trc">
					<div id="content">	            
	            	<form:form method="post" commandName="volontaire">
	                <table width="100%" border="0" cellpadding="0" align="center" cellspacing="0">
	                  <tr>
	                    <td>
						<table width="100%" border="0" cellpadding="4" cellspacing="1">
	                        <tr>
	                          <td width="55%"><b>Etes vous membre de Re-Source/Sununet?</b></td>
	                          <td valign="top">
								<span class="style1">*</span>
								<form:radiobuttons path="membre" items="${volontaire.ouiNonOptions}"/>
	                          </td>
	                          <td>
	                          	<form:errors path="membre" cssClass="error"/>
	                          </td>
	                        </tr>
	                        <tr>
	                          <td><b>Seriez vous d'accord pour donner de votre temps au Senegal (Administration, ONG)?</b></td>
	                          <td valign="top">
								<span class="style1">*</span>
								<form:radiobuttons path="accord" items="${volontaire.ouiNonOptions}"/>
							  </td>
	                          <td>
	                          	<form:errors path="accord" cssClass="error"/>
	                          </td>							  
	                        </tr>
	                        <tr>
	                          <td><b>Combien d'heures par an ou pour une seule annee</b></td>
	                          <td valign="top">
								<span class="style1">*</span>
								<form:radiobuttons path="nombreHeure" items="${volontaire.nombreHeuresOptions}"/>						
							  </td>
	                          <td>
	                          	<form:errors path="nombreHeure" cssClass="error"/>
	                          </td>							  
	                        </tr>
	                        <tr>
	                          <td><b>Dans quel pays souheteriez vous donner votre temps si Senegal, preciser La ville ou region</b></td>
	                          <td valign="top">
								<span class="style1">*</span>
								<form:input path="location" cssStyle="width:90%"/>
							  </td>
	                          <td>
	                          	<form:errors path="location" cssClass="error"/>
	                          </td>						  
	                        </tr>
	                        <tr>
	                          <td colspan="3"><b>A quelles conditions?</b></td>
	                        </tr>
	                        <tr>
	                          <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) logement</td>
	                          <td valign="top">
								<span class="style1">*</span>
								<form:radiobuttons path="logement" items="${volontaire.ouiNonOptions}"/>						  
							  </td>
	                          <td>
	                          	<form:errors path="logement" cssClass="error"/>
	                          </td>								  
	                        </tr>
	                        <tr>
	                          <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) nourriture</td>
	                          <td valign="top">
								<span class="style1">*</span>
								<form:radiobuttons path="nourriture" items="${volontaire.ouiNonOptions}"/>						  
							  </td>
	                          <td>
	                          	<form:errors path="nourriture" cssClass="error"/>
	                          </td>								  
	                        </tr>							
	                        <tr>
	                          <td colspan="3"><b>Votre addresse</b></td>
	                        </tr>
	                        <tr>
	                          <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Rue</td>
							  <td valign="top">
								<span class="style1">*</span>
								<form:input path="addressLigne1" cssStyle="width:90%"/>
							  </td>
	                          <td>
	                          	<form:errors path="addressLigne1" cssClass="error"/>
	                          </td>								  
	                        </tr>
	                        <tr>
	                          <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) Ville</td>
							  <td valign="top">
								<span class="style1">*</span>
								<form:input path="ville" cssStyle="width:90%"/>
							  </td>
	                          <td>
	                          	<form:errors path="ville" cssClass="error"/>
	                          </td>								  
	                        </tr>	
	                        <tr>
	                          <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) Pays</td>
							  <td valign="top">
								<span class="style1">*</span>
								<form:input path="pays" cssStyle="width:90%"/>
							  </td>
	                          <td>
	                          	<form:errors path="pays" cssClass="error"/>
	                          </td>							  
	                        </tr>
	                        <tr>
	                          <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d) Code Postal</td>
							  <td valign="top">
								<span class="style1">*</span>
								<form:input path="codePostal" cssStyle="width:90%"/>
							  </td>
	                          <td>
	                          	<form:errors path="codePostal" cssClass="error"/>
	                          </td>								  
	                        </tr>						
	                        <tr>
	                          <td colspan="3"><b>Votre Identite</b></td>
	                        </tr>						
	                        <tr>
	                          <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a) Prenom</td>
							  <td valign="top">
								<span class="style1">*</span>
								<form:input path="prenom" cssStyle="width:90%"/>
							  </td>
	                        </tr>
	                        <tr>
	                          <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b) Nom</td>
							  <td valign="top">
								<span class="style1">*</span>
								<form:input path="nom" cssStyle="width:90%"/>
							  </td>
	                        </tr>
	                        <tr>
	                          <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c) Titre</td>
							  <td valign="top">
								<span class="style1">*</span>
								<form:input path="titre" cssStyle="width:90%"/>
							  </td>
	                        </tr>
	                        <tr>						
	                          <td><b>Profession Actuelle</b></td>
	                          <td valign="top">
								<span class="style1">*</span>
								<form:input path="profession" cssStyle="width:90%"/>
							  </td>
	                        </tr>						
	                        <tr>
	                          <td colspan="3" align="center">
	                              <input type="submit" name="Submit" value="Envoyer">
	                              <br>
	                          </td>
	                        </tr>
	                    </table>
						</td>
	                  </tr>
	                </table>
					</form:form>
	                <font face="Verdana, Arial" size="1" color="#000000">
						<b><font color="#FF0000">* Necessaire</font></b>
					</font>
					</div>
					<!--- end of box border -->
					</div></div></div></div>
					</div></div></div></div>
					<!-- -->
					
				</div>						
				</td>
	          </tr>
			</table>
			</td>
		  </tr>
		</table>
    </td>
  </tr>
</table>
<table width="80%" align="center" border="0" cellspacing="0" cellpadding="0">
  <tr>

  </tr>
  <tr>
    <td bgcolor="#5C7639"><table width="100%" border="0" cellspacing="0" cellpadding="15">
      <tr>
        <td align="center" class="white-text">Copyright © 2008 <b>Busness</b> Company.</td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>