<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/project";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
String id = request.getParameter("id");


if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="select status from status where id=?";
ps = con.prepareStatement(sql);
ps.setInt(1,personID);
ResultSet rs=ps.executeQuery(); 
rs.first();
if(rs.getInt("status")==1)
{%><jsp:include page="header.jsp" flush="true"/>


<p>YOU ARE NOW ONE EOF THE TEAMMEMBER</p>


<%}
else
{%>
<p>YOU ARE NOT SELECTED BETTER LCUK NEXT TIME</p>
<%
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>