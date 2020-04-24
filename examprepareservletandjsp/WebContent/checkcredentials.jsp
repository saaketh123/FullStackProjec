<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/project";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
int  a=Integer.parseInt(request.getParameter("id"));
String b=request.getParameter("password");
System.out.println(a);
System.out.println(b);

try {
	
	Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root"); 
    PreparedStatement ps1=con.prepareStatement("select * from headlogin where id=?");
    ps1.setInt(1,a);
    ResultSet rs=ps1.executeQuery(); 
    rs.next();
    String pass=rs.getString("password");
  
    Cookie firstName = new Cookie("first_name",rs.getString("name"));
    firstName.setMaxAge(60*60*24); 
  
    
    // Add both the cookies in the response header.
    response.addCookie( firstName );
    
    rs.beforeFirst();
    if(b.equals(pass)) 
    {
    response.sendRedirect("headafterlogin.jsp");	
    %> 
    
     <%
     }
else
{
	%>
	<p>ENTER CORRECT CREDENTIALS</p>
	<a href="headloginform.jsp">tryagain</a>
	
 <%	
}
}
catch(Exception e)
{
	System.out.println(e);
}


%>