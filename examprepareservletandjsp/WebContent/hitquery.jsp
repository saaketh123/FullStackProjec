<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/project";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
int  a=Integer.parseInt(request.getParameter("id"));
String b=request.getParameter("comment");
System.out.println(b);

try {
	
	Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root"); 
    PreparedStatement ps1=con.prepareStatement("insert into helpline values(?,?)");
    ps1.setInt(1,a);
    ps1.setString(2,b);
   
    int i=ps1.executeUpdate();
    if(i==1) 
    {%> <p>REQUEST SUCCESSFULLY SENT</p>
     <a href="index.jsp">CLICKHERETOGOTOHOMEPAGE</a>  <%}
     }

 
catch(Exception e)
{
	System.out.println(e);
}


%>