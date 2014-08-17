<jsp:directive.page language="java" import="net.tanesha.recaptcha.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"/>

<html>
<head>
<title>Vidya Vikas - A Central web-portal for availability of various academic programmes offered by educational institutes</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>

<!--  LINKS TO STYLESHEET ARE HERE -->
<link rel="icon" type="image/png" href="static/images/favicon.png"/>
<link rel="stylesheet" type="text/css" media="screen" href="static/css/redmond/jquery-ui-1.8.19.custom.css"/>
<link rel="stylesheet" type="text/css" media="screen" href="static/css/ui.jqgrid.css"/>
<link rel="stylesheet" type="text/css" media="screen" href="static/css/ui.multiselect.css"/>
<link rel="stylesheet" type="text/css" href="static/css/template.css"/>


<!--  LINKS TO JAVASCRIPTS ARE HERE -->
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

<!-- ALL THE CUSTOM JAVASCRIPT FUNCTIONS FOR VIDYA VIKAS -->
<script src="static/js/vidyavikas.js" type="text/javascript"></script>
</head>
<body>
<!--  WRAPPER STARTS -->
<div id="wrapper">
<div class="topbar">
<div style="float:left" class="imageicon"><img src="static/images/twitter-icon.png" style="width:28px;height:28px;margin-left:5px;margin-top:2px;"/>
<a href="http://www.facebook.com/vidyavikas2012"><img src="static/images/facebook-icon.png" style="width:28px;height:28px;margin-left:5px;margin-top:2px;"/></a>
</div>
<div align="right" style="height:30px;float:right;margin-right:20px;">
<%
				if (session.getAttribute("uname") == null) {
					
					%><form action="U.log.2013/vv" method="POST"  onSubmit='return showLogin()' name="loginform">
					 <span class="loginblock">
					 Username : <input type="text" name="uname" class="login"/>
					 Password : <input type="password" name="pass" class="login"/> 
					 </span>
					 <input type="submit" class="button" name="ulogin" value="Login" style="width:50px;height:24px;position:relative;top:2px;border:0px" />
					  <input type="submit" class="button" name="clogin" value="College Login" style="width:100px;height:24px;position:relative;top:2px;border:0px" />
					  <input type="button"  class="button" id="but_signup" value="Sign Up" style="width:70px;height:24px;position:relative;top:2px;border:0px" />
					  </form>
					
<% 
				} else if (request.getParameter("v")!=null) {
					%><div>Wrong username/password</div>

				<%}
				else
				{
					%><div>Welcome <%=session.getAttribute("uname")%>
							<u><a href="Logout">Logout</a></u></div>
				<% }
			%>




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
<button class="button" id="but_home">Home</button>
<button class="button" id="but_aboutus">About Us</button>
<button class="button" id="but_search">Search</button>
<button class="button" id="but_allcourses">All Courses</button>
<button class="button" id="but_cr">Recomendator</button>

<!--  
session.getAttribute("username") != null -->
<% 
if (session.getAttribute("uname") != null)
{
	
	out.println("<button class=\"button\" id=\"but_profile\">My Profile</button>");
}
%>
<button class="button" id="but_aboutucost">about UCOST</button>
<button class="button" id="but_aboutgeu">about GEU</button>
<button class="button" id="but_contactus">Contact Us</button>
</div>

<div id="searchmenuitems" style="display:none">
<center>
<p/>
<button class="button" id="but_collegesearch">Colleges</button>
<p>
<button class="button" id="but_schoolsearch">Schools</button>
</p></center>
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
about Vidya Vikas
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
<div id="aboutgeu" class="searchbar">
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
<div id="aboutucost" class="searchbar">
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
<!-- Past Details -->
<div id="pastdetails" class="searchbar">
<form name="past_details" id="past_details" method="POST" onsubmit="return recomsubmit(this)">
<h2 class="componentheading">
&nbsp;&nbsp;Past Details
</h2>
<table  style="width: 100%; align: center; " border="0" cellspacing="5" cellpadding="0" style="background:#000">
<tbody>
<tr>
<td width="50%">Highest Qualification<span style="color:red">*</span>:</td>
<td width="50%">
<Select name="qualification"  onclick="education(this.value)">
<option value="."  selected="selected">selected</option>
<option value="12'th">12'th</option>
<option value="Graduation">Graduation</option>
</Select>
</td>
</tr>
<tr  id="aa" style="display:none">
<td width="50%">Graduated With<span style="color:red">*</span>:</td>
<td width="50%">
<select name="course" onclick="education(this.value)">
<option value="B.Tech.">B.Tech.</option>
<option value="M.Tech.">M.Tech.</option>
<option value="B.Sc.">B.Sc.</option>
<option value="M.Sc.">M.Sc.</option>
<option value="B.B.A.">B.B.A.</option>
<option value="M.B.A.">M.B.A.</option>
<option value="B.C.A.">B.C.A.</option>
<option value="M.C.A.">M.C.A.</option>
<option value="B.A.">B.A.</option>
<option value="M.A.">M.A.</option>
<option value="B.H.M.C.T.">B.H.M.C.T.</option>
<option value=".."  selected>Others</option>
</select>
</td>
</tr>
<tr id="dd" style="display:none">
<td>
Specify<span style="color:red">*</span>:
</td>
<td>
<input type="text" name="oyher_course" placeholder="Specify Course Name" />
</td>
</tr>
<tr id="bb" style="display:none" >
<td width="50%">Branch<span style="color:red">*</span>:</td>
<td width="50%">
<select name="branch" >
<option value=""  Selected>Select</option>
<option value="CS">Computer Science and Engineering</option>
<option value="IT">Information Technology</option>
<option value="AEE">Applied Electronics Engineering</option>
<option value="EC">Electronics and Communication Engineering</option>
<option value="EEE">Electrical and Electronics Engineering</option>
<option value="ME">Mechanical Engineering</option>
<option value="CE">Civil Engineering</option>
<option value="PE">Petroleum Engineering</option>
<option value="MEE">Mechatronics Engineering</option>
<option value="AE">Automobile Engineering</option>
<option value="BIO">Biotechnology</option>
</select>
</td>
</tr>
<tr id="cc" style="display:none">
<td width="50%">
12'th With<span style="color:red">*</span>:
</td>
<td width="50%">
<select name="subjects" >
<option value=""  Selected="Selected">Select</option>
<option value="pcm">Physics Chemistry and Maths</option>
<option value="mb">Math and Biology</option>
<option value="pcmb">Physics Chemistry Maths and Biology</option>
<option value="cmr">Commerce</option>
</select>
</td>
</tr>
<tr>
<td>Futer Intrests:</td>
<td >
<input type="text" name="intr" placeholder="Enter your Entrest">
</td>
</tr>
<tr>
<td></td>
<td></td>
<td>
<input type="submit" style="width:200px;height:35px;" id="carrieroptions" name="carrieroptions" class="button" value="Gegnerate Career Options"/>
</td>
</tr>
</tbody>
</table>
</form> 
<p>&nbsp;</p>
</div>
<!-- contact us -->
<div id="contactus" class="searchbar" >
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
<!-- about us -->
<div id="aboutus" class="searchbar">
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
<!-- All Courses -->
<div id="allcourses" class="searchbar">
<h2 class="componentheading">
All Courses
</h2>
<table border="3">
<tbody>
  <tr style="background-color:lightgray">
    <th><h2 class="ctheading">Stream Pursuing</h2></th>
    <th><h2 class="ctheading">Courses Elegible</h2></th>
  </tr>
<tr>
  <td width="30%">12th Science</td>
  <td>B.Tech , Diploma in Engineering , B.Tech+MBA , B.Tech+M.Tech , BHTM , B.Tech+LLB(Hons.) , B.Arch , Basic Sciences , BPT , B.Pharm , B.Sc , D.Pharm , CRHA , Commercial Pilot Training</td>
</tr>
<tr>
  <td>12th Commerce</td>
  <td>BJMC , B.Com</td>
</tr>
<tr>
  <td>12th Any</td>
  <td>BHTM , B.A+LLB(Hons.) , BBA+LLB(Hons.) , B.A(Hons.) , BFA , B.P.E , BAMC , BBA+LLB , BBA(Hons.) , B.Journalism , B.Internationality & Administration , BCA , BBA , Hospitality Management , Hotel Management , DCA , Diploma in Hotel Management , Diploma in Tourism Studies , Diploma , Cabin Crew & Hospitality Management</td>
</tr>
<tr>
  <td>Graduation</td>
  <td>B.Ed , B.PEd , B.Lib , PGDJM , PGDBA , PGDCA , PGDM , PGDM+SAP , MJMC , MAM , MBA , Master Of Tourism Management , MFC , MHRD , MIB , MAMC , MSW , M.A , M.Sc</td>
</tr>
<tr>
  <td>Masters</td>
  <td>Ph.d , M.Phil</td>
</tr>
<tr>
  <td>B.Arch</td>
  <td>M.Arch</td>
</tr>
<tr>
  <td>B.Ed</td>
  <td>M.Ed</td>
</tr>
<tr>
  <td>B.Com</td>
  <td>M.Com</td>
</tr>
<tr>
  <td>BPT</td>
  <td>MPT</td>
</tr>
<tr>
  <td>B.Pharm</td>
  <td>M.Pharm</td>
</tr>
<tr>
  <td>BCA , BBA , B.Tech</td>
  <td>MCA</td>
</tr>
<tr>
  <td>B.Tech</td>
  <td>M.Tech , M.B.A</td>
</tr>
<tr>
  <td>B.Lib</td>
  <td>M.Lib</td>
</tr>
</tbody>
</table>
</div>

<!-- Registeration Form --><div id="register" class="searchbar">
<form name="register1" id="register1"  method="POST">
<h2 class="componentheading">
&nbsp;&nbsp;Registration
</h2>
<table  style="width: 100%; align: center; " border="0" cellspacing="10" cellpadding="0" style="background:#000">
<tbody>
<tr>
<td style="width:50%">Name:</td><td><input type="text" name="name" placeholder="User Name"/></td></tr>

<tr>
<td style="width:50%">Email:</td><td><input type="text" name="email" placeholder="Enter Email"/></td >
</tr><tr>
<td>Mobile:</td><td><input type="text" name="phn" placeholder="Mobile Number"/></td>
</tr>
<tr>
<td>Gender:</td>
<td><select name="gender" ><option value=""  Selected="Selected">Select</option>
<option value="male">Male</option>
<option value="female">Female</option>
<option value="other">Other</option>
<tr>
<td>Institute Name:</td><td><input type="text" name="inst" placeholder="School/College Name"/></td>
</tr>
<tr>
<td>City:</td><td><input type="text" name="city" placeholder="Enter City"/></td>
</tr>
<tr>
<td>State:</td><td><input type="text" name="state" placeholder="Enter State"/></td>
</tr>
</select></td></tr><tr>
<td>Qualification:</td>
<td ><Select name="qualification" onclick="show(this.value)">
<option value="NA"  selected="selected">selected</option>
<option value="10'th">10'th</option>
<option value="12'th">12'th</option>
<option value="Graduation">Graduation</option>
<option value="postGraduation">Post Graduation</option>
</Select></td></tr>
<tr  id="a" style="display:none">
<td width="50%">Graduated With<span style="color:red">*</span>:</td>
<td width="50%">
<select name="course" onclick="show(this.value)">
<option value="NA">Select</option>
<option value="B.Tech.">B.Tech.</option>
<option value="M.Tech.">M.Tech.</option>
<option value="B.Sc.">B.Sc.</option>
<option value="M.Sc.">M.Sc.</option>
<option value="B.B.A.">B.B.A.</option>
<option value="M.B.A.">M.B.A.</option>
<option value="B.C.A.">B.C.A.</option>
<option value="M.C.A.">M.C.A.</option>
<option value="B.A.">B.A.</option>
<option value="M.A.">M.A.</option>
<option value="B.H.M.C.T.">B.H.M.C.T.</option>
<option value=".."  selected="others">Others</option>
</select>
</td>
</tr>
<tr id="d" style="display:none">
<td>
Specify<span style="color:red">*</span>:
</td>
<td>
<input type="text" name="branch" placeholder="Specify Course Name" />
</td>
</tr>
<tr id="b" style="display:none" >
<td width="50%">Branch<span style="color:red">*</span>:</td>
<td width="50%">
<select name="branch" >
<option value="NA"  Selected="Selected">Select</option>
<option value="CS">Computer Science and Engineering</option>
<option value="IT">Information Technology</option>
<option value="AEE">Applied Electronics Engineering</option>
<option value="EC">Electronics and Communication Engineering</option>
<option value="EEE">Electrical and Electronics Engineering</option>
<option value="ME">Mechanical Engineering</option>
<option value="CE">Civil Engineering</option>
<option value="PE">Petroleum Engineering</option>
<option value="MEE">Mechatronics Engineering</option>
<option value="AE">Automobile Engineering</option>
<option value="BIO">Biotechnology</option>
</select>
</td>
</tr>
<tr id="c" style="display:none">
<td width="50%">
12'th With<span style="color:red">*</span>:
</td>
<td width="50%">
<select name="subject" >
<option value="NA"  Selected="Selected">Select</option>
<option value="pcm">Physics Chemistry and Maths</option>
<option value="mb">Math and Biology</option>
<option value="pcmb">Physics Chemistry Maths and Biology</option>
<option value="cmr">Commerce</option>
</select>
</td>
</tr>
<tr>
<td></td><td width="100%">Please Enter The Following Words Correctly:-</td></tr>
<tr>
<td></td>
<td> <%
      //    ReCaptcha c = ReCaptchaFactory.newReCaptcha("6LcriN0SAAAAAL-E1v2-QSZWeRnyCOYsTh9I6PDb", "6LcriN0SAAAAADWvr03U6Z1iQs1-KHasbB78Ennm", false);
        //  out.print(c.createRecaptchaHtml(null, null));
        %>
</td>
<td><input type="submit" id="regist" class="button" value="Register"/></td>
</tr>
</tbody>
</table>
</form> 
<p>&nbsp;</p>
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
<td><b>Institute Name:</b></td>
<td><span class="detail" id="insname_detail">Graphic Era University</span><span id="insname_editdetail" class="editdetail"><input type="text" name="iname" value="Graphic Era University"/></span></td>
</tr>
<tr>
<td style="width:20%"><b>Email:</b></td>
<td><span class="detail" id="email_detail">someone@xyz.com</span><span id="email_editdetail" class="editdetail"><input type="text" name="email" value="someone@xyz.com"/></span></td >

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
</div><!-- schoole search -->
<div id="schoolsearch" class="searchbar">
<form name="searchform_school" id="searchform_school"  method="POST" onsubmit='return schsubmit(this)'>
<h2 class="componentheading">
&nbsp;&nbsp;School Search
</h2>
<table  style="width: 100%; align: center; " border="0" cellspacing="0" cellpadding="5" style="background:#000">
<tbody>
<tr>
<td style="width:50%">School Name:</td><td><input type="text" name="school_name" placeholder="School Name"/></td>
<td>Affiliation:</td><td><select name="school_aff" >
<option value=""  Selected="Selected">Select</option>
<option value="CBSE">CBSE</option>
<option value="ICSE">ICSE</option>
<option value="sb">State Board</option>
</select>
</td>
</tr>
<tr>
<td style="width:50%">State:</td><td>
<input type="text" name="school_state" id="school_state" placeholder="State"/>

<!-- <select name="affiliation" >
<option value=""  Selected="Selected">Select</option>
<option value="hindi">Hindi.</option>
<option value="english">English</option>
<option value="both">Both</option>
</select>-->
</td>
<td>City:</td><td>
<input type="text" name="school_city" id="school_city" placeholder="City"/>


<!-- <select name="Type" >
<option value=""  Selected="Selected">Select</option>
<option value="boys">Boys</option>
<option value="girls">Girls</option>
<option value="coed">Coed</option>
</select>-->
</tr>
<tr>
<td>Type:  </td>
<td ><input type="radio" class="radiobutton" name="scl_gop" value="prv">Private</td>
<td style="width:40%"><input type="radio" class="radiobutton" name="scl_gop" value="gov" CHECKED>Government</td>
<td><input type="radio" class="radiobutton" name="scl_gop" value="any">Any</td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td><input type="submit" id="schlesearch" name="school_search" class="button" value="Search"/></td>
</tr>
</tbody>
</table>
</form> 
<p>&nbsp;</p>
</div>

	
	<div id="collegesearch" class="searchbar" style="display:none;">
<form name="searchform_college" id="searchform_college" onsubmit='return clgsubmit(this)'>
<h2 class="componentheading">
&nbsp;&nbsp;College Search
</h2>
<center>
<table  border="0" cellspacing="0" cellpadding="5">
<tr>
<td>State:  </td><td><input type="text" class="inputfield" name="col_state" id="col_state" placeholder="Type State Here" /></td>
<td>City:  </td> <td><input type="text" class="inputfield" name="col_city" id="col_city" placeholder="Type City Here" /> </td>
</tr>
<tr>
<td>Course:  </td><td> <input type="text" name="col_course" id="col_course" placeholder="Type Course Here" /> </td>
<!--Location : <input type="text" class="inputfield"  id="col_loc" placeholder="Type Location Here" /> <p/>-->
<td>Specialization:  </td><td> <input type="text" class="inputfield" name="col_spc" id="col_spc" placeholder="Type Specialization Here" /> </td>
</tr>
<tr>
<td>Affliation:  </td><td> <input type="text" class="inputfield" name="col_aff" id="col_aff" placeholder="Type Affiliation Here" /> </td>
<td>Name:  </td><td> <input type="text" class="inputfield"  name="col_name" id="col_name" placeholder="Type College Name Here" /></td>
</tr>
<tr>
<td>Type:  </td>
<td><input type="radio" class="radiobutton" name="col_gop" value="g">Government</td>
<td><input type="radio" class="radiobutton" name="col_gop" value="p">Private</td>
<td><input type="radio" class="radiobutton" name="col_gop" value="" CHECKED>Any</td>
</tr>
 <tr>
  <td><!--  Sort By:-->  </td>
<td><!--  <input type="radio" class="radiobutton" name="col_sort" value="fee">Fees--></td>
<td><!--<input type="radio" class="radiobutton" name="col_sort" value="yob">Year Of Estisblishment--></td>
<td><input type="submit" id="college_search" name="college_search" class="button" value="Search"/></td>
</tr>
</table>
</center>
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