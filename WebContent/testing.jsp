

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
<script src="static/js/jquery.jqGrid.min.js" type="text/javascript"></script>
<!--<script src="static/js/vidyavikas.js" type="text/javascript"></script>-->
<script type="text/javascript">
/* Adding Elements */
window.i=0;
window.j=0;
$(document).ready(function(){
	$("#add_course").click(function(){
		
		$("#course").append("<tr><td>Course:</td><td><input type=\"text\" id=\"course"+window.j+"\"></td><td>Branch:</td><td id=\"branch"+window.j+"\"><input type=\"text\" class=\"branch\"/></td><td><input type=\"button\" name=\"button\" id=\"add_branchbranch"+window.j+"\" class=\"add\" ><input type=\"button\" name=\"button\" id=\"rmv_mobile\" class=\"rmv\" ></td></tr>");
		window.j=window.j+1;
	});
	$("#add_mobile").click(function(){
		alert("#add_branchbranch"+window.j);
		$("#mobile").append("<input type=\"text\" id=\"mobileadd\"+window.i/>");
		window.i=window.i+1;
	});	
	$("#add_branchbranch"+window.i).click(function(){
		alert("p");
		$("#branch"+window.j).append("<input type=\"text\" id=\"mobileadd\"+window.i/>");
		window.i=window.i+1;
	});	
	$("#rmv_mobile").click(function(){
		//alert(window.i);
		$("#mobileadd"+$i).css("display", "block");
		window.i=window.i-1;
	});	

});
	</script>
	<style type="text/css">
.add
{
	
  cursor:pointer;
 background-image: url('./static/imgs/addm.jpg');
 background-repeat:no-repeat;
 width:25px ;
 height:25px;
}
.rmv
{
	
  cursor:pointer;
 background-image: url('./static/imgs/rmvm.jpg');
 background-repeat:no-repeat;
 width:25px ;
 height:25px;
}

	</style>
</head>
<body>
<div id="main" class="main">
<div id="profile" class="searchbar">
<form name="profile" method="POST" action="">
<h2 class="componentheading">
&nbsp;&nbsp;View/Edit Detais
</h2>
<table><tr id="mobile">
 <td><input type="button" name="button" id="add_mobile" class="add" ><input type="button" name="button" id="rmv_mobile" class="rmv" >
 </td></tr>
 <tr id="course"><td><input type="button" name="button" id="add_course" class="add"  ><input type="button" name="button" id="rmv_course" class="rmv" >
</td>
</tr>
</table>
</form>
<p>&nbsp;</p>
</div>
</div>
</body>