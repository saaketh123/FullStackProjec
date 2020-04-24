<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/project";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
String id = request.getParameter("id");
String day1=request.getParameter("day1");



if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="insert into attendence(id,day1) values(?,?)";
ps = con.prepareStatement(sql);
ps.setInt(1,personID);
ps.setString(2, day1);



int i = ps.executeUpdate();
if(i > 0)
{%>
<p>UPDATED SUCCESSFULLY</p>
<a href="maintainattendence.jsp">UPDATE NEXT TEAM MEMBER</a>

<%}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>