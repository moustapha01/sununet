<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c" %>
<jsp:include page="adminentete.jsp"/>
    
	<!-- RIGHT SIDE PANEL BEGINS HERE -->
    <td width="78%" valign="top">
    	<div class="annonce" style="padding: 20px;">
			<table width="100%" border="0" cellpadding="4" cellspacing="1">
	            <tr>
	                <td width="45%"><b>Entreprise publique, ONG, association, administration?</b>
	              	</td>
	                <td valign="top">
						<c:choose>
						    <c:when test='${model.demandeur.organisation == true}'>
						        <c:out value="Oui"/>
						    </c:when>
						    <c:otherwise>
						        <c:out value="Non"/>
						    </c:otherwise>
						</c:choose>
	                </td>
	            </tr>
                <tr>
                    <td><b>Besoin d'un volontaire?</b>
                    </td>
	                <td valign="top">
						<c:choose>
						    <c:when test='${model.demandeur.besoinVolontaire == true}'>
						        <c:out value="Oui"/>
						    </c:when>
						    <c:otherwise>
						        <c:out value="Non"/>
						    </c:otherwise>
						</c:choose>
	                </td>
	            </tr>	                        
	            <tr>
	                <td valign="top"><b>Domaine de competence et profil recherche?</b>
		           	</td>
		            <td valign="top">
						<c:out value="${model.demandeur.competence}" />
		            </td>
	            </tr>	                       
	            <tr>
	                 <td><b>Pour combien de temps?</b></td>
	                 <td valign="top">
						<c:out value="${model.demandeur.duree}" />
	                 </td>
	            </tr>                        	 
	            <tr>
	                <td valign="top"><b>Date de Demarrage</b></td>
	                <td>
						<c:out value="${model.demandeur.dateDemarrage}" />	
					</td>
	            </tr>
	            <tr>
	                <td valign="top"><b>Date de Cloture</b></td>
	            	<td>
						<c:out value="${model.demandeur.dateCloture}" />									
					</td>                      
	            </tr>		                                
	            <tr>
	            	<td><b>logement</b></td>
	                <td valign="top">
						<c:choose>
						    <c:when test='${model.demandeur.logement == true}'>
						        <c:out value="Oui"/>
						    </c:when>
						    <c:otherwise>
						        <c:out value="Non"/>
						    </c:otherwise>
						</c:choose>
	                </td>
	            </tr>	
	            <tr>
	                <td><b>nourriture</b></td>
	                <td valign="top">
						<c:choose>
						    <c:when test='${model.demandeur.nourriture == true}'>
						        <c:out value="Oui"/>
						    </c:when>
						    <c:otherwise>
						        <c:out value="Non"/>
						    </c:otherwise>
						</c:choose>
	                </td>
	            </tr>	
	            <tr>
	                <td><b>perdiem</b></td>
	                <td valign="top">
						<c:choose>
						    <c:when test='${model.demandeur.perdiem == true}'>
						        <c:out value="Oui"/>
						    </c:when>
						    <c:otherwise>
						        <c:out value="Non"/>
						    </c:otherwise>
						</c:choose>
	                </td>
	            </tr>	                        		                        	                        	                                                                                                                                    					
	            <tr>
	                <td valign="top"><b>Utilisation des competences du volontaire</b></td>
	                <td valign="top">
						<c:out value="${model.demandeur.utilisation}" />
	                </td>
	            </tr>                       
	            <tr>
	                <td><b>quel est votre secteur d'activite?</b></td>
	                <td valign="top">
						<c:out value="${model.demandeur.secteurActivite}" />
					</td>						  
	            </tr>
	            <tr>
	                <td><b>Nom de la societe</b></td>
	                <td valign="top">
						<c:out value="${model.demandeur.nomSociete}" />
					</td>					  
				</tr>
	            <tr>
					<td><b>Le responsable du service, titre</b></td>
					<td valign="top">
					  	<c:out value="${model.demandeur.responsable}" />
					</td>						  
				</tr>	                        
	            <tr>
	            	<td colspan="2"><b>Address de l'administration ou de l'organization</b></td>
	            </tr>						
	            <tr>
	            	<td>Rue</td>
					<td valign="top">
						<c:out value="${model.demandeur.addressLigne1}" />
	                </td>								  
	            </tr>
	            <tr>
	                <td>Numero Villa (Apt)</td>
					<td valign="top">
						<c:out value="${model.demandeur.addressLigne2}" />
					</td>								  
	            </tr>	                        
				<tr>
		            <td>Ville</td>
					<td valign="top">
						<c:out value="${model.demandeur.ville}" />
					</td>							  
	            </tr>	
	            <tr>
		            <td>Pays</td>
					<td valign="top">
						<c:out value="${model.demandeur.pays}" />
					</td>						  
	            </tr>
	            <tr>
		            <td>Code Postal</td>
					<td valign="top">
						<c:out value="${model.demandeur.codePostal}" />
					</td>							  
	            </tr>			                        				
	            <tr>
		            <td><b>Address email du contact</b></td>
					<td valign="top">
						<c:out value="${model.demandeur.email}" />
					</td>
	            </tr>						
	            <tr>						
		            <td><b>Numero de telephone du contact</b></td>
		            <td valign="top">
						<c:out value="${model.demandeur.telephone}" />
					</td>							  
	            </tr>	
	       	
		   	    <tr>
			        <td colspan="2" align="center">
			        	<c:if test="${model.demandeur.status == 'pending'}">
						<form name="approveForm" style="padding: 0px;" method="post" action="approverdemandeur.do">
							<input type="hidden" name="id" value="<c:out value="${model.demandeur.id}"/>" />
							<a href="javascript:document.approveForm<c:out value="${demandeur.id}"/>.submit();">
								<img alt="preview" src="images/btnApprover.png" border="0"/>
							</a>								
						</form>	
						</c:if>						
			        </td>
		        </tr>
			</table>
		</div>
	</td>
  </tr>
</table>    
 