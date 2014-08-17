<%@ page import="net.tanesha.recaptcha.ReCaptcha" %>
    <%@ page import="net.tanesha.recaptcha.*" %>
<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"/>

<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<link rel="icon" type="image/png" href="static/images/favicon.png"/>
<link rel="stylesheet" type="text/css" media="screen" href="static/css/redmond/jquery-ui-1.8.19.custom.css"/>
	
<link rel="stylesheet" type="text/css" media="screen" href="static/css/ui.jqgrid.css"/>
<link rel="stylesheet" type="text/css" media="screen" href="static/css/ui.multiselect.css"/>
<link rel="stylesheet" type="text/css" href="static/css/template.css"/>



<script type="text/javascript" src="./static/js/jquery-1.8.0.js"></script>
<script type="text/javascript" src="./static/sld/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="./static/sld/jquery.effects.core.min.js"></script>
<script type="text/javascript" src="./static/sld/jquery.effects.blind.min.js"></script>
<script type="text/javascript" src="./static/sld/jquery.effects.bounce.min.js"></script>
<script type="text/javascript" src="./static/sld/jquery.effects.clip.min.js"></script>
<script type="text/javascript" src="./static/sld/jquery.effects.drop.min.js"></script>
<script type="text/javascript" src="./static/sld/jquery.effects.fold.min.js"></script>
<script type="text/javascript" src="./static/sld/jquery.effects.scale.min.js"></script>
<script type="text/javascript" src="./static/sld/jquery.effects.slide.min.js"></script>
<script type="text/javascript" src="./static/sld/wb.slideshow.js"></script>

<script src="static/js/jquery.jqGrid.min.js" type="text/javascript"></script>

<script src="static/js/vidyavikas.js" type="text/javascript"></script>
</head>
<body>


<div id="wrapper">

<div class="topbar">
<div style="float:left"><img src="static/images/twitter-icon.png" style="width:28px;height:28px;margin-left:5px;margin-top:2px;"/>
<a href="http://www.facebook.com/vidyavikas2012"><img src="static/images/facebook-icon.png" style="width:28px;height:28px;margin-left:5px;margin-top:2px;"/></a>
</div>
<div align="right" style="height:00px;float:right;margin-right:20px;">
<div>Welcome <%=session.getAttribute("username")%>
							<u><a href="Logout">Logout</a></u></div>





<!--  
if (session.getAttribute("uname") == null)
{
	
	out.println("<form action=\"UserLogin.jsp\" method=\"POST\" onSubmit=\"return showLogin();\" name=\"loginform\"><span class=\"loginblock\">Username : <input type=\"text\" name=\"name\" class=\"login\" id=\"inputlogin\"/>   Password : <input type=\"password\" id=\"inputpass\" name=\"pass\" class=\"login\"/></span> <input type=\"submit\" class=\"button\" id=\"but_login\" name=\"login\" value=\"Login\" style=\"width:50px;height:24px;position:relative;top:2px;border:0px\" /><button  class=\"button\" id=\"but_register\" style=\"width:70px;height:24px;position:relative;top:2px;border:0px\" >Sign Up</button></form>");
	out.println("");
	//response.sendRedirect("index.jsp");
	
}
else
{
out.println("Welcome "+session.getAttribute("uname")+"<u><a href=\"AdminOut.jsp\">Logout</a></u> ");
}
-->
 </div>
</div>


<div id="logotop">
<img src="static/images/logo-top2.png"/>
</div>


<div id="SlideShow">
<img src="./static/imgs/2.jpg" alt=""/>
<img src="./static/imgs/3.jpg" alt=""/>
<img src="./static/imgs/4.jpg" alt=""/>
<img src="./static/imgs/5.jpg" alt=""/>
<img src="./static/imgs/6.jpg" alt=""/>
<img src="./static/imgs/7.jpg" alt=""/>
<img src="./static/imgs/8.jpg" alt=""/>
<img src="./static/imgs/9.jpg" alt=""/>
</div>



<div id="mainmenu"  align="right" style="margin-top:2px">
<button class="button" id="but_chome">Home</button>
<button class="button" id="but_ceditdetails">Modify Details</button>
<button class="button" id="but_addclg">Add/Delete College</button>
<button class="button" id="but_adduser">Add/Delete User</button>
<button class="button" id="but_cupdatenews">Update News</button>
<button class="button" id="but_sendmail">Send Mail</button>
<button class="button" id="but_asearch">Search</button>



<!-- COmmenting to test without login -->


	
	<button class="button" id="but_profile">My Profile</button>



</div>

<div id="profilemenuitems" style="display:none">
<center>
<p/>
<button class="button" id="but_viewprofile">View/Edit Profile</button>
<p/>
<button class="button" id="but_changepassword">Change Password</button>
<p/>
</center>

</div>

<div id="left">
<div id="sidebarleft" class="sidebar">
<p> </p>
<h2 class="componentheading">
<center>Inspiration Behind<br/>Vidya Vikas</center>
</h2>
  <div id="aboutdrrajendra" style="padding:5px;padding-left:65px;">
<img src="./static/images/RD.jpg" border="2" style="box-shadow:8px 8px 8px #888888;"/>
<br/>
<b>Dr. Rajendra Dobhal</b>
</div>
</div>
<p/>
<i><center>"some text"</center></i>
</div>


<div id="right">
  <div id="sidebarright" class="sidebar">
    <div id="info" class="sidebar-content">
	<p> </p>
	<h2 class="componentheading">
	<center>News & Notices</center>
	</h2>
	<marquee direction="up" scrolldelay="150">
	IMPORTANT : Vidya Vikas - RC version released, your suggestions are welcomed. You can always mail us your valuable thoughts at contact@vidyavikas.com
	</marquee>
    <p/>	
    </div>
  </div>
</div>




<div id="main" class="main">
<div id="maincontent" style="border-radius: 20px">
<h2 class="componentheading">
About Vidya Vikas
</h2>
Vidya Vikas is a project developed under UCOST - Uttarakhand State Council for Science and Technology. The objective of this project is to make it easier for the people to search for the schools and colleges according to their needs and specifications. 
<p/>
There is sidebar provided at the left where you can enter either the collge details or school details and click on search.
<p/>The results would be displayed replacing this text and on clicking on any college name or school name, a right sidebar will slide up showing the information about that particular institution.
<p/>
The right sidebar has been set on display property none, you can click here to make it slide up. 
<p/>
The left sidebar contains the forms which will have autocomplete feature.
<p/>
The two buttons "Colleges" and "Schools" are placed below the left sidebar clicking on which will switch between the two forms, one for school and the other one for the college.
<p/>
Some optional features like location and fees are kept in the comments
<p/>
This website has been made by the students of Graphic Era University.
<p/>
<p>&nbsp</p>
</div>

<!-- View/Edit Profile  -->

<div id="profile" class="searchbar">
<form name="profile" method="POST" action="">
<h2 class="componentheading">
&nbsp;&nbsp;View/Edit Profile
</h2>
<table  style="width: 100%; align: center; " border="0" cellspacing="10" cellpadding="0" style="background:#000">
<tbody>
<tr>
<td style="width:20%"><b>Name:</b></td>
<td><span class="detail" id="name_detail">User's Name</span><span id="name_editdetail" class="editdetail"><input type="text" name="name" value="User's Name"/></span></td>
</tr><tr>
<td><b>Institute Name:</b></td>
<td><span class="detail" id="insname_detail">Graphic Era University</span><span id="insname_editdetail" class="editdetail"><input type="text" name="iname" value="Graphic Era University"/></span></td>
</tr>
<tr>
<td style="width:20%"><b>Email:</b></td></tr><tr>
<td><span class="detail" id="email_detail">someone@xyz.com</span><span id="email_editdetail" class="editdetail"><input type="text" name="email" value="someone@xyz.com"/></span></td >
</tr><tr>
<td><b>Moblie:</b></td>
<td><span class="detail" id="mob_detail">+919950682926</span><span id="mob_editdetail" class="editdetail"><input type="text" name="m_no" value="+919950682926"/></span></td>
</tr>
<tr>
<td>Gender:</td>
<td><select name="gender" ><option value=""  Selected="Selected">Select</option>
<option value="male">Male</option>
<option value="female">Female</option>
<option value="other">Other</option>
</select></td>
</tr>
<tr>
<td style="width:20%"><b>City:</b></td>
<td><span class="detail" id="city_detail">User's city</span><span id="city_editdetail" class="editdetail"><input type="text" name="city" value="User's city"/></span></td>

</tr>
<tr>
<td style="width:20%"><b>State:</b></td>
<td><span class="detail" id="state_detail">User's state</span><span id="state_editdetail" class="editdetail"><input type="text" name="state" value="User's Name"/></span></td>

</tr>
<td></td>
<td><input type="submit" id="eprofile" name="eprofile" class="button" value="Save"/></td>
</tr>
</tbody>
</table>
</form> 
<p>&nbsp;</p>
</div>

<!-- Change Password -->


<div id="changepass" class="searchbar">
<form id="passchange" method="POST">
<h2 class="componentheading">
&nbsp;&nbsp;Change Password
</h2>
<table style="width:100%" border="0" cellspacing="10" cellpadding="0">
<tbody>
<tr>
<td>Old Password:</td><td><input type="password" name="opass" palceholder="Enter Old Password"/> </td>
</tr>
<tr>
<td>New Password:</td><td><input type="npassword" name="npass" palceholder="Enter New Password"/> </td>
</tr>
<tr>
<td>Re_Enter New Password:</td><td><input type="rnpassword" name="nopass" palceholder="Re_Enter New Password"/> </td>
</tr>
<tr>
<td><input type="submit" id="eprofile" name="eprofile" class="button" value="Save"></td>
</tr>
</tbody>
</table>
</form> 
<p>&nbsp;</p>
</div>


<!-- Add College -->


<div id="addclg" class="searchbar">
<form id="passchange" method="POST">
<h2 class="componentheading">
&nbsp;&nbsp;Add/Delete College
</h2>
<table style="width:100%" border="0" cellspacing="10" cellpadding="0">
<tbody>
<tr>
<td>College Name:</td><td><input type="password" name="opass" palceholder="Enter Old Password"/> </td>
</tr>

<tr><td></td>
<td><input type="submit" id="addcollege" name="addcollege" class="button" value="Add College"></td>
<td><input type="submit" id="deletecollege" name="deletecollege" class="button" value="Delete College"></td>
</tr>
</tbody>
</table>
</form> 
<p>&nbsp;</p>
</div>

<!-- Add User -->


<div id="adduser" class="searchbar">
<form id="passchange" method="POST">
<h2 class="componentheading">
&nbsp;&nbsp;Add/Delete User
</h2>
<table style="width:100%" border="0" cellspacing="10" cellpadding="0">
<tbody>
<tr>
<td>User Name/Email:</td><td><input type="password" name="opass" palceholder="Enter Old Password"/> </td>
</tr>

<tr><td></td>
<td><input type="submit" id="addusr" name="addusr" class="button" value="Add User"></td>
<td><input type="submit" id="deleteusr" name="deleteusr" class="button" value="Delete User"></td>
</tr>
</tbody>
</table>
</form> 
<p>&nbsp;</p>
</div>


<!-- News Update -->
<div id="newsupdate" class="searchbar">
<h2 class="componentheading">
Update News Request
</h2>
<table border=1 style="width:100%">
<tr>
<td><b>S.No.</b></td><td><b>BODY</b></td><td><b>APPROVE</b></td>
</tr>
<tr>
<td>1.</td><td width="60%">fjfjfjff gerh grwegre fewgreg gegerwgj</td><td><a href="jdjd">Yes</a> &nbsp; <a href="jdjd">No</a></td></tr>
<td>2.</td><td width="60%">fjfjfjff gerh grwegre fewgreg gegerwgj</td><td><a href="jdjd">Yes</a> &nbsp; <a href="jdjd">No</a></td></tr>
<td>3.</td><td width="60%">fjfjfjff gerh grwegre fewgreg gegerwgj</td><td><a href="jdjd">Yes</a> &nbsp; <a href="jdjd">No</a></td></tr>
<td>4.</td><td width="60%">fjfjfjff gerh grwegre fewgreg gegerwgj</td><td><a href="jdjd">Yes</a> &nbsp; <a href="jdjd">No</a></td></tr>
<td>5.</td><td width="60%">fjfjfjff gerh grwegre fewgreg gegerwgj</td><td><a href="jdjd">Yes</a> &nbsp; <a href="jdjd">No</a></td></tr>
<td>6.</td><td width="60%">fjfjfjff gerh grwegre fewgreg gegerwgj</td><td><a href="jdjd">Yes</a> &nbsp; <a href="jdjd">No</a></td></tr>
<td>7.</td><td width="60%">fjfjfjff gerh grwegre fewgreg gegerwgj</td><td><a href="jdjd">Yes</a> &nbsp; <a href="jdjd">No</a></td></tr>
<td>8.</td><td width="60%">fjfjfjff gerh grwegre fewgreg gegerwgj</td><td><a href="jdjd">Yes</a> &nbsp; <a href="jdjd">No</a></td></tr>
<td>9.</td><td width="60%">fjfjfjff gerh grwegre fewgreg gegerwgj</td><td><a href="jdjd">Yes</a> &nbsp; <a href="jdjd">No</a></td></tr>
<td>10.</td><td width="60%">fjfjfjff gerh grwegre fewgreg gegerwgj</td><td><a href="jdjd">Yes</a> &nbsp; <a href="jdjd">No</a></td></tr>
</tr>
</table>
</div>

<!-- Send Mail -->
<div id="sendmail" class="searchbar">
<h2 class="componentheading">
Send Mail
</h2><table>
<td>
To:</td>
<td>
<select name="to">
<option value="students">Students</option>
<option value="colleges">Colleges</option>
<option value="both">Both</option>
</select></td>
</tr>
<tr><td>Subject:</td><td><input type="text"></tr>
<tr><td>Body:</td><td><textarea rows="10" cols="50"></textarea></tr>
<tr><td>Attach File:</td><td><input type="file"></tr>
<tr><td></td><td><input type="submit" id="send" name="send" class="button" value="Send"/></tr>
</table>
</div>

<!-- Admin Search -->
<div id="asearch" class="searchbar">
<h2 class="componentheading">
Serch User
</h2><table>
<tr><td>Name:</td><td><input type="text"></tr>
<tr><td>College Name:</td><td><input type="text"></tr>

<tr><td></td><td><input type="submit" id="send" name="send" class="button" value="Search"/></tr>
</table>
</div>




<!-- View/Edit Profile  -->

<div id="profile" class="searchbar">
<form name="profile" method="POST" action="">
<h2 class="componentheading">
&nbsp;&nbsp;View/Edit Profile
</h2>
<table  style="width: 100%; align: center; " border="0" cellspacing="10" cellpadding="0" style="background:#000">
<tbody>
<tr>
<td style="width:20%"><b>Name:</b></td>
<td><span class="detail" id="name_detail">User's Name</span><span id="name_editdetail" class="editdetail"><input type="text" name="name" value="User's Name"/></span></td>
</tr><tr>
<td><b>Institute Name:</b></td>
<td><span class="detail" id="insname_detail">Graphic Era University</span><span id="insname_editdetail" class="editdetail"><input type="text" name="iname" value="Graphic Era University"/></span></td>
</tr>
<tr>
<td style="width:20%"><b>Email:</b></td></tr><tr>
<td><span class="detail" id="email_detail">someone@xyz.com</span><span id="email_editdetail" class="editdetail"><input type="text" name="email" value="someone@xyz.com"/></span></td >
</tr><tr>
<td><b>Moblie:</b></td>
<td><span class="detail" id="mob_detail">+919950682926</span><span id="mob_editdetail" class="editdetail"><input type="text" name="m_no" value="+919950682926"/></span></td>
</tr>
<tr>
<td>Gender:</td>
<td><select name="gender" ><option value=""  Selected="Selected">Select</option>
<option value="male">Male</option>
<option value="female">Female</option>
<option value="other">Other</option>
</select></td>
</tr>
<tr>
<td style="width:20%"><b>City:</b></td>
<td><span class="detail" id="city_detail">User's city</span><span id="city_editdetail" class="editdetail"><input type="text" name="city" value="User's city"/></span></td>

</tr>
<tr>
<td style="width:20%"><b>State:</b></td>
<td><span class="detail" id="state_detail">User's state</span><span id="state_editdetail" class="editdetail"><input type="text" name="state" value="User's Name"/></span></td>

</tr>
<td></td>
<td><input type="submit" id="eprofile" name="eprofile" class="button" value="Save"/></td>
</tr>
</tbody>
</table>
</form> 
<p>&nbsp;</p>
</div>

<!-- Change Password -->
<div id="changepass" class="searchbar">
<form id="passchange" method="POST">
<h2 class="componentheading">
&nbsp;&nbsp;Change Password
</h2>
<table style="width:100%" border="0" cellspacing="10" cellpadding="0">
<tbody>
<tr>
<td>Old Password:</td><td><input type="password" name="opass" palceholder="Enter Old Password"/> </td>
</tr>
<tr>
<td>New Password:</td><td><input type="npassword" name="npass" palceholder="Enter New Password"/> </td>
</tr>
<tr>
<td>Re_Enter New Password:</td><td><input type="rnpassword" name="nopass" palceholder="Re_Enter New Password"/> </td>
</tr>
<tr>
<td><input type="submit" id="eprofile" name="eprofile" class="button" value="Save"></td>
</tr>
</tbody>
</table>
</form> 
</div>

		<div id="searchresults">
			<h2 class="componentheading">Search Results</h2>
			<div id="results">
			</div>
		</div>
	</div>
	<footer>
		<div id="footer">Copyright Protected © 2012 Vidya Vikas | All Rights Reserved</div>
	</footer>
	</div>
</body>
</html>