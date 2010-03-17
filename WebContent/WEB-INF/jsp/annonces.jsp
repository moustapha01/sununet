<%@ page language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c" %>

<jsp:include page="entete.jsp"/>
		  <tr height="100%">
			<td valign="top" bgcolor="#FFFFFF">
			<table width="100%" border="0" cellpadding="0" cellspacing="10">
	          <tr>
	            <td align="center" class="px16"><h1 class="blye-text-regular">List des demandeurs </h1><br>
	            	<span style="text-align: center">cliquez sur l'image [+] pour voir les details de chaque annonce<span>
	            </td>
	          </tr>
	        </table>
	          <c:forEach items="${model.demandeurList}" var="demandeur">
	        	<div class="annonce">
	        		<div>
						<div id="maximize<c:out value="${demandeur.id}"/>" style="float: left;">
							<img src="images/plusButton.gif" onclick="showDetails(<c:out value="${demandeur.id}"/>);">
						</div>
						<div id="minimize<c:out value="${demandeur.id}"/>" style="float: left;display: none;">
							<img src="images/minusButton.gif" onclick="hideDetails(<c:out value="${demandeur.id}"/>);">
						</div>
						<div>
				          		<span class="annonceHeading"><c:out value="${demandeur.nomSociete }"/>
				          		<c:out value="${demandeur.ville}"/>, <c:out value="${demandeur.pays}"/></span> 						
						</div>
						<div><b>Competence</b>: <c:out value="${demandeur.competence }"/></div>						
					</div>

					<div id="<c:out value="${demandeur.id}"/>" class="annonce" style="display: none;">
						<table>			          
				          <tr>
				          	<td colspan="2">
				          		<b>Demarrage</b>: <c:out value="${demandeur.dateDemarrage }"/>
				          	</td>
				          </tr>			    
				          <tr>
				          	<td colspan="2">
				          		<b>Cloture</b>: <c:out value="${demandeur.dateCloture }"/>
				          	</td>
				          </tr>     
				          <tr>
				          	<td colspan="2">
				          		<b>responsabilites</b>: <c:out value="${demandeur.utilisation }"/>
				          	</td>
				          </tr>
			     	 	</table>	
			      	</div>						
				</div>
               
	          </c:forEach>
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