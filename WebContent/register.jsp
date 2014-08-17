<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="stylesheet" type="text/css" href="./css/uktourism.css">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<script type="text/javascript" src="./js/jquery-1.8.0.js"></script>
		<script type="text/javascript" src="./js/jquery.js"></script>
	
	<title>
		Uttrakhand Tourism
	</title>
</head>
<body>
<div id="registerbox">
 <div id="registercontent">
 <form name="registerform" method="POST" action="submit.jsp">
 <table>
 <tbody>
 <tr><td>First Name<span style="color:red">*</span>:</td> <td><input type="text" name="fname"><p/></td></tr>
  <tr><td>Middle Name:</td> <td><input type="text" name="mname"><p/></td></tr>
   <tr><td>Last Name<span style="color:red">*</span>:</td> <td><input type="text" name="lname"><p/></td></tr>
    <tr><td>Email<span style="color:red">*</span>:</td> <td><input type="text" name="email"><p/></td></tr>
     <tr><td>Reenter Email<span style="color:red">*</span>:</td> <td><input type="text" name="remai"><p/></td></tr>
      <tr><td>Occupation<span style="color:red">*</span>:</td> <td><input type="text" name="occ"><p/></td></tr>
        <tr><td>Organisation<span style="color:red">*</span>:</td> <td><input type="text" name="org"><p/></td></tr>
       <tr><td>Age<span style="color:red">*</span>:</td> <td>
<Select name="age">
<option value=""  Selected="Selected">Select</option>
 <% 
 int i;
for(i=18;i<=70;i++)
{
 
  out.println( "<option value=$i>"+i+"</option>");
}
%>
</Select></td></tr>
           <tr><td>Current Address<span style="color:red">*</span>:</td> <td><textarea name="cur_address" rows="5" cols="70" ></textarea><p/></td></tr>
            <tr><td>Permanent Address<span style="color:red">*</span>:</td> <td><textarea name="per_address" rows="5" cols="70" ></textarea><p/></td></tr>
             <tr><td>Marital Status<span style="color:red">*</span>:</td> 
             <td><Select name="mr">
              <option value=""  Selected="Selected">Select</option>
              <option value="Married">Married</option>
              <option value="Unmarried">Unmarried</option>
              </Select></td></tr>
               <tr><td>Mobile Number<span style="color:red">*</span>:</td> <td><input type="text" name="mno"><p/></td></tr>
                <tr><td><input type="checkbox" name="declaration"/></td><td>I accept all the terms and agreements of this website<br></td></tr> 
                   <tr><td><input type="submit" name="submit" value="Register"><p/></td></tr>
 <small><u><a> All fields marked <span style="color:red">*</span>are required</a><br></u></small>
</tbody>
</table>
 </form>
 </div>
</div>
</body>
</html>