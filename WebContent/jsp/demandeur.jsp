<%@ page language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<jsp:include page="entete.jsp"/>
		  <tr>
			<td valign="top" bgcolor="#FFFFFF">
			
			<table width="100%" border="0" cellpadding="0" cellspacing="10">
	          <tr>
	            <td align="center" class="px16"><h1 class="blye-text-regular">Fiche Demandeur </h1></td>
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
	            	<form:form method="post" commandName="demandeur">
	                <table width="100%" border="0" cellpadding="0" align="center" cellspacing="0">
	                  <tr>
	                    <td>
						<table width="100%" border="0" cellpadding="4" cellspacing="1">
	                        <tr>
	                          <td width="55%"><b>Etes vous une entreprise publique, une ONG, une association, ou une administration
	                          			territoriale ou nationale senegalaise?</b></td>
	                          <td valign="top">
								<span class="style1">*</span>
								<form:radiobuttons path="organisation" items="${demandeur.ouiNonOptions}"/>
	                          </td>
	                          <td>
	                          	<form:errors path="organisation" cssClass="error"/>
	                          </td>
	                        </tr>
	                        <tr>
	                        	<td colspan="3">&nbsp;</td>
	                        </tr>	
	                        <tr>
	                          <td><b>Voudriez vous recevoir l'aide d'un senegalais de la diaspora qui mettra a votre
	                          		disposition ses competences?</b></td>
	                          <td valign="top">
								<span class="style1">*</span>
								<form:radiobuttons cssStyle="border:blue;" path="besoinVolontaire" items="${demandeur.ouiNonOptions}"/>
	                          </td>
	                          <td>
	                          	<form:errors path="besoinVolontaire" cssClass="error"/>
	                          </td>
	                        </tr>	
	                        <tr>
	                        	<td colspan="3">&nbsp;</td>
	                        </tr>	                        
	                        <tr>
	                          <td valign="top"><b>Dans quel domaine souhaiteriez vous obtenir une offre de competence? Quel profil
	                          			recherchez-vous?</b></td>
	                          <td valign="top">
								<span class="style1">*</span>
								<form:textarea rows="3" cols="25" htmlEscape="true" path="competence" />
	                          </td>
	                          <td>
	                          	<form:errors path="competence" cssClass="error"/><br>
	                          </td>
	                        </tr>	
	                        <tr>
	                        	<td colspan="3">&nbsp;</td>
	                        </tr>	                        
	                        <tr>
	                          <td><b>Pour combien de temps?</b></td>
	                          <td valign="top">
								<span class="style1">*</span>
								<form:input path="duree" />
	                          </td>
	                          <td>
	                          	<form:errors path="duree" cssClass="error"/>
	                          </td>
	                        </tr>
	                        <tr>
	                        	<td colspan="3">&nbsp;</td>
	                        </tr>	                        	 
	                        <tr>
	                          <td colspan="3"><b>A quel moment de l'annee?</b></td>
	                        </tr>
	                        <tr>
	                          <td valign="top">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Date de Demarrage</td>
	                          <td>
								<span class="style1">*</span>
								<form:input id="dateDemarrage" path="dateDemarrage" />
								<script type="text/javascript">
									Spring.addDecoration(new Spring.ElementDecoration({
										elementId : "dateDemarrage",
										widgetType : "dijit.form.DateTextBox",
										widgetAttrs : { datePattern : "dd-MM-yyyy" }})); 
								</script>								
							  </td>
							  <td>
								<form:errors path="dateDemarrage" cssClass="error"/>
	                          </td>
	                        </tr>
	                        <tr>
	                          <td valign="top">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Date de Cloture</td>
	                          <td>
								<span class="style1">*</span>
								<form:input id="dateCloture" path="dateCloture" />
								<script type="text/javascript">
									Spring.addDecoration(new Spring.ElementDecoration({
										elementId : "dateCloture",
										widgetType : "dijit.form.DateTextBox",
										widgetAttrs : { datePattern : "dd-MM-yyyy" }}));   
								</script>									
							  </td>
							  <td>
								<form:errors path="dateCloture" cssClass="error"/><br>
	                          </td>	                         
	                        </tr>	
	                        <tr>
	                        	<td colspan="3">&nbsp;</td>
	                        </tr>	                         
	                        <tr>
	                          <td colspan="3"><b>Pourriez vous assurer pour le volontaire?</b></td>
	                        </tr>	          
	                        <tr>
	                          <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; logement</td>
	                          <td valign="top">
								<span class="style1">*</span>
								<form:radiobuttons path="logement" items="${demandeur.ouiNonOptions}"/>
	                          </td>
	                          <td>
	                          	<form:errors path="logement" cssClass="error"/>
	                          </td>
	                        </tr>	
	                        <tr>
	                          <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; nourriture</td>
	                          <td valign="top">
								<span class="style1">*</span>
								<form:radiobuttons path="nourriture" items="${demandeur.ouiNonOptions}"/>
	                          </td>
	                          <td>
	                          	<form:errors path="nourriture" cssClass="error"/>
	                          </td>
	                        </tr>	
	                        <tr>
	                          <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; perdiem</td>
	                          <td valign="top">
								<span class="style1">*</span>
								<form:radiobuttons path="perdiem" items="${demandeur.ouiNonOptions}"/>
	                          </td>
	                          <td>
	                          	<form:errors path="perdiem" cssClass="error"/><br>
	                          </td>
	                        </tr>
	                        <tr>
	                        	<td colspan="3">&nbsp;</td>
	                        </tr>	                        		                        	                        	                                                                                                                                    					
	                        <tr>
	                          <td valign="top"><b>Comment souhaiteriez vous utiliser les competences du volontaire? Expliquez si possible</b></td>
	                          <td valign="top">
	                            <span class="style1">*</span>
								<form:textarea rows="3" cols="25" path="utilisation" />
	                          </td>
	                          <td>
	                          	<form:errors path="utilisation" cssClass="error"/><br>
	                          </td>
	                        </tr>
	                        <tr>
	                        	<td colspan="3">&nbsp;</td>
	                        </tr>	                        
	                        <tr>
	                          <td colspan="3"><b>Donnez quelques informations sur votre organization, institution, administration etc</b></td>						  
	                        </tr>
	                        <tr>
	                          <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; quel est votre secteur d'activite?</td>
	                          <td valign="top">
								<span class="style1">*</span>
								<form:input path="secteurActivite" />						
							  </td>
	                          <td>
	                          	<form:errors path="secteurActivite" cssClass="error"/>
	                          </td>							  
	                        </tr>
	                        <tr>
	                          <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nom de la societe</td>
	                          <td valign="top">
								<span class="style1">*</span>
								<form:input path="nomSociete" />
							  </td>
	                          <td>
	                          	<form:errors path="nomSociete" cssClass="error"/>
	                          </td>						  
	                        </tr>
	                        <tr>
	                          <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Le responsable du service, titre</td>
	                          <td valign="top">
	                          	<span class="style1">*</span>
								<form:input path="responsable" />						  
							  </td>
	                          <td>
	                          	<form:errors path="responsable" cssClass="error"/><br>
	                          </td>								  
	                        </tr>
	                        <tr>
	                        	<td colspan="3">&nbsp;</td>
	                        </tr>	                        
	                        <tr>
	                          <td><b>Address de l'administration ou de l'organization</b></td>
	                        </tr>						
	                        <tr>
	                          <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Rue</td>
							  <td valign="top">
								<span class="style1">*</span>
								<form:input path="addressLigne1" />
							  </td>
	                          <td>
	                          	<form:errors path="addressLigne1" cssClass="error"/>
	                          </td>								  
	                        </tr>
	                        <tr>
	                          <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Numero Villa (Apt)</td>
							  <td valign="top">
								<span class="style1">*</span>
								<form:input path="addressLigne2" />
							  </td>
	                          <td>
	                          	<form:errors path="addressLigne2" cssClass="error"/>
	                          </td>								  
	                        </tr>	                        
	                        <tr>
	                          <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ville</td>
							  <td valign="top">
								<span class="style1">*</span>
								<form:input path="ville" />
							  </td>
	                          <td>
	                          	<form:errors path="ville" cssClass="error"/>
	                          </td>								  
	                        </tr>	
	                        <tr>
	                          <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Pays</td>
							  <td valign="top">
								<span class="style1">*</span>
								<form:input path="pays" />
							  </td>
	                          <td>
	                          	<form:errors path="pays" cssClass="error"/>
	                          </td>							  
	                        </tr>
	                        <tr>
	                          <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Code Postal</td>
							  <td valign="top">
								<span class="style1">*</span>
								<form:input path="codePostal" />
							  </td>
	                          <td>
	                          	<form:errors path="codePostal" cssClass="error"/><br>
	                          </td>								  
	                        </tr>		
	                        <tr>
	                        	<td colspan="3">&nbsp;</td>
	                        </tr>	                        				
	                        <tr>
	                          <td><b>Address email du contact</b></td>
							  <td valign="top">
								<span class="style1">*</span>
								<form:input path="email" />
							  </td>
	                          <td>
	                          	<form:errors path="email" cssClass="error"/>
	                          </td>	
	                        </tr>						
	                        <tr>						
	                          <td><b>Numero de telephone du contact</b></td>
	                          <td valign="top">
								<span class="style1">*</span>
								<form:input path="telephone" />
							  </td>
	                          <td>
	                          	<form:errors path="telephone" cssClass="error"/>
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
						<b><font color="#FF0000">*Champs Necessaires</font></b>
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