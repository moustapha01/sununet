<%@ page language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<jsp:include page="entete.jsp" />
<tr>
	<td valign="top" bgcolor="#FFFFFF">
	<table width="100%" border="0" cellpadding="0" cellspacing="10">
		<tr>
			<td align="center" class="px16">
			<h1 class="blye-text-regular">Contactez Nous</h1>
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
			<form:form method="post" commandName="contact">
				<table width="80%" border="0" cellpadding="0" align="center"
					cellspacing="0">
					
					<tr>
						<td width="20%"><b>Nom et Prenom</b></td>
						<td valign="top"><form:input id="nom"
							path="nom" /> <span class="style1">*</span> <form:errors
							path="nom" cssClass="error" /> <script
							type="text/javascript">
											Spring.addDecoration(new Spring.ElementDecoration({
												elementId : "nom",
												widgetType : "dijit.form.ValidationTextBox",
												widgetAttrs : { required : true, invalidMessage : "value is required." }
											}));   
										</script>
						</td>
					</tr>
					<tr>
						<td><b>Address Email</b></td>
						<td valign="top"><form:input id="email"
							path="email" /> <span class="style1">*</span> <form:errors
							path="email" cssClass="error" /> <script
							type="text/javascript">
											Spring.addDecoration(new Spring.ElementDecoration({
												elementId : "email",
												widgetType : "dijit.form.ValidationTextBox",
												widgetAttrs : { required : true, invalidMessage : "value is required." }
											}));   
										</script>
						</td>
					</tr>
					<tr>
						<td colspan="2">&nbsp;</td>
					</tr>
					<tr>
						<td valign="top"><b>Vos Commentaires</b></td>
						<td valign="top"><form:textarea id="commentaires"
							cssStyle="width:400px;height:200px;" path="commentaires" /> <span
							class="style1">*</span> <form:errors path="commentaires"
							cssClass="error" /> <script type="text/javascript">
									Spring.addDecoration(new Spring.ElementDecoration({
										elementId : "commentaires",
										widgetType : "dijit.form.SimpleTextarea",
										widgetAttrs : { required : true, invalidMessage : "value is required." }																				
									}));   
								</script>
						</td>
					</tr>									
					<tr>
						<td colspan="2">&nbsp;<br><br></td>
					</tr>

					<tr>
						<td colspan="2">&nbsp;</td>
					</tr>
					<tr>
						<td colspan="2" align="center"><input type="submit"
							name="Submit" value="Envoyer"> <br>
						</td>
					</tr>
					<tr>
						<td colspan="2">&nbsp;<br><br><br><br><br><br><br><br></td>
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