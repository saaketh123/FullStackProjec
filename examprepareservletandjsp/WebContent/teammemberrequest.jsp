<jsp:include page="header.jsp" flush="true"/>

<form   align="center" action="datahittingofteammembers.jsp" method="post" >
  <div class="form-group" >
    <label for="id">Enter  Your ID</label>
    <input type="text" class="form-control"  placeholder="Enter Id" name="value1">
  </div>
  <div class="form-group">
    <label for="roll">Enter  Your name</label>
    <input type="text" class="form-control"  placeholder="Enter name" name="value2">
  </div>
  <div class="form-group">
    <label for="roll">Enter  Your role</label>
    <input type="text" class="form-control"  placeholder="Enter role" name="comment">
  </div>
  <input type="submit" class="btn btn-primary"></button>
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
</body>
</html>