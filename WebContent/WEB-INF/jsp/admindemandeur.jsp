<%@ taglib uri="/WEB-INF/c.tld" prefix="c" %>
<jsp:include page="adminentete.jsp"/>
    
	<!-- RIGHT SIDE PANEL BEGINS HERE -->
    <td width="78%" valign="top">
    	<div class="annonce" style="padding: 20px;">
	    	<table width="100%" border="0" cellspacing="0" cellpadding="0">
	    		<tr height="30px">
	    		  	<th width="5% align="left">&nbsp;</th>	    		
	    			<th width="40% align="left">Nom de L'entreprise</th>
	    		  	<th width="30%" align="left">Etat de la demande</th>
	    		  	<th align="left">&nbsp;</th>
	    		</tr>	    	
	    		<c:forEach items="${model.demandeurList}" var="demandeur">
				  <tr height="25px">
					<td valign="top">
						<a href="viewdemandeur.htm?id=<c:out value="${demandeur.id}"/>">
							<img alt="ouvrir le document" src="images/page.gif" border="0"/>
						</a>					
					</td>				  
					<td valign="top"><c:out value="${demandeur.nomSociete}"/></td>
					<td valign="top"><c:out value="${demandeur.status}"/></td>
					<td valign="top">
						<c:if test="${demandeur.status == 'active' && demandeur.preview == false}">
						<form name="previewForm<c:out value="${demandeur.id}"/>" style="padding: 0px;" method="post" action="previewdemandeur.htm">
							<input type="hidden" name="id" value="<c:out value="${demandeur.id}"/>" />
							<a href="javascript:document.previewForm<c:out value="${demandeur.id}"/>.submit();">
								<img alt="preview" src="images/preview.png" border="0"/>
							</a>								
						</form>						
						</c:if>
					</td>
				  </tr>    		
	    		</c:forEach>
			</table>
		</div>
	</td>
  </tr>
</table>    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    