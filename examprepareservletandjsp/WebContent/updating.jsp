<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/project";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
String id = request.getParameter("id");

String name=request.getParameter("name");
String uname=request.getParameter("role");
String status=request.getParameter("status");
System.out.println(status);
System.out.println(name);
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="insert into status values(?,?)";
ps = con.prepareStatement(sql);
ps.setInt(1,personID);
ps.setString(2,status);


int i = ps.executeUpdate();
if(i > 0)
{%>
<jsp:include page="header.jsp" flush="true"/>
<%
out.print("Record Updated Successfully");
}
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