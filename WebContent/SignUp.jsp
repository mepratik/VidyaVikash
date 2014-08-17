<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="net.tanesha.recaptcha.ReCaptcha" %>
    <%@ page import="net.tanesha.recaptcha.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="static/css/template.css"/>

</head>
<body>
<div id="register" class="searchbar">
<form name="registration" id="registration"  method="POST" action="">
<h2 class="componentheading">
&nbsp;&nbsp;Registration
</h2>
<table  style="width: 100%; align: center; " border="0" cellspacing="10" cellpadding="0" style="background:#000">
<tbody>
<tr>
<td>Enter Password:</td><td><input type="text" name="pass" paceholder="Enter password"></td>
</tr>
<tr>
<td>ReEnter Password:</td><td><input type="text" name="pass" paceholder="ReEnter password"></td>
</tr>
<tr><td></td><td>Enter The Following Words </td></tr>
<tr><td></td><td>
 <%
          ReCaptcha c = ReCaptchaFactory.newReCaptcha("6LcriN0SAAAAAL-E1v2-QSZWeRnyCOYsTh9I6PDb", "6LcriN0SAAAAADWvr03U6Z1iQs1-KHasbB78Ennm", false);
          out.print(c.createRecaptchaHtml(null, null));
        %>
        </td>
  </tr>
<tr>
<td></td><td><input type="submit" class="button" value="Submit"></td>
</tr>
</tbody>
</table>
</form> 
<p>&nbsp;</p>
</div>

</body>
</html>