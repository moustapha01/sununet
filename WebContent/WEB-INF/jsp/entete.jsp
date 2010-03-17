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
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" class="tundra spring">
<table width="80%" align="center" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="20%" valign="top" bgcolor="#FFFFFF">
	<table width="216" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="216"><a href="#"><img src="images/index_03.jpg" alt="" width="216" height="166" border="0"></a></td>
      </tr>
      <tr>
        <td background="images/bg_login.gif">
		<table width="100%" border="0" cellspacing="0" cellpadding="10">
          <tr>
            <td>
			<table width="100%" border="0" cellspacing="0" cellpadding="3">
              <tr>
                <td colspan="2"><b>Enregistrer </b></td>
              </tr>
              <tr>
                <td colspan="2"><input name="textfield" type="text" value="Username"></td>
              </tr>
              <tr>
                <td width="73%"><input name="textfield" type="text" value="Password"></td>
                <td width="27%" align="center"><input type="submit" name="Submit" value="Go"></td>
              </tr>
            </table>
			</td>
          </tr>
        </table>
		</td>
      </tr>
      <tr>
        <td bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="0" cellpadding="10">
          <tr>
            <td><img src="images/index_31.gif" alt=""></td>
          </tr>
          <tr>
            <td align="center"><img src="images/banking2.jpg" alt=""></td>
          </tr>
          <tr>
            <td><b>APPEL Rejoignez nous et faites l'Histoire</b><br>	
            	Nous sommes des Senegalais de la diaspora (commercants, employes, restaurateurs, enseignants, ouvriers, chercheurs,
            	banquiers, expert comptables, artisans, ingenieurs) vivant a l'exterieur du Senegal et voulons nous reunir et
            	mettre ensemble nos competences et volontes pour contribuer au development de notre pays.
          </tr>
          <tr>
            <td align="center"><img src="images/index_44.gif" width="185" height="8" alt=""></td>
          </tr>
          <tr>
            <td><img src="images/index_47.gif" alt=""></td>
          </tr>
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
				<td width="6%">&nbsp;</td>
			  </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
    </table>
    </td>
    <td width="2%" bgcolor="#364E1D">&nbsp;</td>
    
	<!-- RIGHT SIDE PANEL BEGINS HERE -->
    <td width="78%" valign="top" bgcolor="#364E1D">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
		  <tr>
			<td>
			<table width="700" border="0" cellspacing="5" cellpadding="5">
			  <tr>
				<td class="areaNav" width="140" align="center"><a class="nav" href="index.htm">Acceuil</a></td>
				<td class="areaNav" width="140" align="center"><a class="nav" href="demandeur.htm">Fiche Demandeur</a></td>
				<td class="areaNav" width="140" align="center"><a class="nav" href="volontaire.htm">Fiche Volontaire</a></td>
				<td class="areaNav" width="140" align="center"><a class="nav" href="index.htm">Services</a></td>
				<td class="areaNav" width="140" align="center"><a class="nav" href="faqs.htm">FAQs</a></td>
				<td class="areaNav" width="140" align="center"><a class="nav" href="contact.htm">Contacts</a></td>
			  </tr>
			</table>
			  <img src="images/index_12bA.jpg"/>
			</td>
		  </tr>    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    