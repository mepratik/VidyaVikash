function showLogin()
{
	var disp=$(".loginblock").css('display');
	if(disp=='none')
	{
		$(".loginblock").fadeIn("slow");
	
		return false;
	}
	return true;
}
$(function() {
	$('#tags_1').tagsInput({width:'auto'});
	});
function schsubmit(frm) {   
	
		$('#maincontent').hide();
	$('#searchresults').show();

	$.post(
	     'schcrch',
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


function clgsubmit(frm) {   
	
	 	$('#maincontent').hide();
	 $('#searchresults').show();
	 $('#results').show();

	 $.post(
	      'srchclg',
	      $(frm).serialize(),
	       function(returnData){
alert("asasas");
	    	  // $('#results').html( returnData);
	           $('#results').html($(returnData).fadeIn('slow'));        
alert("asas");         
	         //  $("#status").val('');
	       }
	     );
	     return false;
	      //event.preventDefault();   
	   }   
function showdet(item,id) {
	  
	  

	  
	  if(jQuery(item).next(".content").is(':visible')){
	  jQuery(item).next(".content").slideToggle(500);
		
	  } 
	 else
	 {
	  jQuery(item).next(".content").load("mindetail.jsp?id="+id);
	 jQuery(item).next(".content").slideToggle(500);
	 }  
		 
	}
function showdets(item,id) {
	  
	  

	  
	  if(jQuery(item).next(".content").is(':visible')){
	  jQuery(item).next(".content").slideToggle(500);
		
	  } 
	 else
	 {
	  jQuery(item).next(".content").load("mindetails.jsp?id="+id);
	 jQuery(item).next(".content").slideToggle(500);
	 }  
		 
	}
 function highlight(item)
 {
	 $(item).css({color: 'red'});
	 
 }
 function unhighlight(item)
 {
	 $(item).css({color: 'black'});
	 
 }   
 function education(edu)
 {
	 
 if(edu == "12'th")
 { alert("asas");
 	$('#cc').show();
 	$('#bb').hide();
 	$('#aa').hide();
 	$('#dd').hide();
 //document.getElementById(id=3).style.display="block";
 //document.getElementById(id=1).style.display="none";
 //document.getElementById(id=2).style.display="none";
 }
 if(edu == ".")
 {
 	$('#cc').hide();
 	$('#bb').hide();
 	$('#aa').hide();
 //document.getElementById(id=3).style.display="none";
 //document.getElementById(id=1).style.display="none";
 //document.getElementById(id=2).style.display="none";
 }
 if(edu == "..")
 {

 	$('#cc').hide();
 	$('#bb').hide();
 	$('#aa').show();
 	$('#dd').show();
 //document.getElementById(id=1).style.display="block";
 //document.getElementById(id=3).style.display="none";
 //document.getElementById(id=2).style.display="none";
 }

 if(edu == "Graduation")
 {
 	$('#aa').show();
 	$('#bb').hide();
 	$('#cc').hide();
 	$('#dd').hide();
 //document.getElementById(id=1).style.display="block";
 //document.getElementById(id=2).style.display="none";
 //document.getElementById(id=3).style.display="none";
 }
 if(edu == "B.Tech.")
 {
 	$('#bb').show();
 	$('#aa').show();
 	$('#cc').hide();
 //document.getElementById(id=2).style.display="block";
 //document.getElementById(id=1).style.display="block";
 //document.getElementById(id=3).style.display="none";
 }
 if(edu != "..")
 {
 	$('#dd').hide();
 	
 //document.getElementById(id=2).style.display="block";
 //document.getElementById(id=1).style.display="block";
 //document.getElementById(id=3).style.display="none";
 }
}
 
 function show(edu)
 {
	 
 if(edu == "12'th")
 { alert("asas");
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

$(document).ready(function() {
	
	$('#passchange').submit(function() {
		
		$(this.elements["opass"]).removeClass("inv");
		$(this.elements["npass"]).removeClass("inv");
		$(this.elements["nopass"]).removeClass("inv");
		var op=this.elements["opass"].value;
		
		if(op=="")
			{
			
			$(this.elements["opass"]).addClass("inv");
			return false;
			}
		
		if(this.elements["npass"].value=="")
			{
			$(this.elements["npass"]).addClass("inv");
			return false;
			}
		
		if(this.elements["nopass"].value=="")
		{
		$(this.elements["nopass"]).addClass("inv");
		return false;
		}
		
		if(this.elements["nopass"].value!=this.elements["npass"].value)
		{
			$(this.elements["nopass"]).addClass("inv");
			$(this.elements["npass"]).addClass("inv");
			return false;
		}
		else{

			var data=$(this).serialize();
	    //this.elements["sb"].disabled=true;
	    //$('.loading1').show();
	  
	   
	    $.post('changpass.jsp', data , function(returnData){
	               
	        
	                $('.searchbar').fadeOut('slow');
	                $('#main').html( returnData);
	             
	    });
		
		
		    return false; 
		}
		});
	
	$('#register1').submit(function() {
		//function register(data){
		
			
			//	$(this.elements["opass"]).removeClass("inv");
				//$(this.elements["npass"]).removeClass("inv");
				/*$(this.elements["nopass"]).removeClass("inv");
				var op=this.elements["opass"].value;
				if(op=="")
					{
					
					$(this.elements["opass"]).addClass("inv");
					return false;
					}
				
				if(this.elements["npass"].value=="")
					{
					$(this.elements["npass"]).addClass("inv");
					return false;
					}
				alert("anu");
				if(this.elements["nopass"].value=="")
				{
				$(this.elements["nopass"]).addClass("inv");
				return false;
				}
				alert("anu");
				if(this.elements["nopass"].value!=this.elements["npass"].value)
				{alert("anubhav");
					$(this.elements["nopass"]).addClass("inv");
					$(this.elements["npass"]).addClass("inv");
					return false;
				}
				else{
			alert("sas");*/
		alert("zasa");
         var data=$(this).serialize();
			    //this.elements["sb"].disabled=true;
			    //$('.loading1').show();
			   
			   alert("asas");
			    $.post('reg.jsp', data , function(returnData){
			               
			           alert("555");
			                $('.searchbar').fadeOut('slow');
			                $('#main').html( returnData);
			                return false;
			             
			    });
				
				
				    return false; 
				});
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

   $("#SlideShow").slideshow(
   {
      interval: 3000,
      type: 'sequence',
      effect: 'fade',
      direction: '',
      effectlength: 1500
   });

   $("#c").hide();
   $("#a").hide();
   $("#b").hide();
   $("#d").hide();

$('.pagecontent').hide();
$('#home').show();


/* Making Buttond working */
 $("#but_collegesearch").click(function() {
$(".pagecontent").slideUp("slow",function() {
 $("#collegesearch").slideDown("slow");
});
});

 	$('#news-container').vTicker({ 
 		speed: 500,
 		pause: 3000,
 		animation: 'fade',
 		mousePause: true,
 		showItems: 4
 	});
 

 	$(".button").click(function(){
 		var id = this.id;
 		//alert("hey");
 		id=this.id.split("_");
 		 $(".pagecontent").slideUp("slow",function() {
			   $("#"+id[1]).slideDown("fast");
			 });
 	});
/*Applying color to the selected button*/
$("#but_home").css("background-color","maroon");

$(".button").click(function(){  
		$(".button").css("background-color","black");
		$(this).css("background-color","maroon");
		});

/*Edit Profile fields*/
$(".detail").click(function(){
	id=this.id.split("_");
	$(".editdetail").hide();
	$(".detail").show();
	$(this).fadeOut("fast",function() {
		$("#"+id[0]+"_editdetail").fadeIn("fast");
	});
});
/* Edit College Details*/

/*Effects for search form*/


	
	/* Adding Elements */
	$("#add_mobile").click(function(){
		alert("hello");
		$("#mobile").append("<input type=\"text\"/>");
	});
	
/*Drop Down search*/
$("#but_search").mouseover(function() {
	var pos=$("#but_search").position();
	$("#searchmenuitems").css("left",(pos.left - 7));
 $("#searchmenuitems").slideDown("fast");
 });
 
 $("#searchmenuitems").mouseover(function() {
 $("#searchmenuitems").slideDown("fast");
 });
 
 $("#main,#SlideShow,.buttons,#but_aboutg,#logotop").mouseover(function() {
   $("#searchmenuitems").slideUp("fast");
  });
  
   
  /*Drop Down Profile*/
  $("#but_profile").mouseover(function() {
	  var pos=$("#but_profile").position();
	  $("#profilemenuitems").css("left",(pos.left - 7));
 $("#profilemenuitems").slideDown("fast");
 });
 
 $("#profilemenuitems").mouseover(function() {
 $("#profileenuitems").slideDown("fast");
 });
 
 $("#main").mouseover(function() {
   $("#profilemenuitems").slideUp("fast");
  });
  
  $("#SlideShow").mouseover(function() {
   $("#profilemenuitems").slideUp("fast");
  });
  
   $("#but_contact").mouseover(function() {
   $("#profiemenuitems").slideUp("fast");
  });
  $("#but_home").mouseover(function() {
   $("#profilemenuitems").slideUp("fast");
  });
  $("#but_allcourses").mouseover(function() {
   $("#profilemenuitems").slideUp("fast");
  });
  $("#logotop").mouseover(function() {
   $("#profilemenuitems").slideUp("fast");
  });
  $("#but_cr").mouseover(function() {
   $("#profilemenuitems").slideUp("fast");
  });
  $("#but_aboutucost").mouseover(function() {
   $("#profilemenuitems").slideUp("fast");
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
});