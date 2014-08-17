<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="net.tanesha.recaptcha.ReCaptcha" %>
    <%@ page import="net.tanesha.recaptcha.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="static/css/template.css"/>
<script src="Scripts/jquery-1.6.1.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery-ui-1.8.13.custom.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery.validate.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery.validate.wrapper.js" type="text/javascript"></script>
 
<script type="text/javascript" language="javascript">
 
    $(document).ready(function () {
        // 1. prepare the validation rules and messages.
        var rules = {
            textbox1: {
                required: true,
                minlength: 8
            }
           
        };
        var messages = {
            textbox1: {
                required: "textbox1 is required",
                minlength: "password needs to be of 8 characters"
            }
        };
 
        // 2. Initiate the validator
        var validator
            = new jQueryValidatorWrapper("registration",
                rules, messages);
 
        // 3. Set the click event to do the validation
        $(".button").click(function () {
            if (!validator.validate())
                return;
 
            alert("Validation Success!");
        });
    });
       
</script>
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
<td>Enter Password:</td><td><input type="text" id="pass" name="pass" paceholder="Enter password"></td>
</tr>
<tr>
<td>ReEnter Password:</td><td><input type="text" id="pass" name="pass" paceholder="ReEnter password"></td>
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