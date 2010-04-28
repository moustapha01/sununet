<%@ taglib uri="/WEB-INF/c.tld" prefix="c" %>
<jsp:include page="adminentete.jsp"/>
    
	<!-- RIGHT SIDE PANEL BEGINS HERE -->
    <td width="78%" valign="top">
    	<div class="annonce" style="padding: 20px;">
	    	<table width="100%" border="0" cellspacing="0" cellpadding="0">
	    		<tr height="30px">
	    		  	<th align="left">&nbsp;</th>	    		
	    			<th align="left">Nom de L'entreprise</th>
	    		  	<th align="left">Etat de la demande</th>
	    		</tr>	
	    		<tr>	    	
	    		<c:forEach items="${model.demandeurList}" var="demandeur">
				  <tr height="25px">
					<td>
						<a class="orange-text-regular" href="viewdemandeur.htm?id=<c:out value="${demandeur.id}"/>">
							<img alt="ouvrir le document" src="images/page.gif" border="0"/>
						</a>
					</td>				  
					<td valign="top"><c:out value="${demandeur.nomSociete}"/></td>
					<td valign="top"><c:out value="${demandeur.status}"/></td>
				  </tr>    		
	    		</c:forEach>
			</table>
		</div>
	</td>
  </tr>
</table>    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    