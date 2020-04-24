 <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "project";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select  id,name from teammemberrequest where id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>

<html>
<jsp:include page="header.jsp" flush="true"/>
<body>
<h1>change attendence</h1>


<form   align="center" action="updateday1.jsp" method="post" >
  <div class="form-group" >
    <label for="id">ID</label>
    <input type="text" class="form-control" value="<%=resultSet.getString("id") %>"  name="id">
  </div>
  <div class="form-group">
    <label for="roll">name</label>
    <input type="text" class="form-control"    value="<%=resultSet.getString("name") %>" name="password">
  </div>
 
   <div class="form-group">
    <label for="roll">STATUS</label>
    <input type="text" class="form-control"  placeholder="enter p if present,a if absent" name="day1">
  </div>
  
  <input type="submit" class="btn btn-primary"></button>
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
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
</body>
</html>