<%@ page language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<jsp:include page="entete.jsp" />
<tr>
	<td valign="top" bgcolor="#FFFFFF">

	<table width="100%" border="0" cellpadding="0" cellspacing="10">
		<tr>
			<td align="center" class="px16">
			<h1 class="blye-text-regular">Fiche Demandeur</h1>
			</td>
		</tr>
		<tr>
			<td><form:errors path="*" cssClass="error" /></td>
		</tr>
		<tr>
			<td>
			<div id="box"><!--- box border -->
			<div id="lb">
			<div id="rb">
			<div id="bb">
			<div id="blc">
			<div id="brc">
			<div id="tb">
			<div id="tlc">
			<div id="trc">
			<div id="content"><form:form method="post"
				commandName="demandeur">
				<table width="100%" border="0" cellpadding="0" align="center"
					cellspacing="0">
					<tr>
						<td colspan="4" align="left" bgcolor="#EFEFEF"><font size="4"
							color="#C53A4A">Informations Generales</font></td>
					</tr>
					<tr>
						<td colspan="4">&nbsp;</td>
					</tr>
					<tr>
						<td width="60%" colspan="3"><b>Etes vous une entreprise
						publique, une ONG, une association, ou une administration
						territoriale ou nationale senegalaise?</b></td>
						<td valign="top"><form:radiobuttons path="organisation"
							items="${demandeur.ouiNonOptions}" /> <span class="style1">*</span>
						<form:errors path="organisation" cssClass="error" /></td>
					</tr>
					<tr>
						<td colspan="4">&nbsp;</td>
					</tr>
					<tr>
						<td colspan="3"><b>Voudriez vous recevoir l'aide d'un
						senegalais de la diaspora qui mettra a votre disposition ses
						competences?</b></td>
						<td valign="top"><form:radiobuttons path="besoinVolontaire"
							items="${demandeur.ouiNonOptions}" /> <span class="style1">*</span>
						<form:errors path="besoinVolontaire" cssClass="error" /></td>
					</tr>
					<tr>
						<td colspan="4">&nbsp;</td>
					</tr>					
					<tr>
						<td colspan="3"><b>Dans quel domaine souhaiteriez vous
						obtenir une offre de competence? Quel profil recherchez-vous?</b></td>
						<td valign="top"><form:textarea id="competence"
							cssStyle="width:230px;" path="competence" /> <span
							class="style1">*</span> <form:errors path="competence"
							cssClass="error" /> <script type="text/javascript">
									Spring.addDecoration(new Spring.ElementDecoration({
										elementId : "competence",
										widgetType : "dijit.form.SimpleTextarea",
										widgetAttrs : { required : true, invalidMessage : "value is required." }										
									}));   
								</script></td>
					</tr>
					<tr>
						<td colspan="4">&nbsp;</td>
					</tr>					
					<tr>
						<td colspan="3"><b>Pour combien de temps?</b></td>
						<td valign="top"><form:input id="duree" path="duree" /> <span
							class="style1">*</span> <form:errors path="duree"
							cssClass="error" /> <script type="text/javascript">
									Spring.addDecoration(new Spring.ElementDecoration({
										elementId : "duree",
										widgetType : "dijit.form.ValidationTextBox",
										widgetAttrs : { required : true, invalidMessage : "value is required." }
									}));   
								</script></td>
					</tr>
					<tr>
						<td colspan="4">&nbsp;</td>
					</tr>					
					<tr>
						<td colspan="4"><b>A quel moment de l'annee?</b></td>
					</tr>
					<tr>
						<td valign="top">&nbsp;&nbsp;&nbsp;Date de Demarrage</td>
						<td colspan="3"><form:input id="dateDemarrage" path="dateDemarrage" /> <span
							class="style1">*</span> <form:errors path="dateDemarrage"
							cssClass="error" /> <script type="text/javascript">
									Spring.addDecoration(new Spring.ElementDecoration({
										elementId : "dateDemarrage",
										widgetType : "dijit.form.DateTextBox",
										widgetAttrs : { datePattern : "dd-MM-yyyy" }})); 
								</script></td>
					</tr>
					<tr>
						<td valign="top">&nbsp;&nbsp;&nbsp;Date de Cloture</td>
						<td colspan="3"><form:input id="dateCloture" path="dateCloture" /> <span
							class="style1">*</span> <form:errors path="dateCloture"
							cssClass="error" /> <script type="text/javascript">
									Spring.addDecoration(new Spring.ElementDecoration({
										elementId : "dateCloture",
										widgetType : "dijit.form.DateTextBox",
										widgetAttrs : { datePattern : "dd-MM-yyyy" }}));   
								</script></td>
					</tr>
					<tr>
						<td colspan="4">&nbsp;</td>
					</tr>					
					<tr>
						<td colspan="4"><b>Pourriez vous assurer pour le
						volontaire?</b></td>
					</tr>
					<tr>
						<td>&nbsp;&nbsp;&nbsp;logement</td>
						<td colspan="3" valign="top"><form:radiobuttons path="logement"
							items="${demandeur.ouiNonOptions}" /> <span class="style1">*</span>
						<form:errors path="logement" cssClass="error" /></td>
					</tr>
					<tr>
						<td>&nbsp;&nbsp;&nbsp;nourriture</td>
						<td colspan="3" valign="top"><form:radiobuttons path="nourriture"
							items="${demandeur.ouiNonOptions}" /> <span class="style1">*</span>
						<form:errors path="nourriture" cssClass="error" /></td>
					</tr>
					<tr>
						<td>&nbsp;&nbsp;&nbsp;perdiem</td>
						<td colspan="3" valign="top"><form:radiobuttons path="perdiem"
							items="${demandeur.ouiNonOptions}" /> <span class="style1">*</span>
						<form:errors path="perdiem" cssClass="error" /></td>
					</tr>
					<tr>
						<td colspan="4">&nbsp;</td>
					</tr>					
					<tr>
						<td colspan="3" valign="top"><b>Comment souhaiteriez vous utiliser
						les competences du volontaire? Expliquez si possible</b></td>
						<td valign="top"><form:textarea id="utilisation"
							cssStyle="width:230px" path="utilisation" /> <span
							class="style1">*</span> <form:errors path="utilisation"
							cssClass="error" /> <script type="text/javascript">
									Spring.addDecoration(new Spring.ElementDecoration({
										elementId : "utilisation",
										widgetType : "dijit.form.SimpleTextarea",
										widgetAttrs : { required : true, invalidMessage : "value is required." }																				
									}));   
								</script></td>
					</tr>
					<tr>
						<td colspan="4">&nbsp;<br><br></td>
					</tr>					
					<tr>
						<td colspan="4" align="left" bgcolor="#EFEFEF"><font size="4"
							color="#C53A4A">Information sur l'Organisation</font></td>
					</tr>			
					<tr>
						<td colspan="4">&nbsp;</td>
					</tr>							
					<tr>
						<td><b>Secteur d'activite</b></td>
						<td valign="top"><form:input id="secteurActivite"
							path="secteurActivite" /> <span class="style1">*</span> <form:errors
							path="secteurActivite" cssClass="error" /> <script
							type="text/javascript">
									Spring.addDecoration(new Spring.ElementDecoration({
										elementId : "secteurActivite",
										widgetType : "dijit.form.ValidationTextBox",
										widgetAttrs : { required : true, invalidMessage : "value is required." }
									}));   
								</script></td>					
						<td><b>Nom Societe</b></td>
						<td valign="top"><form:input id="nomSociete"
							path="nomSociete" /> <span class="style1">*</span> <form:errors
							path="nomSociete" cssClass="error" /> <script
							type="text/javascript">
									Spring.addDecoration(new Spring.ElementDecoration({
										elementId : "nomSociete",
										widgetType : "dijit.form.ValidationTextBox",
										widgetAttrs : { required : true, invalidMessage : "value is required." }
									}));   
								</script></td>
					</tr>
					<tr>
						<td><b>Le Responsable</b></td>
						<td valign="top"><form:input id="responsable"
							path="responsable" /> <span class="style1">*</span> <form:errors
							path="responsable" cssClass="error" /> <script
							type="text/javascript">
									Spring.addDecoration(new Spring.ElementDecoration({
										elementId : "responsable",
										widgetType : "dijit.form.ValidationTextBox",
										widgetAttrs : { required : true, invalidMessage : "value is required." }
									}));   
								</script></td>
						<td><b>email</b></td>
						<td valign="top"><form:input id="email" path="email" /> <span
							class="style1">*</span> <form:errors path="email"
							cssClass="error" /> <script type="text/javascript">
									Spring.addDecoration(new Spring.ElementDecoration({
										elementId : "email",
										widgetType : "dijit.form.ValidationTextBox",
										widgetAttrs : { required : true, invalidMessage : "value is required." }
									}));   
								</script></td>								
					</tr>
					<tr>
						<td colspan="4">&nbsp;<br><br></td>
					</tr>
					<tr>
						<td colspan="4" align="left" bgcolor="#EFEFEF"><font size="4"
							color="#C53A4A">Address de l'administration ou de l'organization</font></td>
					</tr>					
					<tr>
						<td colspan="4">&nbsp;</td>
					</tr>
					<tr>
						<td><b>Rue</b></td>
						<td valign="top"><form:input id="addressLigne1"
							path="addressLigne1" /> <span class="style1">*</span> <form:errors
							path="addressLigne1" cssClass="error" /> <script
							type="text/javascript">
									Spring.addDecoration(new Spring.ElementDecoration({
										elementId : "addressLigne1",
										widgetType : "dijit.form.ValidationTextBox",
										widgetAttrs : { required : true, invalidMessage : "value is required." }
									}));   
								</script></td>
						<td><b>telephone</b></td>
						<td valign="top"><form:input id="telephone" path="telephone" />
						<span class="style1">*</span> <form:errors path="telephone"
							cssClass="error" /> <script type="text/javascript">
									Spring.addDecoration(new Spring.ElementDecoration({
										elementId : "telephone",
										widgetType : "dijit.form.ValidationTextBox",
										widgetAttrs : { required : true, invalidMessage : "value is required." }
									}));   
								</script></td>																						
					</tr>
					<tr>
						<td><b>Numero Villa (Apt)</b></td>
						<td valign="top"><form:input id="addressLigne2"
							path="addressLigne2" /> <span class="style1">*</span> <form:errors
							path="addressLigne2" cssClass="error" /> <script
							type="text/javascript">
									Spring.addDecoration(new Spring.ElementDecoration({
										elementId : "addressLigne2",
										widgetType : "dijit.form.ValidationTextBox",
										widgetAttrs : { required : true, invalidMessage : "value is required." }
									}));   
								</script></td>	
						<td><b>Ville</b></td>
						<td valign="top"><form:input id="ville" path="ville" /> <form:errors
							path="ville" cssClass="error" /> <span class="style1">*</span> <script
							type="text/javascript">
									Spring.addDecoration(new Spring.ElementDecoration({
										elementId : "ville",
										widgetType : "dijit.form.ValidationTextBox",
										widgetAttrs : { required : true, invalidMessage : "value is required." }
									}));   
								</script></td>														

					</tr>
					<tr>
						<td><b>Code Postal</b></td>
						<td valign="top"><form:input id="codePostal"
							path="codePostal" /> <form:errors path="codePostal"
							cssClass="error" /> <span class="style1">*</span> <script
							type="text/javascript">
									Spring.addDecoration(new Spring.ElementDecoration({
										elementId : "codePostal",
										widgetType : "dijit.form.ValidationTextBox",
										widgetAttrs : { required : true, invalidMessage : "value is required." }
									}));   
								</script></td>
						<td><b>Pays</b></td>
						<td valign="top"><form:select cssStyle="font-size:10px;" id="pays" path="pays">
							<form:option value="" label="" />
							<form:options items="${countries}" itemValue="description"
								itemLabel="description" />
						</form:select> <span class="style1">*</span> <form:errors path="pays"
							cssClass="error" /></td>								

					</tr>
					<tr>
						<td colspan="4">&nbsp;</td>
					</tr>
					<tr>
						<td colspan="4" align="center"><input type="submit"
							name="Submit" value="Envoyer"> <br>
						</td>
					</tr>
				</table>
			</form:form> <font face="Verdana, Arial" size="1" color="#000000"> <b><font
				color="#FF0000">*Champs Necessaires</font></b> </font></div>
			<!--- end of box border --></div>
			</div>
			</div>
			</div>
			</div>
			</div>
			</div>
			</div>
			<!-- --></div>
			</td>
		</tr>
	</table>
	</td>
</tr>
</table>
</td>
</tr>
</table>
<table width="80%" align="center" border="0" cellspacing="0"
	cellpadding="0">
	<tr>

	</tr>
	<tr>
		<td bgcolor="#5C7639">
		<table width="100%" border="0" cellspacing="0" cellpadding="15">
			<tr>
				<td align="center" class="white-text">Copyright © 2008 <b>Busness</b>
				Company.</td>
			</tr>
		</table>
		</td>
	</tr>
</table>
</body>
</html>