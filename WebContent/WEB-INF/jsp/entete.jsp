<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	function showDetails(detailPanel){
		var plusButton = "maximize" + detailPanel;
		var minusButton = "minimize" + detailPanel;
		document.getElementById(detailPanel).style.display =  'block';
		document.getElementById(detailPanel).style.position = 'fixed';	
		document.getElementById(minusButton).style.display =  'block';
		document.getElementById(minusButton).style.position = 'fixed';			
		document.getElementById(plusButton).style.display =  'none';
	}
	
	function hideDetails(detailPanel){
		var plusButton = "maximize" + detailPanel;
		var minusButton = "minimize" + detailPanel;
		document.getElementById(detailPanel).style.display =  'none';	
		document.getElementById(plusButton).style.position = 'fixed';	
		document.getElementById(plusButton).style.display =  'block';	
		document.getElementById(minusButton).style.display =  'none';		

	}
</script>
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" class="tundra spring">
<table width="80%" align="center" border="0" cellspacing="0" cellpadding="0">

  <tr>
  	<td colspan="3">
  		<img src="images/headerTitle.gif" />
  	</td>
  </tr>
  <tr>
    <td width="20%" valign="top" bgcolor="#FFFFFF">
    <div class="leftBox">
	<table border="0" cellspacing="0" cellpadding="0">
	
	  <tr>
	  	<td background="images/bg_login.gif">
	  		<table >
		      <tr>
		          <td colspan="2"><b><br>&nbsp;&nbsp;Enregistrer </b></td>
		      </tr>
		      <tr>
		          <td colspan="2">&nbsp;&nbsp;<input name="textfield" type="text" value="Username"></td>
		      </tr>
		      <tr>
		          <td colspan="2">&nbsp;&nbsp;<input name="textfield" type="text" value="Password"></td>
		      </tr>
		      <tr>
		      	  <td colspan="2">&nbsp;&nbsp;<input type="submit" name="Submit" value="Login"></td>
		      </tr>	
		      <tr>
		      	  <td colspan="2">&nbsp;</td>
		      </tr>  		
	  		</table>
	  	</td>
	  </tr>
      <tr>
        	<td colspan="2"><br><br></td>
      </tr>
      <tr>
        <td colspan="2" bgcolor="#FFFFFF">
        <table width="100%" border="0" cellspacing="0" cellpadding="10">
          <tr>
            <td><img src="images/index_31.gif" alt=""></td>
          </tr>
          <tr>
            <td><b>
            APPEL Rejoignez nous et faites l'Histoire</b><br>	
			Nous sommes des Sénégalais-es de la diaspora (commerçants, employés, restaurateurs, enseignants, ouvriers, chercheurs,
			banquiers, expert comptables, artisans, ingénieurs) vivant a l'extérieur du Sénégal et voulons nous réunir et mettre
			ensemble nos compétences et volontés pour contribuer au développement de notre pays. 
          </tr>
          <tr>
            <td align="center"><img src="images/index_44.gif" width="185" height="8" alt=""></td>
          </tr>
          <tr>
            <td><img src="images/index_47.gif" alt=""></td>
          </tr>
          <tr>
            <td>
	            <table width="100%" border="0" cellspacing="0" cellpadding="0">
	              <tr>
					<td width="6%">&nbsp;</td>
				  </tr>
	            </table>
            </td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td colspan="2">&nbsp;<br><br><br><br><br><br><br><br><br></td>
      </tr>
    </table>
    </div>
    </td>
    <td width="1%">&nbsp;</td>
    
	<!-- RIGHT SIDE PANEL BEGINS HERE -->
    <td width="79%" valign="top" class="bodyBg">
    	<div class="leftBox">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
		  <tr>
			<td>
			<table bgcolor="white" border="0" cellspacing="0" cellpadding="0">
			  <tr>
				<td align="center"><a href="index.do"><img border="0" src="images/btnAcceuil.png"/></a></td>
				<td align="center"><a href="demandeur.do"><img border="0" src="images/btnDemandeur.png"/></a></td>
				<td align="center"><a href="volontaire.do"><img border="0" src="images/btnVolontaire.png"/></a></td>
				<td align="center"><a href="http://www.sununet.com" target="_blank"><img border="0" src="images/btnResource.png"/></a></td>
				<td align="center"><a href="faqs.do"><img border="0" src="images/btnFaqs.png"/></a></td>
				<td align="center"><a href="contact.do"><img border="0" src="images/btnContact.png"/></a></td>
				<td width="45%">&nbsp;</td>
			  </tr>
			</table>
			</td>
		  </tr>  
 
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    