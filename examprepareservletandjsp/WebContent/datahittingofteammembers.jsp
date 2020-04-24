<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/project";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
int  a=Integer.parseInt(request.getParameter("value1"));
String b=request.getParameter("value2");
String c =request.getParameter("comment");


try {
	
	Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root"); 
    PreparedStatement ps1=con.prepareStatement(" insert into teammemberrequest values(?,?,?)");
    ps1.setString(2, b);
    ps1.setInt(1,a);
    ps1.setString(3,c);
    
    int i=ps1.executeUpdate();
    if(i==1) 
    {%> <p>REQUEST SUCCESSFULLY SENT</p>
     <a href="teammemberafterlogin.html">CLICKHERETOGOTOHOMEPAGE</a>  <%}
}
catch(Exception e)
{
	System.out.println(e);
}


%>