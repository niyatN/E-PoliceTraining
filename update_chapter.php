<?php
	$host = "localhost";
	$dbuser = "root";
	$pass = "";
	$dbname = "E_Police";
	if(!isset($_COOKIE['LoginFlag'])){
    header('Location:Login.php');
	}
	else{
	session_start();

	$conn = mysqli_connect($host,$dbuser,$pass,$dbname);
	if($_GET['do']=='remove'){
		$chap_id = $_GET['chap_id'];
		$sql="DELETE FROM chapter WHERE id=".$chap_id;
		$res = mysqli_query($conn,$sql);
		if(!$res){
		echo mysqli_error($conn);
		}
		else{
			
			header('Location:Dashboard_Chapter.php');
		}
	}
	elseif ($_GET['do']=='add') {
		# code...
		$name = $_POST['name'];
		$cate_id = $_GET['cate_id'];
		$sql="INSERT INTO chapter( name, categoryId) VALUES ('$name','$cate_id')";
		$res = mysqli_query($conn,$sql);
		
		if(!$res){
		echo mysqli_error($conn);
		}
		else{
			header('Location:Dashboard_Chapter.php');
		}
	}
}
mysqli_close($conn);
?>
