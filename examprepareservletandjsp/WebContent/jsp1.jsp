<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<p>hicfgjhkjl<p>
<%
String a =request.getParameter("value1");
int  b=Integer.parseInt(request.getParameter("value2"));
System.out.println(a);
System.out.println(b);
%>
<%=a%>
<br>
<%=b%>
<% 
try {
	Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/world", "root", "root"); 
    /*
    PreparedStatement ps1=con.prepareStatement(" insert into chalmohanranga values(?,?)");
    ps1.setString(1, a);
    ps1.setInt(2,b);
    
    ps1.executeUpdate();
    
    ps1.close();
    con.close();
    */
    Statement stmt=con.createStatement();
    ResultSet rs=stmt.executeQuery("select * from chalmohanranga");
    while(rs.next())
    {%>
    	<%=rs.getString("name")%>
    	<br>
    	<%=rs.getString("id")%>
    <%}
} catch (ClassNotFoundException e) {
// TODO Auto-generated catch block
e.printStackTrace();
} catch (SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
%>
<%%>
</body>
</html>