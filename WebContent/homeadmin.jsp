<jsp:directive.page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"/>

<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<link rel="icon" type="image/png" href="static/images/favicon.png"/>
<link rel="stylesheet" type="text/css" media="screen" href="static/css/redmond/jquery-ui-1.8.19.custom.css"/>
	
<link rel="stylesheet" type="text/css" media="screen" href="static/css/ui.jqgrid.css"/>
<link rel="stylesheet" type="text/css" media="screen" href="static/css/ui.multiselect.css"/>
<link rel="stylesheet" type="text/css" href="static/css/template.css"/>



<script type="text/javascript" src="./static/js/jquery-1.8.0.js"/>
<script type="text/javascript" src="./static/sld/jquery-1.4.2.min.js"/>
<script type="text/javascript" src="./static/sld/jquery.effects.core.min.js"/>
<script type="text/javascript" src="./static/sld/jquery.effects.blind.min.js"/>
<script type="text/javascript" src="./static/sld/jquery.effects.bounce.min.js"/>
<script type="text/javascript" src="./static/sld/jquery.effects.clip.min.js"/>
<script type="text/javascript" src="./static/sld/jquery.effects.drop.min.js"/>
<script type="text/javascript" src="./static/sld/jquery.effects.fold.min.js"/>
<script type="text/javascript" src="./static/sld/jquery.effects.scale.min.js"/>
<script type="text/javascript" src="./static/sld/jquery.effects.slide.min.js"/>
<script type="text/javascript" src="./static/sld/wb.slideshow.js"/>
<script type="text/javascript" src="static/js/tags.js"/>
<script src="static/js/jquery.jqGrid.min.js" type="text/javascript"/>
<script src="static/js/jquery-ui-1.8.19.custom.min.js" type="text/javascript"/>
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

<script language="javascript">
$(document).ready(function(){
    $('#manageinsti_items,#request_items').hide();////////////////////////////////////////////////////////////////
});
</script>




<script language="javascript">
$(document).ready(function() {

/*Effects for search form*/

});/*Drop Down search*/
$("#but_manageinsti").mouseover(function() {
 $("#manageinsti_items").slideDown("fast");
 });
 
 $("#manageinsti_items").mouseover(function() {
 $("#manageinsti_items").slideDown("fast");
 });
 
 $("#main").mouseover(function() {
   $("#manageinsti_items").slideUp("fast");
  });
  
  $("#SlideShow").mouseover(function() {
   $("##manageinsti_items").slideUp("fast");
  });
  
   $("#but_contact").mouseover(function() {
   $("##manageinsti_items").slideUp("fast");
  });
  $("#but_home").mouseover(function() {
   $("##manageinsti_items").slideUp("fast");
  });
  $("#but_cr").mouseover(function() {
   $("##manageinsti_items").slideUp("fast");
  });
  $("#but_aboutus").mouseover(function() {
   $("##manageinsti_items").slideUp("fast");
  });
  $("#but_aboutg").mouseover(function() {
   $("##manageinsti_items").slideUp("fast");
  });
  $("#logotop").mouseover(function() {
   $("##manageinsti_items").slideUp("fast");
  });
   $("#but_allcourses").mouseover(function() {
   $("#search
   
   menuitems").slideUp("fast");
  });
  /*Drop Down Profile*/
  $("#but_request").mouseover(function() {
 $("#request_items").slideDown("fast");
 });
 
 $("#request_items").mouseover(function() {
 $("#request_items").slideDown("fast");
 });
 
 $("#main").mouseover(function() {
   $("#request_items").slideUp("fast");
  });
  
  $("#SlideShow").mouseover(function() {
   $("#request_items").slideUp("fast");
  });
  
   $("#but_contact").mouseover(function() {
   $("#profiemenuitems").slideUp("fast");
  });
  $("#but_home").mouseover(function() {
   $("#request_items").slideUp("fast");
  });
  $("#but_allcourses").mouseover(function() {
   $("#request_items").slideUp("fast");
  });
  $("#logotop").mouseover(function() {
   $("#request_items").slideUp("fast");
  });
  $("#but_cr").mouseover(function() {
   $("#request_items").slideUp("fast");
  });
   $("#but_abooutgeu").mouseover(function() {
   $("#request_items").slideUp("fast");
  });
  $("#but_aboutucost").mouseover(function() {
   $("#request_items").slideUp("fast");
  });
   $("#but_contactus").mouseover(function() {
   $("#request_items").slideUp("fast");
  });
   $("#but_aboutus").mouseover(function() {
   $("#request_items").slideUp("fast");
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


<div class="topbar">
<div style="float:left"><img src="static/images/twitter-icon.png" style="width:28px;height:28px;margin-left:5px;margin-top:2px;"/>
<a href="http://www.facebook.com/vidyavikas2012"><img src="static/images/facebook-icon.png" style="width:28px;height:28px;margin-left:5px;margin-top:2px;"/></a>
</div>
<div align="right" style="height:00px;float:right;margin-right:20px;">

 </div>
</div>


<div id="wrapper">

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
<button class="button" id="but_manageinsti">Manage Institute</button>
<button class="button" id="but_request">Request</button>
<button class="button" id="but_profile">Profile</button>
<button class="button" id="but_addadmin">Add Admin</button>
<button class="button" id="but_manageuser">Manage User</button>
</div>
<div id="manageinsti_items" style="display:none">
<center>
<p/>
<button class="button" id="but_addcollege">Add College/School</button>
<p>
<button class="button" id="but_remcollege">Remove College/School</button>
</p>
<p>
<button class="button" id="but_updatecollege">Update College/School</button>
</p></center>

</div>


<div id="request_items" style="display:none">
<center>
<button class="button" id="but_infoupdate">Information Update</button>
<p/>
<button class="button" id="but_notice">Notice</button>
</center>

</div>


<div id="content">
<div id="detail_form">
<form action="" method="post">
<center><table id="tab_detail">
<caption><h6 id="tab_caption">Enter the details</h6>

</caption>
<tbody>
<tr>
<th>College Name:</th><td><input type="text" name="username"></td>
</tr>
<tr>
<th>Email:</th><td><input type="text" name="email"></td>
</tr>
<tr>
<th>First name:</th><td><input type="text" name="fname"></td>
</tr>
<tr>
<th>Last name:</th><td><input type="text" name="lname"></td>
</tr>
<tr>
<th>Phone Numbers</th><td><input type="text" name="phone"></td>
</tr>
<tr>
<td><input type="submit" value="submit"></td>
</tr>
</tbody>
</table>
</center>
</form>

</div>

</div></body></html>