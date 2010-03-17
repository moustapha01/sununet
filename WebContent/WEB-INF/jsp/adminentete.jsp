<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page session="false"%>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" rel="stylesheet" href="<c:url value="/resources/dijit/themes/tundra/tundra.css" />" />

<link href="css/style.css" rel="stylesheet" type="text/css"/>
<script language="JavaScript" src="js\tableH.js" type="text/javascript"></script>
<style>
  .error { color: red; }
</style>
<script type="text/javascript" src="<c:url value="/resources/dojo/dojo.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/spring/Spring.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/spring/Spring-Dojo.js" />"></script> 
<script type="text/javascript">
	function expand(section){
		var tmpMinimize = section + '_' + 'minimize';
		var tmpMaximize = section + '_' + 'maximize';
		var tmpDetails =  section + '_' + 'details';
		
		document.getElementById(tmpMinimize).style.position = 'fixed';	
		document.getElementById(tmpMinimize).style.display =  'block';	
		document.getElementById(tmpDetails).style.position = 'fixed';	
		document.getElementById(tmpDetails).style.display =  'block';		
		document.getElementById(tmpMaximize).style.display =  'none';
	}
	
	function collapse(section){
		var tmpMinimize = section + '_' + 'minimize';
		var tmpMaximize = section + '_' + 'maximize';
		var tmpDetails =  section + '_' + 'details';
			
		document.getElementById(tmpMaximize).style.position = 'fixed';	
		document.getElementById(tmpMaximize).style.display =  'block';			
		document.getElementById(tmpMinimize).style.display =  'none';
		document.getElementById(tmpDetails).style.display =  'none';

	}
</script>
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" class="tundra spring">
<table bgcolor="#FFFFFF" width="80%" align="center" border="0" cellspacing="0" cellpadding="0">
  <tr>
  	<td colspan="2" valign="top" align="center"><div style="height:35px;padding:5px" class="header"><h1 class="blye-text-regular">Administration Banque de Temps</h1></div></td>
  </tr>
  <tr>
    <td width="20%" valign="top">
    	<br>
		<table>
			<tr>
				<td>
	        		<div>
						<div id="demandeur_maximize" style="float: left;display: none;">
							<img align="middle" src="images/plusButton.gif" onclick="expand('demandeur');">
						</div>
						<div id="demandeur_minimize" style="float: left;">
							<img align="middle" src="images/minusButton.gif" onclick="collapse('demandeur');">
						</div>
						<div>
							<b>Demandeurs</b>						
						</div>					
					</div>				
					<div id="demandeur_details" class="annonce">
						<table>			          
				          <tr>
				          	<td>
				          		<a class="blye-text-regular" href="demandeurs.htm?type=nouveaux">nouveaux</a>
				          	</td>
				          </tr>			    
				          <tr>
				          	<td>
				          		<a class="blye-text-regular" href="demandeurs.htm?type=existant">existant</a>
				          	</td>
				          </tr>     
				          <tr>
				          	<td>
				          		<a class="blye-text-regular" href="demandeurs.htm?type=expires">expires</a>
				          	</td>
				          </tr>
			     	 	</table>	
			      	</div>					
				</td>
			</tr>
			<tr>
				<td>
	        		<div>
						<div id="volontaire_maximize" style="float: left;display: none;">
							<img align="middle" src="images/plusButton.gif" onclick="expand('volontaire');">
						</div>
						<div id="volontaire_minimize" style="float: left;">
							<img align="middle" src="images/minusButton.gif" onclick="collapse('volontaire');">
						</div>
						<div>
							<b>Volontaires</b>						
						</div>					
					</div>				
					<div id="volontaire_details" class="annonce">
						<table>			          
				          <tr>
				          	<td>
				          		<a class="blye-text-regular" href="volontaires.htm">les volontaires</a>
				          	</td>
				          </tr>			    
			     	 	</table>	
			      	</div>					
				</td>
			</tr>
		</table>
    </td>