<%@page import="com.mysql.jdbc.interceptors.SessionAssociationInterceptor.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>testjsp</title>
</head>
<body>
<form>
 <td><textarea name="per_address" rows="5" cols="70" ></textarea><p/></td>
</form>>
<% 
    String fn=request.getParameter("fname");
	String mn=request.getParameter("mname");
	String ln=request.getParameter("lname");
	String email=request.getParameter("email");
	String remail=request.getParameter("remail");
	String occ=request.getParameter("occ");
	String org=request.getParameter("org");
	String age=request.getParameter("age");
	String cadd=request.getParameter("cur_address");
	String padd=request.getParameter("per_address");
	String mr=request.getParameter("mr");
	String dcl=request.getParameter("declaration");
	String mno=request.getParameter("mno");
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/check", "root", "9431092909");
		Statement st=con.createStatement();
		
		 if(email != remail){
			 out.println("Your email confremation doesn't matches..please enter again,you are being redirected");
				response.sendRedirect("register.jsp");
		   
		 }


		/*
		if(fn.equals("") || ln.equals("") || email.equals("") || occ.equals("") || org.equals("") || age.equals("") || cadd.equals("") || padd.equals("") || mr.equals("") || mno.equals("") || dcl.equals("") ) {
			
			    out.println("Any of the Required fields are empty...Please enter again,you are being redirected");
				response.sendRedirect("register.jsp");  
		 }*/

		ResultSet rs=st.executeQuery("insert into table_name values('fn','mn','ln','email','occ','org',age,'cur_address','per_address','mr',mno)");
		con.close();
		}
		catch(Exception ex)
		{
		out.println(ex);
		}
	
%>
</body>
</html>