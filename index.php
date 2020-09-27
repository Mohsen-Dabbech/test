<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<link href="css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery-3.3.1.min.js"></script>

	<link rel="stylesheet" type="text/css" href="css/stylelogin.css">
  <script>
$(document).ready(function(){

  $("#submit").click(function(){
    var lg=$('#lg').val();
    var mp=$('#mp').val();
    $.post("model/log_con.php",
    {
      lg: lg,
      mp: mp
    },
    function(data,status){alert(data);
      if (data=="success") {
        $(location).attr("href","vue/acceuil.php");

      }
      else {
          $("#reponse").html("Probleme de connexion");
          $("#reponse").fadeIn("slow");
          $("#lg").val('');
          $("#mp").val('');
      }

    });
  });

      $("#lg").keypress(function(){
      $("#reponse").text('');
      });

});
</script>



</head>
<body>
<div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->

    <!-- Icon -->
    <div class="fadeIn first">
      <img src="http://danielzawadzki.com/codepen/01/icon.svg" id="icon" alt="User Icon" />
      <div id="reponse">
        

      </div>
    </div>

    <!-- Login Form -->
    <form>
      <input type="text" id="lg" class="fadeIn second" name="login" placeholder="login">
      <input type="password" id="mp" class="fadeIn third" name="login" placeholder="password">
      <input type="button" id="submit" class="fadeIn fourth" value="Log In">
    </form>

  

  </div>
</div>
</body>
</html>