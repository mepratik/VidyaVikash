<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<!--  <link rel="stylesheet" type="text/css" href="static/css/template2.css" />
<link rel="stylesheet" type="text/css" href="static/css/template3.css" />
<link rel="stylesheet" type="text/css" href="static/css/template.css" /> -->

<!--Script for Slider-->
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
<script type="text/javascript" src="static/js/tags.js"></script>
<!--<script src="static/js/jquery-1.7.2.min.js" type="text/javascript"></script>
<script src="static/js/grid.locale-en.js" type="text/javascript"></script>
--><script src="static/js/jquery.jqGrid.min.js" type="text/javascript"></script>
<script src="static/js/jquery-ui-1.8.19.custom.min.js" type="text/javascript"></script>
<script type="text/javascript">
function PreloadImages()
{
   var imageObj = new Image();
   var images = new Array();
   images[1]="./static/imgs/2.jpg";
   images[2]="./static/imgs/3.jpg";
   images[3]="./static/imgs/4.jpg";
   images[4]="./static/imgs/5.jpg";
   images[5]="./static/imgs/6.jpg";
   images[6]="./static/imgs/7.jpg";
   images[7]="./static/imgs/8.jpg";
   images[8]="./static/imgs/9.jpg";
   for (var i=1; i<=8; i++)
   {
      imageObj.src = images[i];
   }
}


$(document).ready(function()
{
   $("#SlideShow").slideshow(
   {
      interval: 3000,
      type: 'sequence',
      effect: 'fade',
      direction: '',
      effectlength: 1500
   });
});
</script>




<!--  <script src="static/js/jquery-ui-1.8.19.custom.min.js"
	type="text/javascript"><EARCH/script>

<!--  <script type="text/javascript" src="static/js/jquery-1.8.0.js"></script>

  <script src="static/js/jquery-1.7.2.min.js" type="text/javascript"></script>
-->

<script language="javascript">
$(document).ready(function() {

/*Effects for search form*/

 $("#but_collegesearch").click(function() {
  $("#maincontent").slideUp("slow",function() {
   $(".searchbar").slideDown("slow");
 });
});

$("#but_home").click(function() {
  $(".searchbar").slideUp("slow",function() {
   $("#maincontent").slideDown("slow");
 });
});


/*Drop Down*/
$("#but_search").mouseover(function() {
 $("#searchmenuitems").slideDown("fast");
 });
 
 $("#searchmenuitems").mouseover(function() {
 $("#searchmenuitems").slideDown("fast");
 });
 
 $("#main").mouseover(function() {
   $("#searchmenuitems").slideUp("fast");
  });
  
  $("#SlideShow").mouseover(function() {
   $("#searchmenuitems").slideUp("fast");
  });
  
   $("#but_contact").mouseover(function() {
   $("#searchmenuitems").slideUp("fast");
  });
  $("#but_home").mouseover(function() {
   $("#searchmenuitems").slideUp("fast");
  });
  $("#logotop").mouseover(function() {
   $("#searchmenuitems").slideUp("fast");
  });
 
  /*Make Sidebar Right slide on click on main*/
  $("#main").click(function() {
   $("#sidebarright").slideDown("slow");
  });
 
  
 /*Autocomplete*/
  $("#col_name").autocomplete();
  $("#col_state").autocomplete({
        
		source : "autosrchclg?id=1"
	});

  
  $("#col_city")
	.keyup(
			function() {
			//	if(searchform_college.elements["col_state"].value == "")
				$("#col_city")
						.autocomplete(
								{

									source : "autosrchclg?id=2&st="
											+ searchform_college.elements["col_state"].value

								});
			});

  $("#col_aff").autocomplete({
      
		source : "autosrchclg?id=3"
	});
  //$("#col_loc").autocomplete();
  $("#col_course").autocomplete({
      
		source : "autosrchclg?id=4"
	});
 /* $("#col_spc").autocomplete({
      
		source : "autosrchclg?id=5"
	});
*/
  
  
  $("#col_spc")
	.keyup(
			function() {
				
				$("#col_spc")
						.autocomplete(
								{

									source : "autosrchclg?id=5&crs="
											+ searchform_college.elements["col_course"].value

								});
			});

  
  //$("#col_fee").autocomplete();
$("#col_course").tagsInput({width:'auto'});  
  $("#sch_name").autocomplete();
  $("#sch_state").autocomplete();
  $("#sch_city").autocomplete();
  $("#sch_board").autocomplete();
  //$("#sch_loc").autocomplete();
});


/*$("#searchform_college").submit( function () {   
	alert("asas");
    $.post(
     'srchclg',
      $(this).serialize(),
      function(data){

          $("#searchresults").append($(data).fadeIn('slow'));                  
        //  $("#status").val('');
      }
    );
    return false;
     event.preventDefault();   
  });   
*/
function nextpage(pg)
{
//	$('#mainresults').hide();

	$.post(
	     'srchclgpg?pg='+pg,
	     $('#searchform_college').serialize(),
	      function(returnData){
	    	// $('#results').html( returnData);
	          $("#mainresults").html($(returnData).fadeIn('slow'));                  
	        //  $("#status").val('');
	      }
	    );
	
	
	}

function clgsubmit(frm) {   
/*	var data=$(frm).serialize();
	alert(searchform_college.elements["col_name"].value);
	  //$(this.elements["submit"]).hide();
	    //$('.loading1').show();
	    alert(data);
	    $.post('srchclg',data , function(returnData){
	          
	               //$('.aa').fadeOut('slow');
	                $('#searchresults').html( returnData);
	               
	    });
		
		return false;	}
	
	*/
	$('#maincontent').hide();
$('#searchresults').show();

$.post(
     'srchclg',
     $(frm).serialize(),
      function(returnData){
    	// $('#results').html( returnData);
          $("#results").html($(returnData).fadeIn('slow'));                  
        //  $("#status").val('');
      }
    );
    return false;
     //event.preventDefault();   
  }   
  function showdet(item,id) {
	 
	  var top=$(item).position();
	  
	  $('#sidebarright').fadeOut("fast");
		  
	//  $('#sidebarright').hide();
	  
	  // $("#sidebarright").slideUp("slow");
top.left+=572;
	  $("#sidebarright").offset({ top: top.top,left:top.left});
	//  alert("anubhav");
	//$('#sidebarright').show();
	  
	$('#sidebarright').fadeIn("slow");
	    
	$("#sidebarright").load("mindetail.jsp?id="+id); 
	  //alert("asas");
	//  $("#sidebarright").slideDown("slow");
	  }
   function highlight(item)
   {
	 $(item).css({color: 'red'});
	 
   }
   function unhighlight(item)
   {
	 $(item).css({color: 'black'});
	 
   }
</script>
</head>
<body>

<!--Top Bar-->
<div class="topbar">
<div style="float:left"><img src="static/images/twitter-icon.png" style="width:28px;height:28px;margin-left:5px;margin-top:2px;">
<a href="http://www.facebook.com/vidyavikas2012"><img src="static/images/facebook-icon.png" style="width:28px;height:28px;margin-left:5px;margin-top:2px;"></a>
</div>
<div align="right" style="float:right;margin-right:20px;">
<form method="POST" name="loginform">
 Username : <input type="text" name="loginuser" class="login"> &nbsp; Password : <input type="password" name="loginpass" class="login">&nbsp;<input type="submit" name="login" value="Login">
</form>
 </div>
</div>

<!--wrapper-->
<div id="wrapper">

<div id="logotop">
<img src="static/images/logo-top.png"/>
</div>
<!--Header Logo-->
<div id="SlideShow">
<img  src="./static/imgs/2.jpg" alt="">
<img  src="./static/imgs/3.jpg" alt="">
<img  src="./static/imgs/4.jpg" alt="">
<img  src="./static/imgs/5.jpg" alt="">
<img  src="./static/imgs/6.jpg" alt="">
<img  src="./static/imgs/7.jpg" alt="">
<img  src="./static/imgs/8.jpg" alt="">
<img  src="./static/imgs/9.jpg" alt="">
</div>

<!--<div id="geulogo"></div>
<div id="ucostlogo"></div><div id="footer"></div>-->


<div id="mainmenu" align="right" style="margin-top:2px">
<button class="button" id="but_home">Home</button>
<button class="button" id="but_search">Search</button>
<button class="button" id="but_contact">Contact</button>
<button class="button" id="but_about">About Us</button>
<button class="button" id="but_about">About GEU</button>
<button class="button" id="but_about">About UCOST</button>
</div>
<div id="searchmenuitems" style="display:none">
<center>
<p/>
<button class="button" id="but_collegesearch">Colleges</button>
<p>
<button class="button" id="but_schoolsearch">Schools</button>
</center>
</div>
<!--Sidebar Left-->
<div id="left">
<div id="sidebarleft" class="sidebar">
<p>&nbsp;</p>
<h2 class="componentheading">
<center>Inspiration Behind<br>Vidya Vikas</center>
</h2>
  <div id="aboutdrrajendra" style="padding:5px;padding-left:65px;">
<img src="./static/images/RD.JPG" border="2" style="box-shadow:8px 8px 8px #888888;"/>
<br>
<b>Dr. Rajendra Dobhal</b>
</div>
</div>
<p/>
<i><center>"Kill all my devils and my angels might die too"</center></i>
</div>

<!--Sidebar Right-->
<div id="right">
  <div id="sidebarright" class="sidebar">
    <div id="info" class="sidebar-content">
	<p>&nbsp;</p>
	<h2 class="componentheading">
	<center>News & Notics</center>
	</h2>
	<marquee direction="up" scrolldelay="150">
	IMPORTANT : Vidya Vikas - RC version released, your suggestions are welcomed. You can always mail us your valuable thoughts at contact@vidyavikas.com
	</marquee>
    <p />	
    </div>
  </div>
</div>

<!-- Main Content - Middle -->


<div id="main" class="main" >
<div id="maincontent" style="border-radius: 20px">
<h2 class="componentheading">
About Vidya Vikas
</h2>
Vidya Vikas is a project developed under UCOST - Uttarakhand State Council for Science and Technology. The objective of this project is to make it easier for the people to search for the schools and colleges according to their needs and specifications. 
<p />
There is sidebar provided at the left where you can enter either the collge details or school details and click on search.
<p />The results would be displayed replacing this text and on clicking on any college name or school name, a right sidebar will slide up showing the information about that particular institution.
<p />
The right sidebar has been set on display property none, you can click here to make it slide up. 
<p />
The left sidebar contains the forms which will have autocomplete feature.
<p />
The two buttons "Colleges" and "Schools" are placed below the left sidebar clicking on which will switch between the two forms, one for school and the other one for the college.
<p />
Some optional features like location and fees are kept in the comments
<p />
The banner and the favicon has been made using PS CS6
<p />
This website has been made by the students of Graphic Era University.
<p />
<p>&nbsp</p>
</div>

<!--College Search Starts Here-->
<div class="searchbar" style="display:none;">
<form name="searchform_school" method="POST" action="">
<h2 class="componentheading">
&nbsp;&nbsp;College Search
</h2>
<center>
<table  border="0" cellspacing="0" cellpadding="5">
<tr>
<td>State:  </td><td><input type="text" class="inputfield" id="col_state" placeholder="Type State Here" /></td>
<td>City:  </td> <td><input type="text" class="inputfield"  id="col_city" placeholder="Type City Here" /> </td>
</tr>
<tr>
<td>Course:  </td><td> <input type="textarea" id="col_course" placeholder="Type Course Here" /> </td>
<!--Location : <input type="text" class="inputfield"  id="col_loc" placeholder="Type Location Here" /> <p/>-->
<td>Specialization:  </td><td> <input type="text" class="inputfield"  id="col_spc" placeholder="Type Specialization Here" /> </td>
</tr>
<tr>
<td>Affliation:  </td><td> <input type="text" class="inputfield"  id="col_aff" placeholder="Type Affiliation Here" /> </td>
<td>Name:  </td><td> <input type="text" class="inputfield"  id="col_name" placeholder="Type College Name Here" /></td>
</tr>
<tr>
<td>Type:  </td>
<td><input type="radio" class="radiobutton" name="col_gop" value="prv">Private</td>
<td><input type="radio" class="radiobutton" name="col_gop" value="gov">Any</td>
<td><input type="radio" class="radiobutton" name="col_gop" value="any" CHECKED>Government</td>
</tr>
<tr>
<td>Sort By:  </td>
<td><input type="radio" class="radiobutton" name="col_sort1" value="fee">Fees</td>
<td><input type="radio" class="radiobutton" name="col_sort2" value="yob">Year Of Estisblishment</td>
<td><input type="submit" id="collegesearch" name="college_search" class="button" value="Search"/></td>
</tr>
</table>
</center>
</form> 
</div>
</div>
<!--
<div id="collegeform" style="display:none">
<p>&nbsp;</p>
<form name="searchform_college" id="searchform_college" onsubmit='return clgsubmit(this)'>
<h2 class="componentheading">
College Search
</h2>
State : <input type="text" class="inputfield" name="col_state" id="col_state" size="30" placeholder="Type State Here" /> <p/>
City : <input type="text" class="inputfield"  name="col_city" id="col_city" size="30" placeholder="Type City Here" /> <p/>
Affliation : <input type="text" class="inputfield"  name="col_aff" id="col_aff" size="30" placeholder="Type Affiliation Here" /> <p/>
Location : <input type="text" class="inputfield"  id="col_loc" size="30" placeholder="Type Location Here" /> <p/>
Course : <input type="text" class="inputfield" name="col_course" id="col_course" size="30" placeholder="Type Course Here" /> <p/>
Specialization : <input type="text" class="inputfield" name="col_spc" id="col_spc" size="30" placeholder="Type Specialization Here" /> <p/>
Name : <input type="text" class="inputfield"  name="col_name" id="col_name" size="30" placeholder="Type College Name Here" /> <p/>
Fees (optional) : <input type="text" class="inputfield"  id="col_fee" size="30" placeholder="Type Fees Here" /> <p/>
<p>
<p/>
Location:<input type="text" class="inputfield" name="col_loc" id="col_loc" size="30" placeholder="Type State Here" /> <p/>
Range(in Kms) : <select name="col_range"><option value="">Any</option>
<option value="0-10">0-10kms</option>
<option value="10-20">10-20kms</option>
<option value="20-30">20-30kms</option>
<option value="30-40">30-40kms</option>
<option value="40-50">40-50kms</option>
</select><br/>
<input type="hidden" value="1" name="col_pg"/>
<input type="radio" name="col_gop" value="p">Private Colleges<br/>
<input type="radio" name="col_gop" value="g">Government Colleges<br/>
<input type="radio" name="col_gop" value="" CHECKED>Any<br/><br/>
Sort by: <input type="checkbox" name="col_sort" value="fees">Fees
<p/>
<p>
<input type="submit" id="collegesearch" name="college_search" class="button" value="Search"/>
</form> 
<p>&nbsp;</p>
</div>

<div id="schoolform" style="display:none">
<p>&nbsp;</p>
<form name="searchform_school" method="POST" action="">
<h2 class="componentheading">
School Search
</h2>
Name : <input type="text" class="inputfield"  id="sch_name" size="30" placeholder="Type School Name Here" /> <p/>
State : <input type="text" class="inputfield" id="sch_state" size="30" placeholder="Type State Here" /> <p/>
City : <input type="text" class="inputfield"  id="sch_city" size="30" placeholder="Type City Here" /> <p/>
Board : <input type="text" class="inputfield"  id="sch_board" size="30" placeholder="Type Board Name Here" /> <p/>
Location : <input type="text" class="inputfield" id="sch_loc" size="30" placeholder="Type Location Here" /> <p/>
Type : &nbsp;<input type="radio" name="type" value="coed" CHECKED />Co-Ed&nbsp;<input type="radio" name="type" value="girls" />Girls&nbsp;<input type="radio"   name="type" value="boys"/>Boys<p/>
<input type="radio" name="gop" value="p">Private Schools<br/><input type="radio" name="gop" value="gov">Government Schools<p/>
<p>
<input type="submit" id="schoolsearch" name="school_search" class="button" value="Search"/>
</form>
<p>&nbsp;</p>
</div>
</div>
-->

<div id="searchresults">
 <h2 class="componentheading">
Search Results
</h2><div id="results">
 

</div>
 </div>
</div>
 <marquee scrolldelay="100"><img src="/static/images/geu_logo.png">
 <img src="/static/images/ucost_logo.png" style="margin-left:70px"></marquee>
<!--Footer-->
<div id="footer">
Copyright Protected &copy; 2012 Vidya Vikas | All Rights Reserved
</footer>
</div>
</div>
</body>