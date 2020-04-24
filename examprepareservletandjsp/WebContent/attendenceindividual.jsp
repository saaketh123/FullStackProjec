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
<body>
<h1>change attendence</h1>
<form method="post" action="updateattendence.jsp">
<br>
<input type="text" name="id" value="<%=resultSet.getString("id") %>">
<br>
<input type="text" name="id" value="<%=resultSet.getString("name") %>">
<br>
<P>ENTER A IF ABSENT</P>
<P>OR</P>
<P>ENTER P IF PRESENT</P>
<p>DAY1</p>
<input type="text" name="day1">
<br>
<br>
<p>DAY2</p>
<input type="text" name="day2">
<br>
<input type="submit" value="submit">
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>