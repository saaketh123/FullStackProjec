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
String sql="select * from attendence where id=?";
ps = con.prepareStatement(sql);
ps.setInt(1,personID);
ResultSet rs=ps.executeQuery(); 
rs.first();
%>
<jsp:include page="header.jsp" flush="true"/>





<form   align="center" action="checkcredentials.jsp" method="post" >
  <div class="form-group" >
    <label for="id">Enter  Your ID</label>
    <input type="text" class="form-control"   value="<%=rs.getString("id") %>">
  </div>
  <div class="form-group">
    <label for="roll">day1</label>
    <input type="text" class="form-control" value="<%=rs.getString("day1") %>" name="password">
  </div>
  <div class="form-group">
    <label for="roll">day2</label>
    <input type="text" class="form-control" value="<%=rs.getString("day2") %>" name="password">
  </div>
  
</form>
<style>
form
{
width:30%;
margin-left:auto;
margin-right:auto;
margin-top:5%;
border:1px solid black;
border-radius:25px;
padding:20px;
font-size:20px;
}
</stye>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<%


}
catch(Exception sql)
{
request.setAttribute("error", sql);

}
}

%>