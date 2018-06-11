<?php
session_start();
?>
<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<title>SIGN IN</title>
	<style type="text/css">
	body{
			background-color: #d8f9ff;
	}
</style>
</head>
<body>
<div class="container">
	<div style='position:relative; margin-top:50px;'>
	    <img src='UP_Police_Logo (3).png' style='position:absolute; top:0; left:0;' width='' height='' alt='' />
	</div>
	<div col="row" style="margin-top: 15%;">
	<div class="col-md-4 col-md-offset-4" align="center" style="padding: 3px;background-color: rgba(255,255,255,0.5) ;box-shadow: 10px 10px 5px #888888;">
	<h1 id="hh1">E-Police</h1>
	<div id = "form-group">
		<h2 id="hh2">SIGN IN</h2>
		<form action="Dest_login.php" method="post" >
		<div class="input-group ">
		<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
		<input type = "text" name="userName" placeholder="Username" class="form-control " required="required" />
		</div><br/>
		<div class="input-group">
		<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
		<input type="password" name="password" placeholder="Password" class="form-control " required="required" />
		</div><br/>
		<div style="color:red ;">
		<?php
			if(isset($_COOKIE['ERROR1'])){
	      echo $_COOKIE['ERROR1'];
	    }
		?>
	</div>
		<input type="submit" class="btn btn-success" value="Sign in">
		<br/><br/><br/><br/><br/>
	</form>
	</div>
	</div>
	</div>
</div>
</div>
</div>
</body>
</body>
</html>
