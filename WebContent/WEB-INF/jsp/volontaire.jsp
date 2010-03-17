<%@ page language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<jsp:include page="entete.jsp" />
<tr>
	<td valign="top" bgcolor="#FFFFFF">
	<table width="100%" border="0" cellpadding="0" cellspacing="10">
		<tr>
			<td align="center" class="px16">
			<h1 class="blye-text-regular">Fiche Volontaire</h1>
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
			<div id="content">			
			<form:form method="post" commandName="volontaire">
				<table width="100%" border="0" cellpadding="0" align="center"
					cellspacing="0">

					<!-- Informations Generales -->
					<tr>
						<td colspan="4" align="left" bgcolor="#EFEFEF"><font size="4"
							color="#C53A4A">Informations Generales</font></td>
					</tr>
					<tr>
						<td colspan="4">&nbsp;</td>
					</tr>
					<tr>
						<td width="60%" colspan="3"><b>Etes vous membre de
						Re-Source/Sununet?</b></td>
						<td valign="top"><form:radiobuttons path="membre"
							items="${volontaire.ouiNonOptions}" /> <span class="style1">*</span>
						<form:errors path="membre" cssClass="error" /></td>
					</tr>
					<tr>
						<td colspan="4">&nbsp;</td>
					</tr>
					<tr>
						<td colspan="3"><b>Seriez vous d'accord pour donner de
						votre temps au Senegal (Administration, ONG)?</b></td>
						<td valign="top"><form:radiobuttons path="accord"
							items="${volontaire.ouiNonOptions}" /> <span class="style1">*</span>
						<form:errors path="accord" cssClass="error" /></td>
					</tr>
					<tr>
						<td colspan="4">&nbsp;</td>
					</tr>
					<tr>
						<td colspan="3"><b>Combien d'heures par an ou pour une
						seule annee</b></td>
						<td valign="top"><form:radiobuttons path="nombreHeure"
							items="${volontaire.nombreHeuresOptions}" /> <span class="style1">*</span>
						<form:errors path="nombreHeure" cssClass="error" /></td>
					</tr>
					<tr>
						<td colspan="4">&nbsp;</td>
					</tr>
					<tr>
						<td colspan="3"><b>Dans quel pays souheteriez vous donner
						votre temps si Senegal, preciser La ville ou region</b></td>
						<td valign="top"><form:input id="location" path="location"
							cssStyle="width:230px" /> <span class="style1">*</span> <form:errors
							path="location" cssClass="error" /> <script
							type="text/javascript">
								Spring.addDecoration(new Spring.ElementDecoration({
									elementId : "location",
									widgetType : "dijit.form.ValidationTextBox",
									widgetAttrs : { required : true, invalidMessage : "value is required." }
								}));   
							</script></td>
					</tr>
					<tr>
						<td colspan="4">&nbsp;</td>
					</tr>
					<tr>
						<td colspan="4"><b>A quelles conditions?</b></td>
					</tr>
					<tr>
						<td colspan="4">&nbsp;</td>
					</tr>					
					<tr>
						<td>&nbsp;&nbsp;&nbsp;Logement </td>
						<td colspan="3" valign="top"><form:radiobuttons path="logement"
							items="${volontaire.ouiNonOptions}" /> <span class="style1">*</span>
						<form:errors path="logement" cssClass="error" /></td>
					</tr>
					<tr>
						<td>&nbsp;&nbsp;&nbsp;Nourriture </td>
						<td colspan="3" valign="top"><form:radiobuttons path="nourriture"
							items="${volontaire.ouiNonOptions}" /> <span class="style1">*</span>
						<form:errors path="nourriture" cssClass="error" /></td>
					</tr>
					<tr>
						<td colspan="4">&nbsp;<br><br></td>
					</tr>

					<!-- Information Contact -->
					<tr>
						<td colspan="4" align="left" bgcolor="#EFEFEF"><font size="4"
							color="#C53A4A">Informations Contact</font></td>
					</tr>
					<tr>
						<td colspan="4">&nbsp;</td>
					</tr>
					<tr>
						<td width="10%"><b>Rue</b></td>
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
						<td width="17%"><b>Pays</b></td>
						<td valign="top"><form:select cssStyle="font-size:10px;" id="pays" path="pays">
							<form:option value="" label="" />
							<form:options items="${countries}" itemValue="description"
								itemLabel="description" />
						</form:select> <span class="style1">*</span> <form:errors path="pays"
							cssClass="error" /></td>
					</tr>
					<tr>
						<td><b>Ville</b></td>
						<td valign="top"><form:input id="ville" path="ville" /> <span
							class="style1">*</span> <form:errors path="ville"
							cssClass="error" /> <script type="text/javascript">
											Spring.addDecoration(new Spring.ElementDecoration({
												elementId : "ville",
												widgetType : "dijit.form.ValidationTextBox",
												widgetAttrs : { required : true, invalidMessage : "value is required." }
											}));   
										  </script></td>
						<td><b>Address email</b></td>
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
						<td><b>Code Postal</b></td>
						<td valign="top"><form:input id="codePostal"
							path="codePostal" /> <span class="style1">*</span> <form:errors
							path="codePostal" cssClass="error" /> <script
							type="text/javascript">
											Spring.addDecoration(new Spring.ElementDecoration({
												elementId : "codePostal",
												widgetType : "dijit.form.ValidationTextBox",
												widgetAttrs : { required : true, invalidMessage : "value is required." }
											}));   
										</script></td>
						<td><b>Telephone</b></td>
						<td valign="top"><form:input id="telephone" path="telephone" />
						<form:errors path="telephone" cssClass="error" /> <script
							type="text/javascript">
											Spring.addDecoration(new Spring.ElementDecoration({
												elementId : "telephone",
												widgetType : "dijit.form.ValidationTextBox",
												widgetAttrs : { required : true, invalidMessage : "value is required." }
											}));   
										</script></td>
					</tr>
					<tr>
						<td colspan="4">&nbsp;<br><br></td>
					</tr>

					<!-- Identite et Information Professional -->

					<tr>
						<td colspan="4" align="left" bgcolor="#EFEFEF"><font size="4"
							color="#C53A4A">Votre Identite</font></td>
					</tr>
					<tr>
						<td colspan="4">&nbsp;</td>
					</tr>
					<tr>
						<td><b>Prenom</b></td>
						<td><form:input id="prenom" path="prenom" /> <span
							class="style1">*</span> <script type="text/javascript">
												Spring.addDecoration(new Spring.ElementDecoration({
													elementId : "prenom",
													widgetType : "dijit.form.ValidationTextBox",
													widgetAttrs : { required : true, invalidMessage : "value is required." }
												}));   
											</script></td>
						<td><b>Profession Actuelle</b></td>
						<td><form:input id="profession" path="profession" /> <span
							class="style1">*</span> <script type="text/javascript">
												Spring.addDecoration(new Spring.ElementDecoration({
													elementId : "profession",
													widgetType : "dijit.form.ValidationTextBox",
													widgetAttrs : { required : true, invalidMessage : "value is required." }
												}));   
											</script></td>
					</tr>
					<tr>
						<td><b>Nom</b></td>
						<td valign="top"><form:input id="nom" path="nom" /> <span
							class="style1">*</span> <script type="text/javascript">
												Spring.addDecoration(new Spring.ElementDecoration({
													elementId : "nom",
													widgetType : "dijit.form.ValidationTextBox",
													widgetAttrs : { required : true, invalidMessage : "value is required." }
												}));   
											</script></td>
						<td><b>Titre</b></td>
						<td valign="top"><form:input id="titre" path="titre" /> <script
							type="text/javascript">
												Spring.addDecoration(new Spring.ElementDecoration({
												elementId : "titre",
												widgetType : "dijit.form.ValidationTextBox",
												widgetAttrs : { required : true, invalidMessage : "value is required." }
											 	}));   
											</script></td>
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
				color="#FF0000">* Necessaire</font></b> </font></div>
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