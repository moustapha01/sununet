<%@ page language="java"%>
<%@ page import="java.util.*, com.sununet.domain.Demandeur;"%>
<jsp:useBean id="model" class="java.util.HashMap" scope="request" />
<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>

<jsp:include page="entete.jsp" />

<!-- MAIN CONTENT BEGINS HERE -->
<tr>
	<td>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<!-- MAIN CONTENT LEFT SIDE BEGINS HERE -->
			<td width="80%" valign="top" class="mainBground">
			<table width="100%" border="0" cellspacing="0" cellpadding="5">
			  <tr>
			  	<td>
			  		<img src="images/banner1.gif" border="0"/>
			  	</td>
			  </tr> 			
				<tr>
					<td>
					<h2 class="blye-text-regular">Historique</h2>
					</td>
				</tr>
				<tr>
					<td><span> Lors du Home Coming (Retour aux Sources) de la Diaspora sénégalaise tenue les 30, 31 Juillet et
					 1er Aout 2009 à Dakar, Re-Source Sununet a retenu l'idée de création d'une Banque de Temps. Il
					 s'agit d'une base de données ou seront enregistrées les informations concernant les volontaires et
					 les demandeurs. Re-Source/Sununet (R/S) s'engage à ne pas diffuser les informations recueillies sans l'accord des parties.<br>
					<br>

					Beaucoup d'institutions, d'organisations dans notre pays ont souvent besoin de mobiliser des compétences
					pour la réalisation de leurs objectifs, mais elles n'ont parfois pas de moyens financiers et humains
					pour le faire. D'autre part, des Sénégalais-ses de la Diaspora (enseignant-es, ingénieur-es, ouvrier-ères
					spécialisé-es, médecins, infirmier-ères, etc.) voudraient donner un peu de leur temps au pays ou aux communautés.
					Re-Source/Sununet a donc décidé d'être cette plate-forme de collecte et de redistribution des ressources
					humaines et techniques.  </span></td>
				</tr>
				<tr>
					<td>
					<h2 class="blye-text-regular">Vision, Objectifs et Stratégies
					</h2>
					</td>
				</tr>
				<tr>
					<td><span>
					Notre vision est de voir le Sénégal et l'Afrique profiter des compétences de sa diaspora.
					Notre idéal étant de mettre a la disposition des Sénégalais-es et du Sénégal, les ressources de notre Diaspora.
					En effet, chaque Sénégalais-e de la diaspora peut donner un peu de son temps (4h, 8h, 20h, 80h, etc.) à
					une organisation ou institution de sa communauté dans son pays de résidence, ou lors de son séjour au pays.
					Ainsi chacun-e contribuera selon ses domaines de compétences à l'épanouissement et a l'harmonie de notre nation.
					L'image du Sénégal pays de solidarité et d'entrepreneuriat sera renforcée.<br>
					<br>

					Pour participer a cette mission, il suffit juste de s'inscrire dans la rubrique fiche volontaire pour
					les volontaires et fiche demandeur pour les organisations et institutions qui souhaitent bénéficier de
					ces ressources humaines.  </span>
					<br>
					</td>
				</tr>
			</table>
			</td>
			<!-- MAIN CONTENT  LEFT SIDE ENDS HERE -->

			<td width="1%" valign="top">&nbsp;</td>

			<!-- MAIN CONTENT RIGHT SIDE BEGINS HERE - ANNONCES ET EVENEMENTS-->
			<td width="19%" valign="top" bgcolor="#FFFFFF">
			<table border="0" cellspacing="0" cellpadding="10">
				<tr>
					<td><img src="images/index_16.gif" alt=""></td>
				</tr>
				<tr>
					<td align="center"><img src="images/index_23.gif" width="165"
						height="10" alt=""></td>
				</tr>
				<c:forEach items="${model.demandeurList}" var="demandeur">
					<tr>
						<td><span class="orange-text-regular"><b><c:out
							value="${demandeur.nomSociete}" /></b></span> Date de Demarrage: <c:out
							value="${demandeur.dateDemarrage}" /></td>
					</tr>
					<tr>
						<td><c:out value="${demandeur.competence}" /></td>
					</tr>
				</c:forEach>
				<tr>
					<td align="right"><a href="annonces.do"><span
						class="blye-text-underline">Voir toutes les annonces</span></a></td>
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
</div>
</td>
</tr>
</table>
<table width="80%" align="center" border="0" cellspacing="0"
	cellpadding="0">
	<tr>
		<td>
		<table width="100%" border="0" cellspacing="0" cellpadding="15">
			<tr>
				<td align="center" class="blye-text-regular">Copyright © 2010 <b>RE-SOURCE SUNUNET</b>
				All rights reserved.</td>
			</tr>
		</table>
		</td>
	</tr>
</table>
</body>
</html>