<%@ page import="net.tanesha.recaptcha.ReCaptcha" %>
    <%@ page import="net.tanesha.recaptcha.*" %>

    <html>
      <body>
     <form name="registration" id="registration" action="test.jsp"  method="POST" action="">
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
<tr>
<td></td><td><input type="submit" class="button" value="Submit"></td>
</tr>
</tbody>
</table>        <%
          ReCaptcha c = ReCaptchaFactory.newReCaptcha("6LcriN0SAAAAAL-E1v2-QSZWeRnyCOYsTh9I6PDb", "6LcriN0SAAAAADWvr03U6Z1iQs1-KHasbB78Ennm", false);
          out.print(c.createRecaptchaHtml(null, null));
        %>
        <input type="submit" value="submit" />
        </form>
      </body>
    </html>