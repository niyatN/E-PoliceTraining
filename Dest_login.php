<?php
session_start();
 ?>
<html>
<head>
	<link href="https://fonts.googleapis.com/css?family=Yellowtail" rel="stylesheet">
	<title>
		LOGIN
	</title>
	<link rel="stylesheet" type="text/css" href="login_dest.css">

</head>
<body>

	<?php
		$host="localhost";
		$dbuser="root";
		$pass="";
		$dbname="E_Police";
		$conn=mysqli_connect($host,$dbuser,$pass,$dbname);
		if(mysqli_connect_errno())
		{
			die("c lost");
		}
		else
		{
			$un=$_POST['userName'];
			$pass=$_POST['password'];
		if(empty($pass)||empty($un))
		{
			setcookie("ERROR1","Oops! can't leave any field blank", time() + 300, "/");
			header('Location:Login.php');
		}
		else
		{
			$sql1="select * from admin_user where UserName='$un'";
			$res1=mysqli_query($conn,$sql1);

			if (mysqli_num_rows($res1)==0)
			{
				setcookie("ERROR1","Invalid username Or Password", time() + 300, "/");
				header('Location:Login.php');

			}
			else
			{
				mysqli_free_result($res1);
				$sql2="select * from  admin_user where UserName='$un' and Password='$pass'";
				$res2=mysqli_query($conn,$sql2);
				if(mysqli_num_rows($res2)==1)
				{
					setcookie("LoginFlag",1,time()+600,"/");
					header('Location:Dashboard_Category.php');


				}
				else
				{
					setcookie("ERROR1","Invalid username Or Password", time() + 300, "/");
					header('Location:Login.php');

				}
			}
		}
	}
	mysqli_close($conn);
	?>

</body>
</html>
