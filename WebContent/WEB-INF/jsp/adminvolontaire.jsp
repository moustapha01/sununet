<%@ taglib uri="/WEB-INF/c.tld" prefix="c" %>
<jsp:include page="adminentete.jsp"/>
    
	<!-- RIGHT SIDE PANEL BEGINS HERE -->
    <td width="78%" valign="top">
    	<div class="annonce" style="padding: 20px;">
	    	<table width="100%" border="0" cellspacing="0" cellpadding="0">
	    		<tr height="30px">
	    		  	<th align="left">&nbsp;</th>	    		
	    			<th align="left">Nom</th>
	    		  	<th align="left">Prenom</th>
	    		  	<th align="left">Profession</th>
	    		  	<th align="left">Titre</th>
	    		</tr>	
	    		<tr>	    	
	    		<c:forEach items="${model.volontaireList}" var="volontaire">
				  <tr height="25px">
					<td>
						<a class="orange-text-regular" href="viewvolontaire.do?id=<c:out value="${volontaire.id}"/>">
							<img alt="ouvrir le document" src="images/page.gif" border="0"/>
						</a>
					</td>				  
					<td valign="top"><c:out value="${volontaire.nom}"/></td>
					<td valign="top"><c:out value="${volontaire.prenom}"/></td>
					<td valign="top"><c:out value="${volontaire.profession}"/></td>
					<td valign="top"><c:out value="${volontaire.titre}"/></td>					
				  </tr>    		
	    		</c:forEach>
			</table>
		</div>
	</td>
  </tr>
</table>   