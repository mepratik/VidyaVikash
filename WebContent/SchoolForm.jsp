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
</head>
<body>
<body>
<div id="schoolsearch" class="form">
<form name="school_search" method="POST" action="">
<h2 class="componentheading">
&nbsp;&nbsp;School Search
</h2>
<table  style="width: 100%; align: center; " border="0" cellspacing="10" cellpadding="0" style="background:#000">
<tbody>
<tr>
<td style="width:50%">School Name:</td><td><input type="text" name="s_name" placeholder="Schooll Name"/></td>
<td>Affiliation:</td><td><select name="affiliation" >
<option value=""  Selected="Selected">Select</option>
<option value="cbsce">C.B.S.C.E.</option>
<option value="icsce">I.C.S.C.E.</option>
<option value="sb">State Board</option>
</select>
</td>
</tr>
<tr>
<td style="width:50%">Medium:</td><td ><select name="affiliation" >
<option value=""  Selected="Selected">Select</option>
<option value="hindi">Hindi.</option>
<option value="english">English</option>
<option value="both">Boath</option>
</select>
</td>
<td>Envronment:</td><td><select name="affiliation" >
<option value=""  Selected="Selected">Select</option>
<option value="boys">Boys</option>
<option value="girls">Girls</option>
<option value="coed">Coed</option>
</select>
</tr>
<tr>
<td>Type:  </td>
<td ><input type="radio" class="radiobutton" name="scl_gop" value="prv">Private</td>
<td style="width:40%"><input type="radio" class="radiobutton" name="scl_gop" value="gov" CHECKED>Government</td>
<td><input type="radio" class="radiobutton" name="scl_gop" value="any">Any</td>
</tr>
<tr>
<td>Sort By:  </td>
<td><input type="radio" class="radiobutton" name="scl_sort" value="fee">Fees</td>
<td><input type="radio" class="radiobutton" name="scl_sort" value="yob">Year Of Estisblishment</td>
<td><input type="submit" id="schoolesearch" name="school_search" class="button" value="Search"/></td>
</tr>
</tbody>
</table>
</form> 
<p>&nbsp;</p>
</div>
<!-- Register Form -->
<div id="register" class="form">
<form name="register" method="POST" action="">
<h2 class="componentheading">
&nbsp;&nbsp;Registration
</h2>
<table  style="width: 100%; align: center; " border="0" cellspacing="10" cellpadding="0" style="background:#000">
<tbody>
<tr>
<td style="width:50%">Usre Name:</td><td><input type="text" name="u_name" placeholder="User Name"/></td>
<td>Name:</td><td><input type="text" name="name" placeholder="Enter Name"/></td>
</tr>
<tr>
<td style="width:50%">Email:</td><td><input type="text" name="email" placeholder="Enter Email"/></td >

<td>Moblie:</td><td><input type="text" name="m_no" placeholder="Mobile Number"/></td>
</tr>
<tr>
<td>Password:  </td>
<td ><input type="text"  name="pass" placeholder="Enter Password"></td>
<td>Reenter Password:  </td>
<td ><input type="text"  name="c_pass" placeholder="Re_Enter Password"></td>
</tr>
<tr>
<td>Gender:</td>
<td><select name="gender" ><option value=""  Selected="Selected">Select</option>
<option value="male">Male</option>
<option value="female">Female</option>
<option value="other">Other</option>
</select></td>
<td></td>
<td><input type="submit" id="register" name="register" class="button" value="Save"/></td>
</tr>
</tbody>
</table>
</form> 
<p>&nbsp;</p>
<% 
@RequestMapping(method = RequestMethod.POST)
public String form(
    HttpServletRequest req,
@RequestParam("recaptcha_challenge_field") String challenge,
@RequestParam("recaptcha_response_field") String response,
@ModelAttribute(MA_USER) User user,
BindingResult result,Model model) {
    verifyBinding(result);
   validator.validate(user, result);
    ReCaptchaResponse reCaptchaResponse =
        reCaptcha.checkAnswer(req.getRemoteAddr(), challenge, response);
    if (!reCaptchaResponse.isValid()) {
        result.rejectValue("captcha", "errors.badCaptcha");              
    }
    String html = reCaptcha.createRecaptchaHtml(null, null);             
model.addAttribute(MA_RECAPTCHA_HTML, html);
    if (result.hasErrors()) {
        result.reject("form.problems");
        return "register/form";
    }
   return "redirect:confirm";
}%>
</div>
</body>
</html>
