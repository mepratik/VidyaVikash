<%@page import="com.mysql.jdbc.interceptors.SessionAssociationInterceptor.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>testjsp</title>
</head>
<body>
<% 
   String name=request.getParameter("name");
  String password=request.getParameter("pass");
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/check", "root", "9431092909");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from admin where name='"+name+"' and password='"+password+"'");
		if(rs.next())
		{   
			out.println("Welcome " +  name  +"  you are successfully logged in"); 
			   
			  session.setAttribute("username",name);

			response.sendRedirect("Adminin.jsp");
			
		}
		else
		{
			out.println("Sorry guest,you have enterd wrong password");
		}
		con.close();
		}
		catch(Exception ex)
		{
		out.println(ex);
		}
	
%>

</body>
</html>