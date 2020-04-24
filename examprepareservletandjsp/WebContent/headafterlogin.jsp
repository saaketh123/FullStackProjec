<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>
<body>
<form align="center" action="headrequestdeciding.jsp" method="post">
<input type="submit" class="btn btn-success"value="click_here_to_check_requests">
</form>
<br>
<form  align="center" action="maintainattendence.jsp" method="post">
<input type="submit" class="btn btn-primary" value="maintain attendence">
</form>
<br>
<form align="center" action="complaints.jsp" method="post">
<input type="submit"  class="btn btn-info"value="check complaints">
</form>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<style>
.div {
   position: absolute;
   left: 350px;
   right: 0;
   margin-left:500px;
   margin-right: 0;
}
form
{
margin-top:20px;
margin-bottom:20px;
padding:20px;
}
form>.btn
{
height:20vh;
width:50%;
font-size:36px;
}


</style>
</body>

</html>