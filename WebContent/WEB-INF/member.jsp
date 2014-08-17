<html>
<head>
<title>Welcome</title>
</head>

<body>
Welcome.... <%
 
        out.println(" "+session.getAttribute("username")+" ");
        %>
<u><a href="logout.jsp">Logout</a></u>
  
</body>
</html>