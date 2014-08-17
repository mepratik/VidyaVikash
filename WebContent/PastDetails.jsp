<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" type="image/png" href="static/images/favicon.png" />
<link rel="stylesheet" type="text/css" media="screen"
	href="static/css/redmond/jquery-ui-1.8.19.custom.css" />
<link rel="stylesheet" type="text/css" media="screen"
	href="static/css/ui.jqgrid.css" />
<link rel="stylesheet" type="text/css" media="screen"
	href="static/css/ui.multiselect.css" />
<link rel="stylesheet" type="text/css" href="static/css/template.css" />
<script type="text/javascript" src="static/js/jquery-1.8.0.js"></script>
<script type="text/javascript" src="static/js/jquery.js"></script>
<script language="JavaScript">
$(document).ready(function() {
$("#c").hide();
$("#a").hide();
$("#b").hide();
$("#d").hide();
});
function show(edu)
{
if(edu == "12'th")
{
	$('#c').show();
	$('#b').hide();
	$('#a').hide();
	$('#d').hide();
//document.getElementById(id=3).style.display="block";
//document.getElementById(id=1).style.display="none";
//document.getElementById(id=2).style.display="none";
}
if(edu == ".")
{
	$('#c').hide();
	$('#b').hide();
	$('#a').hide();
//document.getElementById(id=3).style.display="none";
//document.getElementById(id=1).style.display="none";
//document.getElementById(id=2).style.display="none";
}
if(edu == "..")
{

	$('#c').hide();
	$('#b').hide();
	$('#a').show();
	$('#d').show();
//document.getElementById(id=1).style.display="block";
//document.getElementById(id=3).style.display="none";
//document.getElementById(id=2).style.display="none";
}

if(edu == "Graduation")
{
	$('#a').show();
	$('#b').hide();
	$('#c').hide();
	$('#d').hide();
//document.getElementById(id=1).style.display="block";
//document.getElementById(id=2).style.display="none";
//document.getElementById(id=3).style.display="none";
}
if(edu == "B.Tech.")
{
	$('#b').show();
	$('#a').show();
	$('#c').hide();
//document.getElementById(id=2).style.display="block";
//document.getElementById(id=1).style.display="block";
//document.getElementById(id=3).style.display="none";
}
if(edu != "..")
{
	$('#d').hide();
	
//document.getElementById(id=2).style.display="block";
//document.getElementById(id=1).style.display="block";
//document.getElementById(id=3).style.display="none";
}
}
</script>
</head>
<body>
<body>
<div id="pastdetails" class="form">
<form name="past_details" method="POST" action="">
<h2 class="componentheading">
&nbsp;&nbsp;Past Details
</h2>
<table  style="width: 100%; align: center; " border="0" cellspacing="5" cellpadding="0" style="background:#000">
<tbody>
<tr>
<td width="50%">Highest Qualification<span style="color:red">*</span>:</td>
<td width="50%">
<Select name="qualification"  onclick="show(this.value)">
<option value="."  selected="selected">selected</option>
<option value="12'th">12'th</option>
<option value="Graduation">Graduation</option>
</Select>
</td>
</tr>
<tr  id="a" style="display:none">
<td width="50%">Graduated With<span style="color:red">*</span>:</td>
<td width="50%">
<select name="course" onclick="show(this.value)">
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
<input type="text" name="oyher_course" placeholder="Specify Course Name" />
</td>
</tr>
<tr id="b" style="display:none" >
<td width="50%">Branch<span style="color:red">*</span>:</td>
<td width="50%">
<select name="branch" >
<option value=""  Selected="Selected">Select</option>
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
<td>
<input type="submit" style="width:200px;height:35px;" id="carrieroptions" name="carrieroptions" class="button" value="Gegnerate Cerriar Options"/>
</td>
</tr>
</tbody>
</table>
</form> 
<p>&nbsp;</p>
</div>
</body>
</html>
