<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c" %>
<jsp:include page="adminentete.jsp"/>
    
	<!-- RIGHT SIDE PANEL BEGINS HERE -->
    <td width="78%" valign="top">
    	<div class="annonce" style="padding: 20px;">
			<table width="100%" border="0" cellpadding="4" cellspacing="1">
	            <tr>
	                <td width="45%"><b>Etes vous membre de Re-Source/Sununet?</b>
	              	</td>
	                <td valign="top">
						<c:choose>
						    <c:when test='${model.volontaire.membre == true}'>
						        <c:out value="Oui"/>
						    </c:when>
						    <c:otherwise>
						        <c:out value="Non"/>
						    </c:otherwise>
						</c:choose>
	                </td>
	            </tr>
                <tr>
                    <td><b>Seriez vous d'accord pour donner de votre temps au Senegal</b>
                    </td>
	                <td valign="top">
						<c:choose>
						    <c:when test='${model.volontaire.accord == true}'>
						        <c:out value="Oui"/>
						    </c:when>
						    <c:otherwise>
						        <c:out value="Non"/>
						    </c:otherwise>
						</c:choose>
	                </td>
	            </tr>	                        
	            <tr>
	                <td valign="top"><b>Combien d'heures par an ou pour une seule annee</b>
		           	</td>
		            <td valign="top">
						<c:out value="${model.volontaire.nombreHeure}" />
		            </td>
	            </tr>	                       
	            <tr>
	                 <td><b>Pays vous souhaitez porter volontariat</b></td>
	                 <td valign="top">
						<c:out value="${model.volontaire.location}" />
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
	            	<td colspan="2"><b>Address du volontaire</b></td>
	            </tr>						
	            <tr>
	            	<td>Rue</td>
					<td valign="top">
						<c:out value="${model.volontaire.addressLigne1}" />
	                </td>								  
	            </tr>
	            <tr>
	                <td>Numero Villa (Apt)</td>
					<td valign="top">
						<c:out value="${model.volontaire.addressLigne2}" />
					</td>								  
	            </tr>	                        
				<tr>
		            <td>Ville</td>
					<td valign="top">
						<c:out value="${model.volontaire.ville}" />
					</td>							  
	            </tr>	
	            <tr>
		            <td>Pays</td>
					<td valign="top">
						<c:out value="${model.volontaire.pays}" />
					</td>						  
	            </tr>
	            <tr>
		            <td>Code Postal</td>
					<td valign="top">
						<c:out value="${model.volontaire.codePostal}" />
					</td>							  
	            </tr>	
	            <tr>
	            	<td colspan="2"><b>Identite du Volontaire</b></td>
	            </tr>
	            <tr>
	                <td>Nom</td>
					<td valign="top">
						<c:out value="${model.volontaire.nom}" />
					</td>								  
	            </tr>	                        
				<tr>
		            <td>Prenom</td>
					<td valign="top">
						<c:out value="${model.volontaire.prenom}" />
					</td>							  
	            </tr>	
	            <tr>
		            <td>Titre</td>
					<td valign="top">
						<c:out value="${model.volontaire.titre}" />
					</td>						  
	            </tr>
	            <tr>
		            <td><b>Profession Actuelle</b></td>
					<td valign="top">
						<c:out value="${model.volontaire.profession}" />
					</td>							  
	            </tr>		            
	            <tr>
		            <td><b>Address email</b></td>
					<td valign="top">
						<c:out value="${model.volontaire.email}" />
					</td>
	            </tr>						
	            <tr>						
		            <td><b>Numero de telephone</b></td>
		            <td valign="top">
						<c:out value="${model.volontaire.telephone}" />
					</td>							  
	            </tr>	
			</table>
		</div>
	</td>
  </tr>
</table>    
 