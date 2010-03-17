<%@ page language="java" %>
<%@ page import="java.util.*, com.sununet.domain.Demandeur;" %>
<jsp:useBean id="model" class="java.util.HashMap" scope="request"/>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c" %>

<jsp:include page="entete.jsp"/>

		  <!-- MAIN CONTENT BEGINS HERE -->
		  <tr>
			<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
			  <tr>
				<!-- MAIN CONTENT LEFT SIDE BEGINS HERE -->
				<td width="100%" valign="top" class="mainBground">
					<table width="100%" border="0" cellspacing="0" cellpadding="5">
					  <tr>
						<td><h2 class="blye-text-regular">Historique </h2></td>
					  </tr>
					  <tr>
						<td><img src="images/global.jpg" align="left" hspace="5" vspace="5" alt="">
						<span>				
							Lors du Home Coming (Retour aux Sources) de la Diaspora Senegalaise tenue les 30, 31 Juillet et 1er Aout 2009 a
							Dakar, Re-Source Sununet a retenu l'idee de creation d'une Banque de Temps. Il s'agit d'une base de donnees ou
							seront enregistrees les informations concernant les volontaires et les demandeurs. Re-Source/Sununet (R/S) s'engage
							a ne pas diffuser les informations recueillies sans l'accord des parties.<br><br>
							
							Beaucoup d'insitutions, d'organisations dans notre pays ont souvent besoin de mobiliser des competences pour la
							realisation de leurs objectifs, mais elles n'ont parfois pas de moyens financiers et humains pour le faire. D'autre
							part, des Senegalais de la Diaspora (enseignants, ingenieurs, ouvriers specialises, medecins, infirmiers, etc)
							voudraient donner un peu de leur temps au pays ou aux communautes. Re-Source/Sununet a donc decide d'etre cette
							plate-forme de collected et de redistribution des ressources humaines et techniques.
						</span>
						</td>
					  </tr>
					  <tr>
						<td><h2 class="blye-text-regular">Vision, Objectifs et Strategies </h2></td>
					  </tr>
					  <tr>
						<td>
							<span>
								Notre vision est de voir le Senegal et l'Afrique profiter des competences de sa disapora.
								Notre ideal etant de mettre a la disposition des Senegalais et du Senegal, les ressources de notre Diaspora.
								En effet, chaque Senegalais de la diaspora peut donner un peu de son temps (4h, 8h, 20h, 80h etc) a une
								organisation ou institution de sa communaute dans son pays de residences, ou lors de son sejour au pays.
								Ainsi chancun contribuera selon ses domaines de competences a l'epanouissement et a l'harmonie de notre nation.
								L'image du Senegal pays de solidarite et d'entrepreneuriat sera renforcee.<br><br>
								
								Pour participer a cette mission, it suffit juste de s'inscrire dans la rubrique fiche volontaire pour les
								volontaires et fiche demandeur pour les organisations et institutions qui souhaitent beneficier de ces 
								ressources humaines.										
							</span>
				              <table width="100%" height="20" border="0" cellpadding="0" cellspacing="0">
				                <tr>
				                  <td align="right"><a href="#" class="blye-text-underline">Lire la suite...</a></td>
				                </tr>
				              </table>								
								<br><br><br><br><br><br>
						</td>
					  </tr>
					</table>
				</td>
				<!-- MAIN CONTENT  LEFT SIDE ENDS HERE -->
				
				<td width="5" valign="top">&nbsp;</td>
				
				<!-- MAIN CONTENT RIGHT SIDE BEGINS HERE - ANNONCES ET EVENEMENTS-->
				<td width="187" valign="top" bgcolor="#FFFFFF">
					<table width="100%" border="0" cellspacing="0" cellpadding="10">
					  <tr>
						<td><img src="images/index_16.gif" alt=""></td>
					  </tr>
					  <tr>
						<td align="center"><img src="images/index_23.gif" width="165" height="10" alt=""></td>
					  </tr>
					  <c:forEach items="${model.demandeurList}" var="demandeur">
					  <tr>
						<td>
							<span class="orange-text-regular"><b><c:out value="${demandeur.nomSociete}"/></b></span>
							Date de Demarrage: <c:out value="${demandeur.dateDemarrage}"/>	
						</td>
					  </tr>
					  <tr>
					  	<td>
					  		<c:out value="${demandeur.competence}"/>
					  	</td>
					  </tr>
					  </c:forEach>
					  <tr>
						<td align="right">
							<a href="annonces.htm"><span class="blye-text-underline">Voir toutes les annonces</span></a>
						</td>
					  </tr>
					</table>
				</td>
				<!-- MAIN CONTENT RIGHT SIDE ENDS HERE -->
			  </tr>
			</table>
			</td>
		  </tr>
		  <!-- MAIN CONTENT ENDS HERE -->
		  
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