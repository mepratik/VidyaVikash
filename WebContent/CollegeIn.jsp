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
<link rel="stylesheet" type="text/css" href="static/css/template-last.css"/>



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
<script type="text/javascript" src="./static/sld/ticker.js"></script>
<script type="text/javascript" src="./static/sld/wb.slideshow.js"></script>
<link rel="stylesheet" type="text/css" href="./static/css/a.css" />
<link rel="stylesheet" type="text/css" href="./static/jsjquery-ui.css" />
<script type="text/javascript" src="./static/js/b.js"></script>
<script src="static/js/jquery.jqGrid.min.js" type="text/javascript"></script>
<script src="static/js/vidyavikas.js" type="text/javascript"></script>
<script type="text/javascript">
$(function() {
$('#tags_1').tagsInput({width:'auto'});
});
</script>
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
<button class="button" id="but_home">Home</button>
<button class="button" id="but_editdetails">Edit Details</button>
<button class="button" id="but_updatenews">Update News</button>

<!-- COmmenting to test without login -->


	
	<button class="button" id="but_profile">My Profile</button>


<button class="button" id="but_aboutucost">About UCOST</button>
<button class="button" id="but_aboutgeu">About GEU</button>
<button class="button" id="but_contactus">Contact Us</button>
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
	<div id="news-container">
	<ul >
		<li>
			<div>
				Rajasthan Royals terminate contract of tainted trio
			</div>
		</li> 
		<li>
			<div>

				Pakistan's Musharraf Granted Bail in Bhutto Murder Case - VOA
			</div>
		</li> 
		<li>
			<div>
				
			   SC wants two-finger test to be stopped immediately
			</div>
		</li>   
		<li>
			<div>
				18-year-old Eesha invents a revolutionarydevice to charge  phone
			</div>
		</li>
		<li>
			<div>
				Sanjay Dutt to remain in Arthur Road jail for some time
			</div>
		</li>
		<li>
			<div>
				6 Sky Events This Week: Cosmic Scorpion, Planetary Triangle
			</div>
		</li>
		
	</ul>
</div>
	
    <p/>	
  
    <p/>	
    </div>
  </div>
</div>




<div id="main" class="main">
<div id="home" class="pagecontent" style="border-radius: 20px">
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
<!-- about geu -->
<div id="aboutgeu" class="about pagecontent">
<h2 class="componentheading">
&nbsp;&nbsp;Graphic Era University
</h2>
<p>
GEU had a small beginning in 1993 as Graphic Era Computer Center. 
The school started offering courses in technology in 1998. 
In 2001, it started offering engineering courses in Computer Science, Information Technology and Electronics and Communication.</p>
<p>
GEU offered its first graduate courses in the summer of 1998 when it introduced Bachelor's of Computer Application (BCA) and Bachelors in Management and IT (BMIT). The classes were conducted from two classrooms and a computer lab in a small commercial building. The first batch graduated in 2001 with a degree in BCA or BMIT. It now offers academic and professional programs at Undergraduate and Post-graduate level in Computer Applications, Engineering, Hotel Management and Management. It was Declared as Deemed University U/S 3 of the UGC Act, 1956 vide Notification F.9-48/2007-U.3(A) dated 14, 2008 and Approved by Ministry of Human Resource Development, Government of India.
</p>
<p>
Presently ,there are 3 university known as Graphic Era university<br/>
1.Graphic era university Dehradun<br/>
2.Uttarakhand Graphic Era Parvatiya Vishwavidyalay Dehradun<br/>
3.Graphic era hill university Bhimtal<br/>
</p>
<p>

Graphic Era University, formerly known as Graphic Era Institute of Technology is reckoned for its academic excellence in engineering sciences & management studies. The institution has delivered world class engineers, managers, and is a centre for research and specialized studies. We offer academic and professional programs at Undergraduate and Post-graduate level in Engineering, Management, Computer Application and Hotel Management.
GEU aims at developing the aptitude of the students through interactive sessions with their mentors, regular brainstorming in group discussions and exposure to a plethora of events. The University offers a vibrant cultural atmosphere that aids in extra curricular development and recognition of budding talent.
<br/>
<b><u><i>
"Declared as Deemed University U/S 3 of the UGC Act, 1956 vide Notification F.9-48/2007-U.3(A) dated August 14, 2008 and Approved by Ministry of Human Resource Development, Government of India."</i></u></b></p>
</div>
<!-- about ucost -->
<div id="aboutucost" class="about pagecontent">
<h2 class="componentheading">
&nbsp;&nbsp;Uttarakhand Council Of Science And Techknolodgy
</h2>
<p>
Uttarakhand State Council for Science and Technology was registered under the Registration of Societies Act, 1860 in November 2002.

The apex body of the Council is the General Body which is chaired by the Hon'ble Chief Minister.
</p>
<p>
Hon'ble Ministers and Secretaries from various Development Departments and representatives from Water Resources, Health and Engineering, Public Works, Forest, Agriculture, Industry & Technical Education departments are the members of the Governing Body.
Apart from this, Vice Chancellors and Eminent Scientists, representatives from national level scientific institutions are also the members of this body.
</p>
<p><b>The overall incharge of the Council is the Director General.</b></p>
<h2 class="ctheading">
&nbsp;&nbsp;Vission
</h2>
<p>
"The flag on the vertex of the State Vidhan Sabha and a blade of grass in the green field of a sweating farmer - their meandering must hearld - the dawn of a new change."

"The change, that ought to metamorphose the State, giant in geographical size, rich in natural resources and above all enriched with peoples' will for betterment, in to a - Modern science state."
</p>
<h2 class="ctheading">
&nbsp;&nbsp;Mission
</h2>
<p>
"The power of the science rests in elevating the downtrodden lot of the people they being at the last rung of the society. Our villages are like our unit cells. If the science and technology reaches the grassroot level, it shall always lean to strengthen the apex of the society."

"The mission of Science & Technology therefore, to direct all engaged in pursuit of excellence, in this Dev Bhoomi for</br>
<b><i>THE COMMON LARGER GOOD OF THE LARGEST NUMBER OF PEOPLE..."</i></b>
</p>
</div>
<!-- View/Edit Profile  -->

<div id="viewprofile" class="searchbar pagecontent">
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


<div id="changepassword" class="searchbar pagecontent">
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

<!-- contact us -->
<div id="contactus" class="about pagecontent" >
<h2 class="componentheading">
Contact Us
</h2>
<table border="0" cellspacing="0" cellpadding="8">
<tr>
<td><b>Authority</b> :</td><td>Graphic Era University</td>
</tr>
<tr>
<td><b>Address</b> :</td><td>Clement Town, Dehradun, Utarakhand, India.</td></tr>
<tr>
<td><b>Email</b> :</td><td>help@vidyavikash.com</td></tr>
<tr>
<td><b>Help No.</b> :</td><td>+919410124603</td>
</tr>
</table>
</div>
<!-- Edit Details  -->
<div id="editdetails" class="searchbar pagecontent" >
<h2 class="componentheading">
Edit Detail
</h2>
<center>
<img src="./static/imgs/wip.png"/>

<h3>Work In Progress, Please Ckeck Back Soon.</h3></center>
</div>

<!-- about us -->
<div id="aboutus" class="about pagecontent">
<h2 class="componentheading">
Our Team
</h2>
<h2 class="ctheading">
Guides
</h2>
<table border="0" cellspacing="0" cellpadding="8">
<tr>
<td width="50%">
<font style="font-size:17px" color="#000000" face="Palatino Linotype"><b>Dr.Ankush Mittal</b></font><br/>
<font style="font-size:18px" color="#000000" face="Palatino Linotype">Dr.ankush.mittal@gmail.com<br/></font>

</td>
<td width="15%"></td>
<td>
<font style="font-size:17px" color="#000000" face="Palatino Linotype"><b>Dr.Rayan Gaudar</b></font><br/>
<font style="font-size:18px" color="#000000" face="Palatino Linotype">rhgaudar@gmail.com<br/></font>

</td>
</tr>
</table>
<h2 class="ctheading">
Backend Developer
</h2>
<table>
<tbody>
<tr>
<td>
 <font style="font-size:17px" color="#000000" face="Palatino Linotype"><b>Anubhav Srivastva</b></font><br/>
<font style="font-size:18px" color="#000000" face="Palatino Linotype">anubhav.v.sri@gmail.com<br/></font>
<font style="font-size:18px" color="#000000" face="calibri">B-Tech , C.S.E. (VIth sem)<br/></font>

</td>
</tr>
</tbody>
</table>
<h2 class="ctheading">
Frontend Developer
</h2>
<table border="0" cellspacing="0" cellpadding="5">
<tbody>
<tr>
 <td width="50%">
 <font style="font-size:17px" color="#000000" face="Palatino Linotype"><b>Nishkarsh Sharma</b></font><br/>
<font style="font-size:18px" color="#000000" face="Palatino Linotype">nishkarsh4@gmail.com<br/></font>
<font style="font-size:18px" color="#000000" face="calibri">B-Tech , C.S.E. (Vth sem)<br/></font>

</td>
<td width="15%"></td>
<td>
 <font style="font-size:17px" color="#000000" face="Palatino Linotype"><b>Pratik Kumar</b></font><br/>
<font style="font-size:18px" color="#000000" face="Palatino Linotype">pratikkumar938@gmail.com<br/></font>
<font style="font-size:18px" color="#000000" face="calibri">B-Tech , C.S.E. (Vth sem)<br/></font>

</td>
</tr>
</tbody>
</table>
<h2 class="ctheading">
Database Collector
</h2>
<table border="0" cellspacing="0" cellpadding="5">
<tr>
<td width="50%">
<font style="font-size:17px" color="#000000" face="Palatino Linotype"><b>Gaurav Auora</b></font><br/>
<font style="font-size:18px" color="#000000" face="Palatino Linotype">Gaurav@gmail.com<br/></font>
<font style="font-size:18px" color="#000000" face="calibri">B-Tech , C.S.E. (Vth sem)<br/></font>

</td>
<td width="15%"></td>
<td>
<font style="font-size:17px" color="#000000" face="Palatino Linotype"><b>Nishank Kumar Chauhan</b></font><br/>
<font style="font-size:18px" color="#000000" face="Palatino Linotype">nishank@gmail.com<br/></font>
<font style="font-size:18px" color="#000000" face="calibri">B-Tech , C.S.E. (Vth sem)<br/></font>

</td>
</tr>
<tr>
<td>
<font style="font-size:17px" color="#000000" face="Palatino Linotype"><b>Pamil Gaurung</b></font><br/>
<font style="font-size:18px" color="#000000" face="Palatino Linotype">pamil@gmail.com<br/></font>
<font style="font-size:18px" color="#000000" face="calibri">B-Tech , C.S.E. (Vth sem)<br/></font>

</td>
</tr>
</table>
</p>
</div>
<!-- News Update -->
<div id="updatenews" class="searchbar pagecontent">
<h2 class="componentheading">
Update News
</h2>
<table border=0>
<tr>
<td>Heading</td><td><input type="text" name="newshead" placeholder="Enter Heading"/></td>
</tr>
<tr>
<td>Body</td><td><textarea rows="10" cols="40" name="newsbody" placeholder="Enter Body of the news"></textarea></td>
</tr>
<tr>
<td>Type</td><td><input type="text" name="newstype" placeholder="Enter Type"/></td>
</tr>
<tr>
<td></td><td><input type="SUBMIT" class="ubutton" name="newssubmit" value="Update"/></td>
</tr>
</table>
</div>



<!-- View/Edit Profile  -->

<div id="profile" class="searchbar pagecontent">
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
<div id="changepass" class="searchbar pagecontent">
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