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

function schsubmit(frm) {   
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

$('#aboutus,#newsupdate,#sendmail,#addclg,#adduser,#asearch,#aboutgeu,#aboutucost,#profile,#changepass,#contactus,#allcourses,#editdetails,#editprofile,#schoolsearch,#register,#collegesearch,#pastdetails').hide();


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

 $("#but_collegesearch").click(function() {
  $("#maincontent,#aboutus,#sendmail,#addclg,#adduser,#asearch,#register,#aboutgeu,#profile,#changepass,#aboutucost,#editprofile,#contactus,#pastdetails,#schoolsearch,#allcourses").slideUp("slow",function() {
   $("#collegesearch").slideDown("slow");
 });
});

 $("#but_cr").click(function() {
	  $("#maincontent,#aboutus,#aboutgeu,#sendmail,#addclg,#adduser,#asearch,#register,#profile,#changepass,#aboutucost,#editprofile,#contactus,#schoolsearch,#collegesearch,#allcourses").slideUp("slow",function() {
	   $("#pastdetails").slideDown("slow");
	 });
	});

 $("#but_schoolsearch").click(function() {
	  $("#maincontent,#aboutus,#aboutgeu,#register,#sendmail,#addclg,#adduser,#asearch,#profile,#changepass,#aboutucost,#contactus,#collegesearch,#pastdetails,#allcourses").slideUp("slow",function() {
	   $("#schoolsearch").slideDown("slow");
	 });
	});

 $("#but_aboutus").click(function() {
	  $("#maincontent,#schoolsearch,#collegesearch,#profile,#sendmail,#addclg,#adduser,#asearch,#changepass,#register,#editprofile,#aboutgeu,#aboutucost,#contactus,#pastdetails,#allcourses").slideUp("slow",function() {
	   $("#aboutus").slideDown("slow");
	 });
	});
 
 $("#but_contactus").click(function() {
	  $("#maincontent,#schoolsearch,#collegesearch,#profile,#changepass,#sendmail,#addclg,#adduser,#asearch,#aboutgeu,#editprofile,#aboutucost,#aboutus,#pastdetails,#allcourses").slideUp("slow",function() {
	   $("#contactus").slideDown("slow");
	 });
	});
 $("#but_aboutgeu").click(function() {
	  $("#maincontent,#schoolsearch,#collegesearch,#profile,#changepass,#register,#sendmail,#addclg,#adduser,#asearch,#contactus,#editprofile,#aboutucost,#aboutus,#pastdetails,#allcourses").slideUp("slow",function() {
	   $("#aboutgeu").slideDown("slow");
	 });
	});

$("#but_home").click(function() {
  $("#schoolsearch,#collegesearch,#aboutgeu,#aboutucost,#profile,#changepass,#sendmail,#addclg,#adduser,#asearch,#register,#aboutus,#contactus,#editprofile,#pastdetails,#allcourses").slideUp("slow",function() {
   $("#maincontent").slideDown("slow");
 });
});

$("#but_aboutucost").click(function() {
	  $("#maincontent,#searchbar,#aboutgeu,#aboutus,#register,#profile,#changepass,#sendmail,#addclg,#adduser,#asearch,#contactus,#schoolsearch,#editprofile,#collegesearch,#pastdetails,#allcourses").slideUp("slow",function() {
	   $("#aboutucost").slideDown("slow");
	 });
	});
	
	
$("#but_allcourses").click(function() {
	  $("#maincontent,#searchbar,#aboutgeu,#aboutus,#contactus,#profile,#sendmail,#addclg,#adduser,#asearch,#changepass,#register,#schoolsearch,#collegesearch,#editprofile,#pastdetails,#abutucost").slideUp("slow",function() {
	   $("#allcourses").slideDown("slow");
	 });
	});
$("#but_signup").click(function() {
	//  $("#maincontent,#searchbar,#aboutgeu,#aboutus,#contactus,#profile,#changepass,#register,#schoolsearch,#collegesearch,#editprofile,#pastdetails,#abutucost").slideUp("slow",function() {
	alert("asas");	
	$("#maincontent").slideUp("slow",function() {
			 	  
		  $("#register").slideDown("slow");
	 });
	});
$("#but_editprofile").click(function() {
	  $("#maincontent,#searchbar,#aboutgeu,#aboutus,#contactus,#profile,#sendmail,#addclg,#adduser,#asearch,#changepass,#register,#allcourses,#newsupdate,#schoolsearch,#collegesearch,#pastdetails,#aboutucost").slideUp("slow",function() {
	   $("#editprofile").slideDown("slow");
	 });
	});
$("#but_changepassword").click(function() {
	  $("#maincontent,#searchbar,#aboutgeu,#aboutus,#profile,#contactus,#register,#sendmail,#addclg,#adduser,#asearch,#allcourses,#schoolsearch,#newsupdate,#collegesearch,#editprofile,#viewprofile,#pastdetails,#aboutucost").slideUp("slow",function() {
	   $("#changepass").slideDown("slow");
	 });
	});
	$("#but_viewprofile").click(function() {
	  $("#maincontent,#searchbar,#aboutgeu,#aboutus,#changepass,#contactus,#editprofile,#sendmail,#addclg,#adduser,#asearch,#register,#allcourses,#newsupdate,#schoolsearch,#collegesearch,#editprofile,#pastdetails,#aboutucost").slideUp("slow",function() {
	   $("#profile").slideDown("slow");
	 });
	});
	
	$("#but_chome").click(function() {
		 $("#aboutgeu,#aboutucost,#profile,#changepass,#aboutus,#contactus,#editprofile,#sendmail,#addclg,#adduser,#asearch,#editdetails,#newsupdate").slideUp("slow",function() {
			   $("#maincontent").slideDown("slow");
			 });
			});
	$("#but_caboutucost").click(function() {
		  $("#aboutgeu,#maincontent,#profile,#changepass,#aboutus,#contactus,#editprofile,#sendmail,#addclg,#adduser,#asearch,#newsupdate,#editdetails").slideUp("slow",function() {
		   $("#aboutucost").slideDown("slow");
		 });
		});
	$("#but_ccontactus").click(function() {
		  $("#aboutgeu,#maincontent,#profile,#changepass,#aboutucost,#aboutus,#sendmail,#addclg,#adduser,#asearch,#editprofile,#editdetails,#newsupdate").slideUp("slow",function() {
		   $("#contactus").slideDown("slow");
		 });
		});
	$("#but_caboutgeu").click(function() {
		  $("#aboutus,#maincontent,#profile,#changepass,#aboutucost,#contactus,#sendmail,#addclg,#adduser,#asearch,#editdetails,#editprofile,#newsupdate").slideUp("slow",function() {
		   $("#aboutgeu").slideDown("slow");
		 });
		});
	$("#but_ceditdetails").click(function() {
		  $("#aboutus,#maincontent,#profile,#changepass,#aboutucost,#contactus,#sendmail,#addclg,#adduser,#asearch,#editprofile,#aboutgeu,#newsupdate").slideUp("slow",function() {
		   $("#editdetails").slideDown("slow");
		 });
		});
	$("#but_cupdatenews").click(function() {
		  $("#aboutus,#maincontent,#profile,#changepass,#editdetails,#sendmail,#addclg,#adduser,#asearch,#aboutucost,#contactus,#editprofile").slideUp("slow",function() {
		   $("#newsupdate").slideDown("slow");
		 });
		});
	$("#but_viewprofile").click(function() {
		  $("#aboutus,#maincontent,#profile,#changepass,#aboutucost,#contactus,#sendmail,#addclg,#adduser,#asearch,#editprofile,#aboutgeu,#newsupdate").slideUp("slow",function() {
		   $("#profile").slideDown("slow");
		 });
		});
	$("#but_changepassword").click(function() {
		  $("#aboutus,#maincontent,#profile,#changepass,#editdetails,#aboutucost,#sendmail,#addclg,#adduser,#asearch,#contactus,#editprofile,#newsupdate").slideUp("slow",function() {
		   $("#changepass").slideDown("slow");
		 });
		});
	
	$("#but_sendmail").click(function() {
		  $("#aboutus,#maincontent,#asearch,#profile,#changepass,#editdetails,#aboutucost,#changepass,#contactus,#editprofile,#newsupdate").slideUp("slow",function() {
		   $("#sendmail").slideDown("slow");
		 });
		});
	$("#but_asearch").click(function() {
		  $("#aboutus,#maincontent,#profile,#changepass,#sendmail,#addclg,#adduser,#editdetails,#aboutucost,#changepass,#contactus,#editprofile,#newsupdate").slideUp("slow",function() {
		   $("#asearch").slideDown("slow");
		 });
		});
	$("#but_addclg").click(function() {
		  $("#aboutus,#maincontent,#profile,#changepass,#sendmail,#asearch,#adduser,#editdetails,#aboutucost,#changepass,#contactus,#editprofile,#newsupdate").slideUp("slow",function() {
		   $("#addclg").slideDown("slow");
		 });
		});
	$("#but_adduser").click(function() {
		  $("#aboutus,#maincontent,#profile,#changepass,#sendmail,#asearch,#addclg,#editdetails,#aboutucost,#changepass,#contactus,#editprofile,#newsupdate").slideUp("slow",function() {
		   $("#adduser").slideDown("slow");
		 });
		});
	
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
 
 $("#main,#SlideShow,#but_home,#but_cr,#but_aboutus,#but_aboutg,#logotop,#but_allcourses").mouseover(function() {
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
});