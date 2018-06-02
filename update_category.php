<?php
	$host = "localhost";
	$dbuser = "root";
	$pass = "";
	$dbname = "E_Police";
	$conn = mysqli_connect($host,$dbuser,$pass,$dbname);
	//echo $_GET['id'];
	if($_GET['do']=='remove'){
		$id = $_GET['cate_id'];
		$sql="DELETE FROM category WHERE id=".$id;
		$res = mysqli_query($conn,$sql);
		if(!$res){
		echo mysqli_error($conn);
		}
		else{
			header('Location:Dashboard_Category.php');
		}
	}
	elseif ($_GET['do']=='add') {
		# code...
		$name = $_POST['name'];
		$url = $_POST['url'];
		$sql="INSERT INTO category( name, thumbnailurl) VALUES ('$name','$url')";
		$res = mysqli_query($conn,$sql);
		if(!$res){
		echo mysqli_error($conn);
		}
		else{
			header('Location:Dashboard_Category.php');
		}
	}
?>
